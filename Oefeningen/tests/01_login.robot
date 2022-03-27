*** Settings ***
Resource  ../pageObjects/loginPage.robot

Suite Setup  Open My Website
Test Setup  Open My Website
Test Teardown  Close browser
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Login Success
    Wait Until Element Is Visible  id:email
    Input Text  id:email  student@thomasmore.be
    Input Password  id:password  student
    Click Element  css:input[value='Login']
    Element Should Be Visible  css:.user.mx-2

Login Fail
    Wait Until Element Is Visible  id:email
    Input Text  id:email  student@thomasmore.be
    Input Password  id:password  1234
    Click Element  css:input[value='Login']
    Location Should Be  https://stageplatform.herokuapp.com/login?error

