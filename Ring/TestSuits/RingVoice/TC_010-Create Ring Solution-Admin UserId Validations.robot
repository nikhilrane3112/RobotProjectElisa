*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary  
Library    ../../ExternalKeywords/UserKeywords.py
Resource   ../../Pages/LoginPage.robot
Resource   ../../Pages/newAccountsPage.robot
Resource   ../../Pages/NewEditConfigurationPage.robot

*** Test Cases ***

TC_010-Create Ring Solution-Admin UserId Validations
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC010_AdminUserIdValidation
    Open Browser and Maximize window
    Do Login
    Validate Salesforce classic URL
    Move to another Account
    Navigate to Account page
    Navigate to opportinity
    Select/Create Contact and BA
    Add and Select Product
    Edit Confiuration Page with UserId Validations  
    Close All Browsers
    
  
TC_011-Create Ring Solution-SpecialNumberdValidation  
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_011-Create Ring Solution-SpecialNumberdValidation
    Open Browser and Maximize window
    Do Login
    Validate Salesforce classic URL
    Move to another Account
    Navigate to Account page
    Navigate to opportinity
    Select/Create Contact and BA
    Add and Select Product

    Edit Confiuration Page with Special numbers Validation  
    Close All Browsers