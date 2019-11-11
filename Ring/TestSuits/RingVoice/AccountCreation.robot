*** Settings ***
Library    Selenium2Library
Library    String      
Library    Collections   
Library    ExcelLibrary  
Library    ../../ExternalKeywords/UserKeywords.py
Resource   ../../Pages/LoginPage.robot

Resource   ../../Pages/newAccountsPage.robot
Resource   ../../Pages/NewEditConfigurationPage.robot
Resource    ../../PageObjects/EditConfigObj.robot
Resource    ../../PageObjects/AccountCreationObj.robot
Resource    ../../TestUtilities/ExcelOperations.robot


*** Test Cases ***
TC_001-Account Creation
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//AccountCreation
    Open Browser and Maximize window
    Do Login
    
    Wait Until Element Is Visible    xpath=//*[@class='slds-grid slds-has-flexi-truncate navUL']/one-app-nav-bar-item-root[4]/a/span     60    
    Execute Javascript    document.evaluate("//*[@class='slds-grid slds-has-flexi-truncate navUL']/one-app-nav-bar-item-root[4]/a/span", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    Sleep    5    
    Wait Until Page Contains Element    ${NewAccountButton_Xpath}    60
    Click Element    ${NewAccountButton_Xpath}
        
    Sleep    5    
    Click Element    ${CreateAccountButton_Xpath} 
    Wait Until Page Contains Element    ${AccountNameText}    60
    ${testcaseid}=    Splitting String    ${TEST_NAME}
    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   Accountname
    Input Text    ${AccountNameText}    ${searchData}   
    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   VAT Code
    ${searchData}    Convert To Integer    ${searchData}    
    ${searchData}    Convert To String    ${searchData}
    Input Text    ${VATCode}    ${searchData}
    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   SearchAddressStreetName
    Input Text    ${StreetAddress_Xpath}    ${searchData}
    Input Text    ${PostalAddress_Xpath}    ${searchData}
    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   SearchAddressStreetNumber
    ${searchData}    Convert To Integer    ${searchData}    
    ${searchData}    Convert To String    ${searchData}
    Input Text    ${StreetNumber_Xpath}    ${searchData}
    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   SearchAddressAppartmentNumber
    ${searchData}    Convert To Integer    ${searchData}    
    ${searchData}    Convert To String    ${searchData}
    Input Text    ${PostalNumber_Xpath}    ${searchData}
    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   SearchAddressPostalCode
    Input Text    ${VisitPostalCode_Xpath}    ${searchData}
    Input Text    ${PostalPostalCode_Xpath}    ${searchData}
    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   SearchAddressPostalAddressname
    Input Text    ${VisitCountry_Xpath}    ${searchData}
    Input Text    ${PostalCountry_Xpath}    ${searchData}
    
    Click Element    ${PostalLanguage_Xpath}
    Sleep    3    
    Click Element    ${PostalLanguageSelect_Xpath} 
    Click Element    ${Save_Xpath}           
    

TC_001-Contact Creation
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//AccountCreation
    Open Browser and Maximize window
    Do Login
    
    Wait Until Element Is Visible    xpath=//*[@class='slds-grid slds-has-flexi-truncate navUL']/one-app-nav-bar-item-root[4]/a/span     60    
    Execute Javascript    document.evaluate("//*[@class='slds-grid slds-has-flexi-truncate navUL']/one-app-nav-bar-item-root[4]/a/span", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    Sleep    10    
    Wait Until Page Contains Element    ${NewAccountButton_Xpath}    60
    Click Element    ${NewAccountButton_Xpath}
        
    Sleep    5    
    Click Element    xpath=(//*[@class='actionLabel'])[1]
    ${testcaseid}=    Splitting String    ${TEST_NAME}
    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   Accountname
    Input Text    xpath=//div[@class='autocompleteWrapper slds-grow'][1]/input    ${searchData}
    Sleep    4    
    Click Element    xpath=(//div[@class='mruIcon slds-icon slds-icon--small slds-float--left slds-m-vertical--xx-small slds-m-left--xx-small slds-media__figure forceEntityIcon'])[1]    
    #Execute Javascript    document.evaluate("(//div[@class='mruIcon slds-icon slds-icon--small slds-float--left slds-m-vertical--xx-small slds-m-left--xx-small slds-media__figure forceEntityIcon'])[1]", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    
    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   ContactFirstName
    Input Text    xpath=//*[@class='firstName compoundBorderBottom form-element__row input']    ${searchData}

    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   ContactLastName
    Input Text    xpath=//*[@class='lastName compoundBLRadius compoundBRRadius form-element__row input']    ${searchData}

    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   ContactMobileNumber
    Input Text    xpath=(//*[@class=' input'])[1]    ${searchData}

    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   ContactEmail
    Input Text    xpath=(//*[@class=' input'])[2]    ${searchData}
    ${SaveCount}    Get Element Count    xpath=(//*[@class=' label bBody'])
    Click Element    xpath=(//*[@class=' label bBody'])[${SaveCount}]    


TC_001-BA Creation  
    Set Screenshot Directory    ${OUTPUT_DIR}//Screenshots//AccountCreation
    Open Browser and Maximize window
    Do Login
    ${testcaseid}=    Splitting String    ${TEST_NAME}
    ${searchData}=    Read Data From ExcelSheet    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    Data    ${testcaseid}   Accountname
    Sleep    5    
    Input Text                       xpath=//div[@class='uiInput uiAutocomplete uiInput--default']/input     ${searchData}
    Sleep    5  
    Wait Until Element Is Visible    xpath=//ul[contains(@class,'lookup__list')]/li[1]/a    60
    Execute Javascript    document.evaluate("//ul[contains(@class,'lookup__list')]/li[1]/a", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
  
    Wait Until Element Is Visible    xpath=(//*[@class='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable'])[1]/tbody/tr/th/span/a    60    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable'])[1]/tbody/tr/th/span/a    60 
    Click Element    xpath=(//*[@class='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable'])[1]/tbody/tr/th/span/a
    Sleep    3    
    Click Element    xpath=(//*[@class='id-rlql-showAllShowLess'])/a   
    Sleep    3     
    Click Element    xpath=(//*[@class='rlql-label'])[13] 
    Sleep    3    
    Click Element    xpath=(//*[@class='slds-col slds-no-flex slds-grid slds-align-top slds-p-bottom--xx-small test-lvmForceActionsContainer'])/ul/li[2]/a/div       
    Sleep    8    
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Sleep    2    
    Click Element    xpath=(//*[@class='btn'])[1] 
    Sleep    5    
    Select From List By Value    xpath=(//table[@class='detailList'])[1]/tbody/tr[1]/td/div/select    EM
    Sleep    5    
    Click Element    xpath=(//*[@class='btn'])[2]   
    Unselect Frame        
    
    
    
      
        
    