*** Settings ***
Resource  ../Resources/resources.robot
Test Setup  Open Browser And Maximize
Test Teardown  Close Browser Window


*** Test Cases ***
First Test Case
    Login To Portal

Second Test Case
    Forgot Password