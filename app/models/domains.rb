require 'json'

class Domains
  include HTTParty

  base_uri 'http://domai.nr/api/json'
  format :json

  def search(name)
    response = self.class.get('/search', :query => {:q => name})

    if response && response.code == 200
      JSON.parse( response.body )['results']
    end
  end
end
