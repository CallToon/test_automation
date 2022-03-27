*** Settings ***
Resource  ../pageObjects/loginPage.robot

Suite Setup  Open My Website
Test Setup  Open My Website
Test Teardown  Close browser
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Search For Internship
    Login To Website
    Click Link  /companylist
    Click Element  id:filter-btn
    Wait Until Element Is Visible  id:keyword
    Input Text  id:keyword  front-end
    Click Element  css:input[value='Zoek']
    ${text}=  Get Text  class:card-text
    [Return]  ${text}
    Should Contain  ${text}  front-end  ignore_case=True
