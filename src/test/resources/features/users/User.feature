Feature: Verify all routes of user are working as expected

  @Regression  @USER-001 @wip
  Scenario: Verify user login creates a token and valid user is retrieved
    Given A existing user is able to access the API
    When He login using his credentials
    Then User login is successful
    And existing user details are displayed correctly


  @Regression  @USER-002 @wip
  Scenario: Verify user login creates an error with invalid login
    Given A dummy user is able to access the API
    When He login using invalid credentials
    Then User login is not successful

  @Regression  @USER-003 @wip
  Scenario: Verify existing user cant be registered with existing login details
    Given A existing user is able to access the API
    When existing user attempts to register
    Then User registration is not successful

  @Regression  @USER-004 @wip
  Scenario: Verify a user with valid details is able to register successfully
    Given A valid user is able to access the API
    When valid user attempts to register
    Then User registration is successful
