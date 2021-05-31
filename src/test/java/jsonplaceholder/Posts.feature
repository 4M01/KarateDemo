Feature: Verify Posts API for all http methods.

  Scenario: GET : Verify able to retrieve all posts.
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request {"userId": 1,"title": "Karate API Demo","body": "Testing and Tooling"}
    When  method POST
    Then  status 201
    And assert response.id == '101'


  Scenario: GET : Verify able to retrieve particular post using id.
    Given url 'https://jsonplaceholder.typicode.com/posts/10'
    When  method GET
    Then  status 200
    And assert response.title == 'optio molestias id quia eum'


  Scenario: POST : Verify able to create new post.
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request {"userId": 1,"title": "Karate API Demo","body": "Testing and Tooling"}
    When  method POST
    Then  status 201
    And assert response.id == '101'


  Scenario: PUT : Verify able to Update the existing post.
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    And request {id: 1, title: 'Karate Demo', body: 'Test body', userId: 1}
    When  method PUT
    Then  status 200
    And assert response.title == "Karate Demo"



  Scenario: DELETE : Verify able to Delete the existing post.
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method DELETE
    Then status 200

