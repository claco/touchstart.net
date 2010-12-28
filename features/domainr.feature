Feature: Return DomainR Results
  In order to choose a new domain name
  As a project creator
  I want to be able to determine the availability of a domain name

  Background:
    Given I am on the home page

  Scenario: DomainR Search Results
    When I fill in "search" with "touchstart"
    And I press "Search"
    Then I should see a list of domains
