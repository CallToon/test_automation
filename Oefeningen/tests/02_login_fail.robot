*** Settings ***
Resource  ../pageObjects/loginPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Login
    Wait Until Element Is Visible  id:email
    Input Text  id:email  student@thomasmore.be
    Input Password  id:password  1234
    Click Element  css:input[value='Login']
    Location Should Be  https://stageplatform.herokuapp.com/login?error