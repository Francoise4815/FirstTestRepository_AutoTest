@area
Feature: User is able to convert area units
  Background:
    Given I click on Got it button
    And I land on Area screen
    And I click on Clear button

@reverse
  Scenario Outline:Landing on Digital Storage screen & check out reverse conversion result is correct
    When I swipe in the menu
    And I select "Digital Storage" from menu
    Then I land on "Digital Storage" screen
    And I select "Bit" from left column
    And I see "Bit" in From header
    And I press "1" on soft keyboard
    When I select "<target>" unuts from right column
    Then I get "<result>" in TO field
    Examples:
      |target  |result|
      |Byte    |0.125 |
      |Kilobit |0.001 |
      |Kilobyte|0.0001|


