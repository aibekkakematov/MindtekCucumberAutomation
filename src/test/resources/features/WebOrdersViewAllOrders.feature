@HR-5
Feature: Validating functionalities in View All Orders part

  Scenario: Validating delete selected order functionality in View All Orders part
    Given User navigates to application
    When User provides username "Tester" and password "test"
    And User clicks on the first order checkbox and clicks it
    Then User validates that the first order deleted