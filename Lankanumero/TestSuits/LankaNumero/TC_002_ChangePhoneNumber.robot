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
Change Phone Number
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_002_ChangePhoneNumber
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Active subscription
    MACD for Change Phone Number
    Mass Order for Change Phone Number
    CR and Order creation
    Close Browser