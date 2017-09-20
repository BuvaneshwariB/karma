Feature:Todo
    In order to value
    As a role
    I want feature

    Scenario: insert a Todo

* def todo =
"""
{
 "id": 2,
    "name": "hi",
    "status": "string",
    "priority": "string",
    "isCompleted": true
  }

"""

Given url 'http://localhost:8080/todolist/post'
And request todo
When method post
Then status 201

Scenario: Get all todo

Given url 'http://localhost:8080/todolist/get'
When method get
Then status 

Scenario: Get todo

Given url 'http://localhost:8080/todolist/get/1'
When method get
Then status 200



Scenario: Delete a todo
* def val = '5'
Given url 'http://localhost:8080/todolist/delete/5'
And request val
When method delete
Then status 500

 