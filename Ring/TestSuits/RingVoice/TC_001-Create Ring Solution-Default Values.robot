*** Settings ***
Library    Selenium2Library
Library     String      
Library    Collections   
Library    ExcelLibrary  
Library    ../../ExternalKeywords/UserKeywords.py
Resource   ../../Pages/LoginPage.robot
#Resource   ../../Pages/AccountsPage.robot

Resource   ../../Pages/newAccountsPage.robot
Resource   ../../Pages/NewEditConfigurationPage.robot
Resource    ../../PageObjects/EditConfigObj.robot


*** Test Cases ***

TC_001-Create Ring Solution-Default Values
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_001-Create Ring Solution-Default Values
    Open Browser and Maximize window
    Do Login
    Validate Salesforce classic URL
    Move to another Account
    Navigate to Account page
    Navigate to opportinity
    Select/Create Contact and BA
    Add and Select Product
    Edit Configuration for Default Values
    Save and Sync
    Generating an order and subscription
    Close All Browsers
    
Demo
    @{pre}=    Split String    TC_001-Create    -
    Log    @{pre}[0]    
    
       
    #WriteIntoExcel    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    OutputResults    {TEST_NAME}    {OrderName}    {OrderId}    {subNum}    Completed   
    # Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_001_Create Ring Solution-Default Values
    # Open Browser and Maximize window
    # Do Login
    # Validate Salesforce classic URL
    # Move to another Account
    # Execute Javascript    window.open('https://elisa--uat.lightning.force.com/lightning/r/Opportunity/0061q000007Et52AAC/view')
    # Select Window    url=https://elisa--uat.lightning.force.com/lightning/r/Opportunity/0061q000007Et52AAC/view
    # Case Creation
    
    # Generating an order and subscription
    # Close All Browsers
      