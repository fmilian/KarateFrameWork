@all
Feature: Rick And Morty

  @rick-get
  Scenario: Get Rick name
    Given url 'https://rickandmortyapi.com/api/character/1'
    When method GET
    Then status 200
    * def origin = $.origin
    Then match $.name == "Rick Sanchez"
    And match origin.name == "Earth (C-137)"

  @morty-get
  Scenario: Get Morty name
    Given url 'https://rickandmortyapi.com/api/character/2'
    When method GET
    Then status 200
    * def origin = $.origin
    Then match $.name == "Morty Smith"
    And match origin.name == "unknown"
