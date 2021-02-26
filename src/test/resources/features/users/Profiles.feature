Feature: Verify user can follow and un-follow a profile

  @Regression @Automation @PROFILE-001
  Scenario: Verify user can follow an existing profile
    Given A registered user have a token to access API
    And He is not following user with username followMeToTest
    When He decides and acts accordingly to follow user, followMeToTest
    Then He is following user with username followMeToTest

  @Regression @Automation @PROFILE-002
  Scenario: Verify user can un-follow an existing profile
    Given A registered user have a token to access API
    And He is following user with username followMeToTest
    When He decides and acts accordingly to un-follow user, followMeToTest
    Then He is not following user with username followMeToTest

  @Regression @PROFILE-003 @wip
  Scenario: Verify user can't follow his own profile
    Given A registered user have a token to access API
    When He attempts to follow his own profile
    Then He should be returned with an error

