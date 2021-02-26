Feature: Verify all routes of user are working as expected

  @Regression @Automation @USER-001
  Scenario: Verify user login creates a token and valid user is retrieved
    Given A registered user is able to access the API
    When He login using his credentials
    Then User login is successful
    And registered user details are displayed correctly

  @Regression  @Automation @USER-002
  Scenario: Verify user login creates an error with invalid login
    Given A anonymous user is able to access the API
    When He login using invalid credentials
    Then User login is not successful

  @Regression @Automation @USER-003
  Scenario: Verify existing user cant be registered with existing login details
    Given A registered user is able to access the API
    When registered user attempts to register
    Then User registration is not successful

  @Regression @Automation @USER-004
  Scenario: Verify a user with valid details is able to register successfully
    Given A valid user is able to access the API
    When valid user attempts to register
    Then User registration is successful
