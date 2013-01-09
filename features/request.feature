Feature: Users can make requests

  Scenario: Create simple request 
    When I am a teacher of the Faculty
    And  I create a request
    Then I receive an email
