*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Browser}  Chrome
${URL}  https://ecommerce-playground.lambdatest.io/index.php?route=account/register
${Username Locator}  id:txtUsername
${Username}  Admin
${Password Locator}  name:txtPassword
${Password}  admin123
${Login Button Locator}  xpath: //*[@id="content"]/div/div[2]/div/div/form/input
${Forgot Password Locator}  //*[@id="content"]/div/div[2]/div/div/form/div[2]/a

*** Keywords ***
Open Browser And Maximize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Sleep  2s

Close Browser Window
    Close Browser
    Log To Console  Test Completed

Login To Portal
    Input Text  ${Username Locator}  ${Username}
    Input Text  ${Password Locator}  ${Password}
    Click Button  ${Login Button Locator}
    Sleep  2s

Forgot Password
    Click Link  ${Forgot Password Locator}
    Sleep  2s