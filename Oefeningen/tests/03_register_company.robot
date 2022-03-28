*** Settings ***
Resource  ../pageObjects/loginPage.robot

Suite Setup  Open My Website
Test Setup  Open My Website
Test Teardown  Close browser
Suite Teardown  Close browser

*** Variables ***

${LOCATION}  //li[normalize-space()='Brussels']
${PASSWORD}  1234Passwoord$

*** Test Cases ***

Register Company
    Click Link  register
    Input Text  id:companyName  Testbedrijf
    Input Text  id:company-street  Teststraat
    Input Text  id:street-nr  123
    Input Text  id:postalCode  1000
    Input Text  id:city  Brussels
    Wait Until Element Is Visible  ${LOCATION}
    Mouse Down  ${LOCATION}
    click element  ${LOCATION}
    Input Text  id:website  www.google.be
    Input Text  id:companyDescription  Wij testen jouw software!
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
    Sleep  1s
    Click Button  id:nextBtn
    Input Text  id:email  test@test.fr
    Input Text  id:firstname  Jan
    Input Text  id:lastname  De Tester
    Input Password  id:password  ${PASSWORD}
    Input Password  id:matchingPassword  ${PASSWORD}
    Sleep  1s
    Click Button  id:nextBtn
    Select Checkbox  class:form-check-input
    Input Text  id:internshipDescription  Een leuke stage!
    Execute Javascript    window.scrollTo(0, window.scrollY+200)
    Sleep  1s
    Click Button  id:registerBtn
    Login To Website  test@test.com  ${PASSWORD}
    Element Should Be Visible  css:.user.mx-2
