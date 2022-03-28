*** Settings ***
Resource  ../helpers/browser.robot

*** Variables ***


*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}

Login To Website
     [Arguments]  ${email}  ${password}
     Wait Until Element Is Visible  id:email
     Input Text  id:email  ${email}
     Input Password  id:password  ${password}
     Click Element  css:input[value='Login']
