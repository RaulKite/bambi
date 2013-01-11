Feature: Users can make requests

  Scenario: Receive mail when create simple request 
    When I am a teacher of the Faculty
    And  I create a request
    Then I receive an email

  Scenario:
    When I am a teacher of the Faculty
    And I click in Crear peticion
    And I fill request fields
    And I click in Guardar
    Then I request is created
  
  
  Scenario: View list of requests
    When I am a teacher of the Faculty
    And I click in Ver peticiones
    Then I see my requests




