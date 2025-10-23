*** Settings ***
Resource  ../resources/common_keywords.robot

*** Test Cases ***
Valid Login
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=submit
    Wait Until Page Contains    Logged In Successfully
    Close Browser
