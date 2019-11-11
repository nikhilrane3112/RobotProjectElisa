# *** Settings ***
# Library    Selenium2Library
  
# Library    Collections   
# Library    ExcelLibrary  
# Resource    ../TestUtilities/ExcelOperations.robot

# # *** Variables ***
# # ${browser}        Chrome
# # ${URL}            https://elisa--uat.cs107.my.salesforce.com/home/home.jsp
# # @{Credentials}    ext-nikhil.rane@elisa.fi    Apple@1994
# # ${SubscriberNum}    SUB000633321
# # ${FixedLineNum}    0608978615 

# *** Keywords ***
# Open Browser and Login SFDC
    # Read Data from Excel
    # Open Browser                     ${URL}    ${browser}  
    # Set Browser Implicit Wait        5
    # Maximize Browser Window
    # Input Text    name=Ecom_User_ID    ${UserName} 
    # ${rem}=    Get Element Count    name=Ecom_User_ID   
    # Input Password    name=Ecom_Password    ${Password}    
    # Capture Page Screenshot    1_LoginPage.png
    # Click Element    name=loginButton2    
    # Set Browser Implicit Wait        5
    
# Validate Salesforce Lightning URL and go to Active subscription
    # Sleep    5    
    # ${LightURL}=    Get Location
    # Wait Until Page Contains Element    xpath=//div[@class='uiInput uiAutocomplete uiInput--default']/input    60   
    # #Run Keyword if    "${URL}" != "${LightURL}"    URLCheck 
    # Input Text                       xpath=//div[@class='uiInput uiAutocomplete uiInput--default']/input     @{LstSubscriberNum}[0]
    # Sleep    5
    # Wait Until Element Is Enabled    xpath=//ul[contains(@class,'lookup__list')]/li[1]/a    60        
    # #Wait Until Element Is Visible    xpath=//ul[contains(@class,'lookup__list')]/li[1]/a    60       
    # #Click Element                    xpath=//ul[contains(@class,'lookup__list')]/li[1]/a 
    # Execute Javascript    document.evaluate("//ul[contains(@class,'lookup__list')]/li[1]/a", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    
    # Sleep                            5 
    # Wait Until Page Contains Element    xpath=(//*[text()='Aktiivinen']//preceding::a[3])   60  
    # Wait Until Element Is Visible    xpath=(//*[text()='Aktiivinen']//preceding::a[3])   60 
    # Click Element                    xpath=(//*[text()='Aktiivinen']//preceding::a[3])
    # Wait Until Page Contains Element    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[1]/a/div    60  
    # Set Focus To Element    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[1]/a/div
    # Click Element                    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[1]/a/div
    
 # Validate Lightning classic URL and go to Terminate subscription
    # Sleep    5    
    # ${LightURL}=    Get Location
    # Wait Until Page Contains Element    xpath=//div[@class='uiInput uiAutocomplete uiInput--default']/input    60   
    # #Run Keyword if    "${URL}" != "${LightURL}"    URLCheck 
    # Input Text                       xpath=//div[@class='uiInput uiAutocomplete uiInput--default']/input     @{LstSubscriberNum}[0]
    # Sleep    5
    # Wait Until Element Is Enabled    xpath=//ul[contains(@class,'lookup__list')]/li[1]/a    60        
    # #Wait Until Element Is Visible    xpath=//ul[contains(@class,'lookup__list')]/li[1]/a    60       
    # #Click Element                    xpath=//ul[contains(@class,'lookup__list')]/li[1]/a 
    # Execute Javascript    document.evaluate("//ul[contains(@class,'lookup__list')]/li[1]/a", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    # #Sleep                            3 
    # Wait Until Page Contains Element    xpath=(//*[@class='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable'])[2]/tbody/tr[1]/th/span/a    60   
    # Wait Until Element Is Visible    xpath=(//*[@class='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable'])[2]/tbody/tr[1]/th/span/a    60 
    # Click Element                    xpath=(//*[@class='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable'])[2]/tbody/tr[1]/th/span/a
    # #${CorporateNum}=    Get Text     xpath=//*[text()='Corporate Number']//following::td[1]/div 
    # #Log To Console                   ${CorporateNum}       l
    # #Sleep                            2   
    # Wait Until Page Contains Element    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[4]/a/div    60  
    # Set Focus To Element    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[4]/a/div
    # Click Element                    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[4]/a/div

 # Validate Lightning classic URL and go to Suspend subscription
    # Sleep                            5  
    # ${LightURL}=    Get Location
    # #Sleep    5
    # Input Text                       id=phSearchInput     @{LstSubscriberNum}[0]
    # Click Element                    id=phSearchButton      
    # #Sleep                            3 
    # Wait Until Page Contains Element    xpath=//*[text()='Suspended']//preceding::a[3]    60 
    # Wait Until Element Is Visible    xpath=//*[text()='Suspended']//preceding::a[3]    60 
    # Click Element                    xpath=//*[text()='Suspended']//preceding::a[3]
    # ${CorporateNum}=    Get Text     xpath=//*[text()='Corporate Number']//following::td[1]/div 
    # Log To Console                   ${CorporateNum}       l
    # Sleep                            2    
    # Wait Until Page Contains Element    xpath=//span[text()='Subscription Change Requests (Subscription)']    60    
    # ${MainUrl}=    Get Location
    # Click Element                    xpath=//span[text()='Subscription Change Requests (Subscription)']
    # Wait Until Page Contains Element    xpath=//*[@value='New Subscription Change Request']      60    
    # Click Element                    xpath=//*[@value='New Subscription Change Request']  
    # Sleep                            20 
    