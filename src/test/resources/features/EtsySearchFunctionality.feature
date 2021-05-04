@HR-3
Feature: Validating Search Functionality

  @smoke @regression
  Scenario: Validating search result is matching with search item
    Given User navigates to Etsy application
    When User searches for "carpet"
    Then User validates search results contains
      | carpet   | rug          |
      | oval rug | turkish  rug |
  @regression
  Scenario: Validating price range functionality for second item
    And User selects price range more than 1000
    Then User validates price range is more than 1000

