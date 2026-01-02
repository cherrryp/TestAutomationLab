*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${CHROME_BROWSER_PATH}    ${EXECDIR}${/}ChromeForTesting${/}chrome.exe 
${CHROME_DRIVER_PATH}   ${EXECDIR}${/}ChromeForTesting${/}chromedriver.exe 
${SERVER}         localhost:7272
${BROWSER}        Chrome
${DELAY}          0
${VALID USER}     demo
${VALID PASSWORD}    mode
${LOGIN URL}      http://${SERVER}/
${Registration URL}    http://${SERVER}/Registration.html
${SUCCESS URL}    http://${SERVER}/Success.html

*** Keywords ***
Open Browser To Register Page
    Open Browser    ${Registration URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Registration Page Should Be Open

Registration Page Should Be Open
    Title Should Be    Registration

Go To Registration Page
    Go To    ${Registration URL}
    Registration Page Should Be Open

Input First Name
    [Arguments]    ${FIRSTNAME}
    Input Text    firstname    ${FIRSTNAME}

Input Last Name
    [Arguments]    ${LASTNAME}
    Input Text    lastname    ${LASTNAME}

Input Organization
    [Arguments]    ${ORGANIZATION}
    Input Text    organization    ${ORGANIZATION}

Input Email
    [Arguments]    ${EMAIL}
    Input Text    email    ${EMAIL}

Input Phone Number
    [Arguments]    ${PHONE}
    Input Text    phone    ${PHONE}

Submit Credentials
    Click Button    registerButton

SUCCESS Page Should Be Opened
    Location Should Contain    ${SUCCESS URL}
    Title Should Be    Success

Error Message Should Be Shown
    Element Should Be Visible    id=errors