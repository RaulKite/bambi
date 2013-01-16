Feature: Users can make requests

  Scenario: Receive mail when create simple request 
    When I am a teacher of the Faculty
    And  I create a request
    Then I receive an email

  Scenario: I can create request if I'm a teacher
    When I am an authenticated teacher of the Faculty
    And I go to New Request page
    And I fill request fields
    And I click in Guardar
    Then A request is created
  
  
  @wip
  Scenario: View list of requests
    When I am a teacher of the Faculty
    And I go to List Requests page
    Then I see my requests




