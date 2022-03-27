*** Settings ***
Resource  ../helpers/browser.robot

*** Variables ***


*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}