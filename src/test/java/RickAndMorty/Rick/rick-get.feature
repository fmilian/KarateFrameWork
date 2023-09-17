@all
Feature: Rick And Morty

  Background:
    * configure url = 'https://rickandmortyapi.com/api/character'

  @rick-get
  Scenario: Get Rick name
    Given path '1'
    When method GET
    Then status 200
    * def origin = $.origin
    Then match $.name == "Rick Sanchez"
    And match origin.name == "Earth (C-137)"

  @morty-get
  Scenario: Get Morty name
    Given path '2'
    When method GET
    Then status 200
    * def origin = $.origin
    Then match $.name == "Morty Smith"
    And match origin.name == "unknown"
