Feature: GET API feature

Scenario: get user details
Given url baseUrl+'/public/v2/users'
And path '195437'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actName = jsonResponse.name
* def actId = jsonResponse.id
* def actEmail = jsonResponse.email
* print actName
* match actName == 'Priya Nair'
* match actId == 195437
* match actEmail == 'nair_priya@pacocha-wyman.net'


Scenario: get user details - User not found
Given url baseUrl+'/public/v2/users'
And path '1'
When method GET
Then status 404