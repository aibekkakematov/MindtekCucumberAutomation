@HR-3
Feature: Validating Search Functionality

  @smoke @regression
  Scenario: Validating search result is matching with search item
    Given User navigates to Etsy application
    When User searches for "carpet"
    Then User validates search results contains
      | carpet   | rug          |
      | oval rug | turkish  rug |

