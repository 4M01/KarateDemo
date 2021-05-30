Feature: Verify ToDOs endpoint for Get and Post


  Scenario: Verify Status for Get post call and verify the body of the post
    Given url 'https://jsonplaceholder.typicode.com/posts/10'
    When  method GET
    Then  status 200
    And assert response.title == 'optio molestias id quia eum'

  Scenario: Verify able to create new posts using POST method
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request {"userId": 1,"title": "Karate API Demo","body": "Testing and Tooling"}
    When  method POST
    Then  status 201
    And assert response.id == '101'

  Scenario: Verify able to create new posts using POST method
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request {"userId": 1,"title": "Karate API Demo","body": "Testing and Tooling"}
    When  method POST
    Then  status 201
    And assert response.id == '101'
