*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                      https://practicetestautomation.com/practice-test-login/
${BROWSER}                  chrome
${USERNAME}                 student
${PASSWORD}                 Password123

${BROWSERSTACK_USERNAME}    nurakhmetbaimakh_F9IEMR
${BROWSERSTACK_ACCESS_KEY}  7mhcJtKTXeo4txAied6W
${BROWSERSTACK_URL}         https://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub.browserstack.com/wd/hub

${WIN_OS}                   Windows
${WIN_OS_VERSION}           11
${MAC_OS}                   OS X
${MAC_OS_VERSION}           Sonoma
${BUILD_NAME}               Homework 2 – Multi Browser

*** Keywords ***
Open Browser In BrowserStack
    [Arguments]    ${url}    ${browser}    ${test_name}
    IF    '${browser}' == 'safari'
        &{caps}=    Create Dictionary
        ...    browserName=Safari
        ...    os=${MAC_OS}
        ...    osVersion=${MAC_OS_VERSION}
        ...    build=${BUILD_NAME}
        ...    name=${test_name}
    ELSE
        &{caps}=    Create Dictionary
        ...    browserName=${browser}
        ...    os=${WIN_OS}
        ...    osVersion=${WIN_OS_VERSION}
        ...    build=${BUILD_NAME}
        ...    name=${test_name}
    END
    Log To Console    REMOTE: ${BROWSERSTACK_URL} | BROWSER: ${browser}
    Open Browser    ${url}    ${browser}
    ...    remote_url=${BROWSERSTACK_URL}
    ...    desired_capabilities=${caps}
    Maximize Browser Window

Open Browser To Practice Test
    [Arguments]    ${test_name}=Practice Test
    Open Browser In BrowserStack    ${URL}    ${BROWSER}    ${test_name}
