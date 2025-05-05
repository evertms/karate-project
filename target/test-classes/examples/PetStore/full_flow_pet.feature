Feature: Flujo completo de prueba para mascota

  Scenario: Crear, consultar, actualizar y eliminar mascota
    * def createResult = call read('createPet.feature')
    * def petId = createResult.petId

    * call read('getPet.feature') { petId: '#(petId)' }
    * call read('updatePet.feature') { petId: '#(petId)' }
    * call read('deletePet.feature') { petId:'#(petId)'}