*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                  https://practicetestautomation.com/practice-test-login/
${BROWSER}              chrome
${USERNAME}             student
${PASSWORD}             Password123

# BrowserStack-specific
${BROWSERSTACK_URL}     https://%{BROWSERSTACK_USERNAME}:%{BROWSERSTACK_ACCESS_KEY}@hub.browserstack.com/wd/hub
${OS}                   Windows
${OS_VERSION}           11
${BUILD_NAME}           Homework 2 – Multi Browser

*** Keywords ***
Open Browser In BrowserStack
    [Arguments]    ${url}    ${browser}    ${test_name}
    &{caps}=    Create Dictionary
    ...    browserName=${browser}
    ...    os=${OS}
    ...    osVersion=${OS_VERSION}
    ...    build=${BUILD_NAME}
    ...    name=${test_name}
    Open Browser    ${url}    ${browser}
    ...    remote_url=${BROWSERSTACK_URL}
    ...    desired_capabilities=${caps}
    Maximize Browser Window

Open Browser To Practice Test
    [Arguments]    ${test_name}=Practice Test
    Open Browser In BrowserStack    ${URL}    ${BROWSER}    ${test_name}
