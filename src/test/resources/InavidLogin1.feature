Feature: Login Functionality

  Scenario: login with invalid credentials should return the error message

    Given I am on the landing page
    When I select the sign in link
    And  I enter correct username
    And I enter incorrect password

    
    Then  I should get the correct error message