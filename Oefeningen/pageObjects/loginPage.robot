*** Settings ***
Resource  ../helpers/browser.robot

*** Variables ***


*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}

Login To Website
     Wait Until Element Is Visible  id:email
     Input Text  id:email  student@thomasmore.be
     Input Password  id:password  student
     Click Element  css:input[value='Login']