*** Settings ***
Resource  ../pageObjects/loginPage.robot

Suite Setup  Open My Website
Test Setup  Open My Website
Test Teardown  Close browser
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Login Success
    Login To Website  student@thomasmore.be  student
    Element Should Be Visible  css:.user.mx-2

Login Fail
    Login To Website  student@thomasmore.be  1234
    Location Should Be  https://stageplatform.herokuapp.com/login?error

