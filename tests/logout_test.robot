*** Settings ***
Resource    ../resources/common_keywords.robot

*** Test Cases ***
Log Out
    [Documentation]    Verify that a logged-in user can log out successfully.
    Open Browser To Practice Test
    Wait Until Element Is Visible    id=username    10s
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=submit
    Wait Until Page Contains    Logged In Successfully    10s
    Click Link    Log out
    Wait Until Element Is Visible    id=username    10s
    [Teardown]    Close Browser
