*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}               https://practicetestautomation.com/practice-test-login/
${BROWSER}           chrome
${USERNAME}          student
${PASSWORD}          Password123
${CHROMEDRIVER_PATH}  C:/Users/nurah/chromedriver/chromedriver.exe

*** Keywords ***
Open Browser To Practice Test
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER_PATH}
    Maximize Browser Window