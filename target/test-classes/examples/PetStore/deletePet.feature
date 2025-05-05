Feature: Borrar mascota creada en Petstore

  Background:
    * url baseUrl
    * def petId = 5001

  Scenario: Eliminar mascota por id
    Given path 'pet', petId
    When method DELETE
    Then status 200