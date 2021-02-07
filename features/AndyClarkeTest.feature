Feature: Andy Clarke - Automation Test
  Scenario: Login
    Given I am on the application homepage
    When I fill in the username field
    When I fill in the password field
    When I click the login button
    Then I should see Notifications
    When I navigate to  Modules > Environment > Air Emissions
    Then I should be taken to the Air Emissions page
    When I Click on the New Record Button
    Then I should be taken to the Air Emissions details form
    And I Submit the Required Form Data
    Then I should see the new record in a list
    And I click the cog to delete
    Then my record is deleted successfully
