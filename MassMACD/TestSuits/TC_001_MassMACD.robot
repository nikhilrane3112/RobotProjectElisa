*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary  
Resource    ../Pages/LoginPage.robot
Resource    ../Pages/AccountsPage.robot



*** Test Cases ***

TC_001_MassMACD
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_001_MassMACD
    Open Browser and Maximize window
    Do Login
    Validate Salesforce classic URL
    Move to another Account
    Navigate to Account page
    Navigate to MassMACD
    

    
    