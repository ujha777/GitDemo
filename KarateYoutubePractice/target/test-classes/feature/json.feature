Feature: json feature testing
Scenario: json parser

* def jsonObject =
"""
[

{
	"name":"Tom",
	"city":"Bangalore",
	"age":25
	
},

{
	"name":"Peter",
	"city":"Newyork",
	"age":40
	
}

]
"""
* print jsonObject
* print jsonObject[0]
* print jsonObject[0].name
* print jsonObject[1].name + jsonObject[1].city + jsonObject[1].age

Scenario: complex json parser
* def jsonObject =
"""

{
"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}
}

"""
* print jsonObject
* print jsonObject.menu.id
* print jsonObject.menu.popup
* print jsonObject.menu.popup.menuitem
* print jsonObject.menu.popup.menuitem[0].value
* print jsonObject.menu.popup.menuitem[0].onclick


