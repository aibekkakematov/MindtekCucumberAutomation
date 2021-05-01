@HR-6
Feature: Validating order creation functionality

  Background: These steps will run before each scenario
    Given User navigates to application
    When User provides username "Tester" and password "test"
    And User clicks on Order module

  @regression
  Scenario Outline: Validating calculate total functionality
    And User provides product "<Product>" and quantity <Quantity>
    Then User validates total is calculated properly for quantity <Quantity>
    Then User validates discounted total is calculated properly for quantity <Quantity>
    Examples:
      | Product     | Quantity |
      | FamilyAlbum | 1        |
      | ScreenSaver | 5        |

  @smoke @regression
  Scenario: Validating order creation functionality
    And User creates an order with data
      | Product     | Quantity | Customer name | Street     | City    | State | Zip   | Card       | Card num   | Exp Date |
      | ScreenSaver | 10       | John Doe      | 123 Dee Rd | Chicago | IL    | 60648 | MasterCard | 1234567890 | 01/22    |
      | MyMoney     | 4        | Patel Harsh   | 321 Tan Rd | Chicago | IL    | 60648 | Visa       | 0987654321 | 05/24    |
#    data.get(0).get("Product"); -> ScreenSaver
#    data.get(1).get("Customer name") -> Patel Harsh
    Then User validates success message "New order has been successfully added."
    And User validates that created orders are in the list of all orders