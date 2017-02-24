Feature: Login feature

  Scenario: As a user I can change text
    When I enter "El texto" into editText
    Then I see "El texto" in textToBeChanged
