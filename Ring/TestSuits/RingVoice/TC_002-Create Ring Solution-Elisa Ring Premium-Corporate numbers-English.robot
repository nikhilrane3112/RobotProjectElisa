*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary  
Library    ../../ExternalKeywords/UserKeywords.py
Resource   ../../Pages/LoginPage.robot
Resource   ../../Pages/newAccountsPage.robot
Resource   ../../Pages/NewEditConfigurationPage.robot


*** Test Cases ***

TC_002-Create Ring Solution-Elisa Ring Premium-Corporate numbers-English
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_002-Create Ring Solution-Elisa Ring Premium-Corporate numbers-English
    Open Browser and Maximize window
    Do Login
    Validate Salesforce classic URL
    Move to another Account
    Navigate to Account page
    Navigate to opportinity
    Select/Create Contact and BA
    Add and Select Product
    Edit Product Configuration for Ring Premium 
    Save and Sync
    Generating an order and subscription
    Close All Browsers