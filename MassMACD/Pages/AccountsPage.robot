*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary 
Library    DatabaseLibrary  
Resource   ../Pages/LoginPage.robot
Variables    ../PageObjects/LoginObjects.py


*** Keywords ***
Navigate to Account page
    Wait Until Element Is Visible    ${AccountXpath}     60    
    Execute Javascript    document.evaluate("${AccountXpath}", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    
    # Wait Until Element Is Visible    xpath=//*[@class='slds-grid slds-has-flexi-truncate navUL']/one-app-nav-bar-item-root[3]/a/span     60    
    # Execute Javascript    document.evaluate("//*[@class='slds-grid slds-has-flexi-truncate navUL']/one-app-nav-bar-item-root[3]/a/span", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    # #Click Element    xpath=//*[@class='slds-grid slds-has-flexi-truncate navUL']/one-app-nav-bar-item-root[3]/a/span 
    Sleep    5    
    Input Text                       xpath=//div[@class='uiInput uiAutocomplete uiInput--default']/input     ${AccountName}
    Sleep    5  
    Wait Until Element Is Visible    xpath=//ul[contains(@class,'lookup__list')]/li[1]/a    60
    Execute Javascript    document.evaluate("//ul[contains(@class,'lookup__list')]/li[1]/a", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
  
    #Press Key    xpath=//div[@class='uiInput uiAutocomplete uiInput--default']/input    \\13  
    # Sleep    10     
    # Wait Until Page Contains Element    xpath=//ul[contains(@class,'lookup__list')]/li[1]    60
    # Wait Until Element Is Visible    xpath=//ul[contains(@class,'lookup__list')]/li[1]    60       
    # Click Element                    xpath=//ul[contains(@class,'lookup__list')]/li[1]     
    # Sleep                            5 
    Wait Until Element Is Visible    xpath=(//*[@class='slds-page-header__title slds-text-color--default slds-show--inline-block uiOutputURL'])[3]//following::a[text()='${AccountName}'][1]    60    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-page-header__title slds-text-color--default slds-show--inline-block uiOutputURL'])[3]//following::a[text()='${AccountName}'][1]    60 
    #${AccountEle}    Get Element Count    xpath=(//*[text()='${AccountName}' and contains(@class,'slds-truncate outputLookupLink slds-truncate outputLookupLink')])
    #Wait Until Element Is Visible    xpath=(//*[text()='${AccountName}' and @class='slds-truncate outputLookupLink slds-truncate outputLookupLink-0012000001aNglKAAS-390:12635;a forceOutputLookup'])    60    
    #Wait Until Page Contains Element    xpath=(//*[text()='${AccountName}' and @class='slds-truncate outputLookupLink slds-truncate outputLookupLink-0012000001aNglKAAS-390:12635;a forceOutputLookup'])    60 
    Click Element    xpath=(//*[@class='slds-page-header__title slds-text-color--default slds-show--inline-block uiOutputURL'])[3]//following::a[text()='${AccountName}'][1]
    
Navigate to MassMACD
    Wait Until Page Contains Element    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[4]    60
    Set Focus To Element    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[4]
    Click Element    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[4]
    Sleep    5    
    Wait Until Page Contains Element    xpath=(//*[@name='productType'])[2]    60  
    
    Select From List By Label    xpath=(//*[@name='productType'])[2]    Mobile Voice
    Sleep    5    
    Select From List By Label    xpath=(//*[@name='changeType'])[2]    Change Offer/Service
    Wait Until Page Contains Element    xpath=(//*[@class='slds-button-group slds-col slds-grid_align-center slds-p-around_medium'])[2]/button[2]    60   
    Click Element    xpath=(//*[@class='slds-button-group slds-col slds-grid_align-center slds-p-around_medium'])[2]/button[2]    
    
    ${NextCount}    Get Element Count    xpath=//*[@class='slds-button slds-button_neutral']
    Click Element    xpath=//*[@class='slds-button slds-button_neutral']    
    
       
 
