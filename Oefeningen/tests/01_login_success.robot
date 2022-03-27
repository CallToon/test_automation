*** Settings ***
Resource  ../pageObjects/loginPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Login
    Wait Until Element Is Visible  id:email
    Input Text  id:email  student@thomasmore.be
    Input Password  id:password  student
    Click Element  css:input[value='Login']
    Element Should Be Visible  css:.user.mx-2

