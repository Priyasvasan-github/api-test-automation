Feature: Check if users are able Favorite/Unfavorite articles in BBlog site

  @Regression @wip @Favorite-001
  Scenario: Verify a anonymous user is unable to Favorite an article
    Given a "anonymous" user is in BBlog website
    When the user selects an article from "global" feed
    Then the user is unable to favorite the article

  @Regression @wip @Favorite-002
  Scenario: Verify a registered user is able to Favorite an article and is able to view it in "Favorited Articles"
    Given a "registered" user is in BBlog website
    When the user selects an article from "global" feed
    And the user "favorites" the article
    Then the article is "visible" under the Favorited Articles
    And the user logs out

  @Regression @wip @Favorite-003
  Scenario: Verify a registered user is able to Unfavorite a favorited article and is not able to view it in "Favorited Articles"
    Given a "registered" user is in BBlog website
    When the user selects an article from "global" feed
    And the user "unfavorites" the article
    Then the article is "not visible" under the Favorited Articles
    And the user logs out