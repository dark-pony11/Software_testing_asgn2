*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common_keywords.robot

*** Test Cases ***
Navigate To Contact Page
    [Documentation]    Verify that user can open the Contact page from the Practice site.
    Open Browser To Practice Test    Navigate to Contact Page
    Go To    https://practicetestautomation.com/
    Wait Until Element Is Visible    xpath=//a[contains(text(),'Practice')]    15s
    Click Link    xpath=//a[contains(text(),'Practice')]
    Wait Until Element Is Visible    xpath=//a[contains(text(),'Contact')]    15s
    Click Link    xpath=//a[contains(text(),'Contact')]
    Wait Until Page Contains    Contact    20s
    [Teardown]    Close Browser
