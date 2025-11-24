*** Settings ***
Resource    ../resources/common_keywords.robot

*** Variables ***
${INVALID_USERNAME}    wronguser
${INVALID_PASSWORD}    wrongpass

*** Test Cases ***
Invalid Login
    [Documentation]    Verify that an invalid username/password shows the correct error message.
    Open Browser To Practice Test    Invalid Login Test
    Wait Until Element Is Visible    id=username    10s
    Input Text    id=username    ${INVALID_USERNAME}
    Input Text    id=password    ${INVALID_PASSWORD}
    Click Button    id=submit
    Wait Until Page Contains    Your username is invalid!    10s
    [Teardown]    Close Browser
