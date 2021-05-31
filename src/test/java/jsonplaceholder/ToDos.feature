Feature: Verify ToDOs API for all http methods.

  Scenario: GET : Verify able to retrieve all todos.
    Given url 'https://jsonplaceholder.typicode.com/todos'
    When  method POST
    Then  status 201
    And assert response.id == '201'


  Scenario: GET : Verify able to retrieve particular todos using id.
    Given url 'https://jsonplaceholder.typicode.com/todos/10'
    When  method GET
    Then  status 200
    And assert response.title == 'illo est ratione doloremque quia maiores aut'


  Scenario: POST : Verify able to create new todo.
    Given url 'https://jsonplaceholder.typicode.com/todos'
    And request {"userId": 1,"title": "Karate API Demo","completed": false}
    When  method POST
    Then  status 201
    And assert response.id == '201'


  Scenario: PUT : Verify able to Update the existing todo.
    Given url 'https://jsonplaceholder.typicode.com/todos/1'
    And request {id: 1,"title": "Karate API Demo","completed": false}
    When  method PUT
    Then  status 200
    And assert response.title == "Karate API Demo"



  Scenario: DELETE : Verify able to Delete the existing todo.
    Given url 'https://jsonplaceholder.typicode.com/todos/1'
    When method DELETE
    Then status 200
