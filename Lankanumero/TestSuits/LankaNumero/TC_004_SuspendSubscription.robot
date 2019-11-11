*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary  
Library    ../../ExternalKeywords/UserKeywords.py
Resource   ../../Pages/NewCommonPage1.robot
Resource   ../../Pages/NewMacdPage.robot
Resource   ../../Pages/NewMassOrderPage.robot
Resource    ../../Pages/NewCRandOrderPage.robot
Resource    ../../PageObjects/newObjects.robot

*** Test Cases ***
Suspend Subscription
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_004_SuspendSubscription
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Active subscription
    MACD for Suspend Subscription
    OrderCompletion
    Close Browser
    
