Feature:  Login functionality

  Scenario Outline: Invalid username or password should return the correct error message

    Given I land on the homepage
    And I press the sign
    When I Type "<Username>"
    And  I Input "<Password>"
    When I click the login
    Then I should get the correct "<error>"

    Examples:

    |  Username                   |  Password         |  error                      |
    |  lanre_april@gmail.com      |  test             |  Invalid password.          |
    |  lanre_@gmail.com           |  testing          |  Authentication failed.     |
    |                             |                   |  An email address required. |

