Feature: get API feature
Scenario: get user detail

Given url 'https://gorest.co.in/public/v2/users'
And path '437073'
When method GET
Then status 200

