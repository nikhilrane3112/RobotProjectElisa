*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary  
Library    ../../ExternalKeywords/UserKeywords.py
Resource   ../../Pages/LoginPage.robot

Resource   ../../Pages/newAccountsPage.robot
Resource   ../../Pages/NewEditConfigurationPage.robot

*** Test Cases ***

TC_012-Create Ring Solution-Manual PSTN Range
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_012-Create Ring Solution-Manual PSTN Range
    Open Browser and Maximize window
    Do Login
    Validate Salesforce classic URL
    Move to another Account
    Navigate to Account page
    Navigate to opportinity
    Select/Create Contact and BA
    Add and Select Product
    Edit Confiuration Page manual Range
    Save and Sync
    Case Creation 
    Generating an order and subscription
    Close All Browsers