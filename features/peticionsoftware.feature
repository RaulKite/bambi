Feature: Teachers can make Software Requests

  Scenario: I can create a new "Peticion de Software" if I'm a teacher
    When I am an authenticated teacher of the Faculty
    And I create seeds
    And I go to Nueva Peticion de Software page
    And I fill Peticion fields
    And I click in New
    Then A "peticion de Software" is created
    And I receive an email


