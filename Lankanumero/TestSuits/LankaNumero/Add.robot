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
Add Lankanumero
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_001-AddLankanumero
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Active subscription
    MACD for Add Lankanumero
    Mass Order for add Lankanumero
    CR Order and Case creation
    Close Browser
    
Change Phone Number
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_002_ChangePhoneNumber
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Active subscription
    MACD for Change Phone Number
    Mass Order for Change Phone Number
    CR and Order creation
    Close Browser
    
Change Offer
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_003_ChangeOffer
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Active subscription
    MACD for Change Offer
    Mass Order for Change Offer
    CR and Order creation
    Close Browser
    
Suspend Subscription
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_004_SuspendSubscription
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Active subscription
    MACD for Suspend Subscription
    OrderCompletion
    Close Browser
    
Resume Subscription
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_005_ResumeSubscription
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Terminate subscription
    MACD creation for Resume Subscription
    OrderCompletion
    Close Browser
    
Terminate Subscription
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_006_TerminateSubscription
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Active subscription
    MACD creation for Terminate Subscription
    OrderCompletion
    Close Browser
    
Restore Subscription
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_007_RestoreSubscription
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Terminate subscription
    MACD creation for Restore Subscription
    MassOrder for Restore Subscription
    CR and Order creation
    Close Browser
    
Remove Lankanumero
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//TC_008_RemoveLankanumero
    Open Browser and Login SFDC
    Validate Salesforce Lightning URL and go to Active subscription
    MACD creation for Remove Lankanumero
    MassOrder for Remove Lankanumero
    CR case and Order creation
    Close Browser
    
Demo
   Open Browser and Login SFDC
   Sleep    7    
   Execute Javascript               window.open('https://elisa--uat.lightning.force.com/lightning/r/csord__Subscription__c/a1P1q000000oUOeEAM/view') 
   Sleep    10    
   Select Window    url=https://elisa--uat.lightning.force.com/lightning/r/csord__Subscription__c/a1P1q000000oUOeEAM/view
   Sleep    5   
   
   #Wait Until Page Contains Element    xpath=//*[@class='slds-button slds-button--neutral slds-truncate']/a/div    60
   Mass Order for add Lankanumero
   CR Order and Case creation
   Close Browser
   Sleep    5    
   # Set Focus To Element    xpath=//*[@class='slds-button slds-button--neutral slds-truncate']/a/div
   # Click Element    xpath=//*[@class='slds-button slds-button--neutral slds-truncate']/a/div
    
   
    
    #Execute Javascript               window.open('${CRUrl}')
   Sleep    4    
   # Select Window    url=${CRUrl}
   Sleep    5 
    #Write Excel    ${OUTPUT_DIR}//Lankanumero//TestUtilities//Newlankanumero.xls    ${TEST_NAME}    ${CRNumber}    ${OrderId}    @{LstSubscriberNum}[0]    ${FinalOrderStatus}
   Capture Page Screenshot
    
   Close Browser
   # Mass Order for add Lankanumero
   # CR Order and Case creation
   
   # ${MACDCount}    Get Element Count    xpath=//*[text()='Restore']//preceding::a[contains(text(),'MOLI')][1]
   # Click Element                    xpath=(//*[text()='Restore']//preceding::a[contains(text(),'MOLI')][1])[${MACDCount}]
   # CR and Order creation
    
   # Capture Page Screenshot    9.Order.png
    # #Write Excel    C://Users//nikhiran//Desktop//Newlankanumero.xls    ${TEST_NAME}    ${CRNumber}    ${OrderId}    @{LstSubscriberNum}[0]    ${FinalOrderStatus}
     
   Close Browser
   Close Browser
   
