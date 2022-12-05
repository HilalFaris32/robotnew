*** Settings ***
Documentation   this is some basic info about the whole suite
Library         SeleniumLibrary         run_on_failure=Capture Page Screenshot
Library    Dialogs

#run the script with saving the results
#robot -d C:\Users\Home\PycharmProjects\robotnew\results .\robotdemo2.robot

*** Variables ***

*** Test Cases ***
should be able to add new customer
    [Documentation]         this is some basic info about the test
    [Tags]                  100     smoke       contact
    #initialize selenium
    Set Selenium Speed      .2s
    Set Selenium Timeout    10s

    #open browser
    Log                     starting the test case
    Open Browser            https://automationplayground.com/crm/   edge

    #resize broswer window due recording
    #Set Window Position    x=341    y=169
    #Get Window Position
    Set Window Size        width=1980    height=1090
    Page Should Contain    Customers Are Priority One!
    Click Link             Sign In
    Page Should Contain    Login
    Input Text             id=email-id    hilal.faris.1990@gmail.com
    Input Password         id=password    123456789
    Click Element          css=#submit-id
    Page Should Contain    Our Happy Customers
    Click Element          id=new-customer
    Page Should Contain    Add Customer

    #adding new customer
    Input Text             id=EmailAddress    lol@gmail.com
    Input Text             id=FirstName    loling
    Input Text             id=LastName    band
    Input Text             id=City    holleywood
    Select From List By Value    id=StateOrRegion   FL
    Select Radio Button    gender    female
    Select Checkbox        promos-name
    Click Button           css=#loginform > div > div > div > div > form > button

    Sleep                   3s
    Close Browser
*** Keywords ***