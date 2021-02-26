Feature: Verify all CRUD operations on Articles are working as expected

  @Regression @Automation @Article-001
  Scenario Outline: Verify a user with valid token is able to create an Article
    Given A registered user have a token to access API
    When he create an article with valid details <Title>,<Description>,<Body>,<TagList>
    Then Article is created successfully
    And all the article details are displayed as expected <Title>,<Description>,<Body>,<TagList>
    Examples:
    |  Title            | Description             |    Body         |  TagList         |
    | Hello World       | this Description        | test case body  | name-when-follow |

  @Regression @Automation @Article-002
  Scenario Outline: Verify a user with valid token can update an Article
    Given A registered user have a token to access API
    When he update an article with <UpdateField> to new value <UpdateValue>
    Then Article is updated successfully
    And  article value for <UpdateField> is updated with <UpdateValue>
    Examples:
      |  UpdateField            | UpdateValue                  |
      | title               | Updated To Hello Universe        |
      | description         | new updated description          |
      | body                | new Updated body is good       |

  @Regression @Automation @Article-003
  Scenario: Verify a user with valid token can delete an Article
    Given A registered user have a token to access API
    When He delete the existing Article
    Then Article is deleted successfully
    And Article is not found for viewing

  @Regression @manual @Article-003
  Scenario: Verify a user with invalid valid token can delete an Article
    Given A existing user have a invalid token to access API
    When He attempt delete the existing Article
    Then Article is not deleted successfully
    And Article is found for viewing