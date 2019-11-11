*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary  
Library    ../../ExternalKeywords/UserKeywords.py
Resource   ../../Pages/LoginPage.robot
Resource   ../../Pages/newAccountsPage.robot
Resource   ../../Pages/NewEditConfigurationPage.robot

*** Test Cases ***

TC_009-Create Ring Solution-Solution Name Validation
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_009-Create Ring Solution-Solution Name Validation
    Open Browser and Maximize window
    Do Login
    Validate Salesforce classic URL
    Move to another Account
    Navigate to Account page
    Navigate to opportinity
    Select/Create Contact and BA
    Add and Select Product
    Edit Confiuration Page with Solution Name Validations 
 
    Close All Browsers