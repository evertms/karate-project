Feature: Actualizar mascota en PetStore

  Background:
    * url baseUrl

  Scenario: Actualizar mascota creada
    Given path 'pet'
    And request
      """
      {
        "id": 5001,
        "category": {
          "id": 0,
          "name": "cat"
        },
        "name": "Pelusa",
        "photoUrls": ['string'],
        "tags": [{"id": 0, "name": "mascota"}],
        "status": "available"
      }
      """
    When method PUT
    Then status 200
    And match response.name == 'Pelusa'
    And match response.category.name == 'cat'
