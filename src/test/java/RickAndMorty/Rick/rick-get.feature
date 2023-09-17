@all
Feature: Rick And Morty

  Background:
    * def baseUrl = 'https://rickandmortyapi.com/api/character/<id>'

  @rick-get
  Scenario: Get Rick name
    * replace baseUrl.id = '1'
    Given url baseUrl
    When method GET
    Then status 200
    * def origin = $.origin
    Then match $.name == "Rick Sanchez"
    And match origin.name == "Earth (C-137)"

  @morty-get
  Scenario: Get Morty name
    * replace baseUrl.id = '2'
    Given url baseUrl
    When method GET
    Then status 200
    * def origin = $.origin
    Then match $.name == "Morty Smith"
    And match origin.name == "unknown"
