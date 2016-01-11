Feature: Front page

  @wip
  Scenario: Front page is served
    When I visit "/"
    Then I should get a 200 status code

  @wip
  Scenario: Not logged in
      When I visit "/dashboard"
      Then I should get a 200 status code
      And be somewhere on "https://github.com"

  @wip
  Scenario: Log in
      When I visit "/dashboard"
      And enter username "georgecodes"
      And enter password from "GEORGECODES_PASSWORD"
      And click "Sign in"
      Then I should get a 200 status code
      And be somewhere on "http://bdebe90.ngrok.com/"