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
Change Offer
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_003_ChangeOffer
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Active subscription
    MACD for Change Offer
    Mass Order for Change Offer
    CR and Order creation
    Close Browser
    