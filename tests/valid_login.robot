*** Settings ***
Resource  ../resources/common_keywords.robot

*** Test Cases ***
Valid Login
    Open Browser To Practice Test    Valid Login Test
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=submit
    Wait Until Page Contains    Logged In Successfully    10s
    [Teardown]    Close Browser
