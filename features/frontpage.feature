Feature: Front page

  @wip
  Scenario: Front page is served
    When I visit "/"
    Then I should get a 200 status code
