@HR-4
Feature: Validating Login Functionality

  @smoke @regression
  Scenario: Validating Login functionality with valid credentials
    Given User navigates to application
    When User provides username "Tester" and password "test"
    Then User validates that application is on Home Page

  @smoke @regression
  Scenario: Validating Login functionality with invalid credentials
    Given User navigates to application
    When User provides username "Tester" and password "tester"
    Then User validates error login message "Invalid Login or Password."