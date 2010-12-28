class HomeController < ApplicationController
  def index
    @domains = []
    if !params[:search].blank?
      @domains = Domains.new.search( params[:search] )
    end
  end

  def search
  end
end
