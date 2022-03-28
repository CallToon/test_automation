*** Settings ***
Resource  ../pageObjects/loginPage.robot

Suite Setup  Open My Website
Test Setup  Open My Website
Test Teardown  Close browser
Suite Teardown  Close browser

*** Variables ***

${LOCATION}    //li[normalize-space()='Brussels']

*** Test Cases ***

Register Company
    Click Link  register
    Input Text  id:companyName  Testbedrijf
    Input Text  id:company-street  Teststraat
    Input Text  id:street-nr  123
    Input Text  id:postalCode  1000
    Input Text  id:city  Brussels
    wait until element is visible  ${LOCATION}
    Mouse Down  ${LOCATION}
    click element  ${LOCATION}
    Input Text  id:website  www.google.be
    Input Text  id:companyDescription  Wij testen jouw software!
    Execute Javascript    window.scrollTo(0, window.scrollY+100)
    sleep  1s
    Click Button  id:nextBtn
    Input Text  id:email  test@test.com
    Input Text  id:firstname  Test
    Input Text  id:lastname  Test
    Input Password  id:password  1234Passwoord$
    Input Password  id:matchingPassword  1234Passwoord$
    sleep  1s
    Click Button  id:nextBtn