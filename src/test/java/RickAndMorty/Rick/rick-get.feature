@all
Feature: Rick And Morty

  Background:
    * configure url = 'https://rickandmortyapi.com/api/character'

  @rick-get
  Scenario Outline: Get <character> data
    Given path "<id>"
    When method GET
    Then status 200
    * def origin = $.origin
    Then match $.name == "<character>"
    And match origin.name == "<origin>"

    Examples:
      | id  | character     | origin                        |
      |  1  | Rick Sanchez  | Earth (C-137)                 |
      |  2  | Morty Smith   | unknown                       |
      |  3  | Summer Smith  | Earth (Replacement Dimension) |
      |  4  | Beth Smith    | Earth (Replacement Dimension) |

  @morty-get
  Scenario: Get Morty name
    Given path '2'
    When method GET
    Then status 200
    * def origin = $.origin
    Then match $.name == "Morty Smith"
    And match origin.name == "unknown"
