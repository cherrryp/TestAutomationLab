*** Settings ***
Resource    resource.robot

*** Test Cases ***
UAT-Lab04-001 Open Browser
    Open Browser To Register Page
    [Teardown]    Close Browser

UAT-Lab04-001 Success Register
    Open Browser To Register Page
    Input First Name    Somyod
    Input Last Name    Sodsai
    Input Organization     CS KKU
    Input Email    somyod@kkumail.com
    Input Phone Number    091-001-1234
    Submit Credentials
    SUCCESS Page Should Be Opened
    [Teardown]    Close Browser

UAT-Lab04-001 Register Success No Organization Info
    Open Browser To Register Page
    Input First Name    Somyod
    Input Last Name    Sodsai
    Input Email    somyod@kkumail.com
    Input Phone Number    091-001-1234
    Submit Credentials
    SUCCESS Page Should Be Opened
    [Teardown]    Close Browser




