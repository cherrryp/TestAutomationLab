*** Settings ***
Resource    resource.robot

*** Test Cases ***
UAT-Lab04-002 Empty Lastname
    Open Browser To Register Page
    Input First Name    Somyod
    Input Organization     CS KKU
    Input Email    somyod@kkumail.com
    Input Phone Number    091-001-1234
    Submit Credentials
    Error Message Should Be Shown
    Element Text Should Be    id=errors    Please enter your last name!!
    [Teardown]    Close Browser

UAT-Lab04-002 Empty Firstname And Lastname
    Open Browser To Register Page
    Input Organization     CS KKU
    Input Email    somyod@kkumail.com
    Input Phone Number    091-001-1234
    Submit Credentials
    Error Message Should Be Shown
    Element Text Should Be    id=errors    Please enter your name!!”
    [Teardown]    Close Browser

UAT-Lab04-001 Empty Email
    Open Browser To Register Page
    Input First Name    Somyod
    Input Last Name    Sodsai
    Input Organization     CS KKU
    Input Phone Number    091-001-1234
    Submit Credentials
    Error Message Should Be Shown
    Element Text Should Be    id=errors    Please enter your email!!”
    [Teardown]    Close Browser

UAT-Lab04-001 Empty Phone Number
    Open Browser To Register Page
    Input First Name    Somyod
    Input Last Name    Sodsai
    Input Organization     CS KKU
    Input Email    somyod@kkumail.com
    Submit Credentials
    Error Message Should Be Shown
    Element Text Should Be    id=errors    Please enter your phone number!!”
    [Teardown]    Close Browser


UAT-Lab04-001 Invalid Phone Number
    Open Browser To Register Page
    Input First Name    Somyod
    Input Last Name    Sodsai
    Input Organization     CS KKU
    Input Email    somyod@kkumail.com
    Input Phone Number    1234
    Submit Credentials
    Error Message Should Be Shown
    Element Text Should Be    id=errors    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)
    [Teardown]    Close Browser

