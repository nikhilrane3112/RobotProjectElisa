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
Resume Subscription
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_005_ResumeSubscription
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Terminate subscription
    MACD creation for Resume Subscription
    OrderCompletion
    Close Browser
    