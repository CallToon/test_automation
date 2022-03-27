*** Settings ***
Resource  basePage.robot

*** Variables ***

*** Keywords ***

Get Company Text
    Wait Until Element Is Visible  class:companyCard
    ${text}=  Get Text  class:companyCard
    [Return]  ${text}
