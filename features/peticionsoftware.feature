Feature: Teachers can make Software Requests

  Scenario: I can create a new "Peticion de Software" if I'm a teacher
    When I am an authenticated teacher of the Faculty
    And I create seeds
    And I go to Nueva Peticion de Software page
    And I fill Peticion fields
    And I click in Guardar
    Then A "peticion de Software" is created
    And I receive an email

  Scenario: I can see my "Peticiones de Software"
    When I am an authenticated teacher of the Faculty
    And I create a new Peticion de Software
    And I go to Ver Peticiones de Software page
    Then I see my "Peticion de Software"
