*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary 
Library    DatabaseLibrary  
Resource   ../Pages/LoginPage.robot
Library    ../ExternalKeywords/UserKeywords.py 
Resource    ../PageObjects/EditConfigObj.robot

*** Keywords ***
Navigate to Account page
    Wait Until Element Is Visible    xpath=//*[@class='slds-grid slds-has-flexi-truncate navUL']/one-app-nav-bar-item-root[3]/a/span     60    
    Execute Javascript    document.evaluate("//*[@class='slds-grid slds-has-flexi-truncate navUL']/one-app-nav-bar-item-root[3]/a/span", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    #Click Element    xpath=//*[@class='slds-grid slds-has-flexi-truncate navUL']/one-app-nav-bar-item-root[3]/a/span 
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
    Wait Until Element Is Visible    xpath=(//*[@class='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable'])[2]/tbody/tr/th/span/a    60    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable'])[2]/tbody/tr/th/span/a    60 
    Click Element    xpath=(//*[@class='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable'])[2]/tbody/tr/th/span/a
    
Navigate to opportinity
    Wait Until Page Contains Element    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[3]    60
    Set Focus To Element    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[3]
    Click Element    xpath=(//*[@class='slds-button slds-button--neutral slds-truncate'])[3] 
    # # Sleep    3      
    # Click Element    xpath=(//*[text()='Uusi Myynti'])
    #Sleep    10    
 
Select/Create Contact and BA
    #Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60    
    Sleep    30   
      
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    #Wait Until Element Is Enabled    xpath=(//*[@class='btn-group ng-scope'])[1]/button/span[2]    60   
    Wait Until Page Contains Element    xpath=(//*[@class='cs-btn ng-isolate-scope'])[1]/span[2]    60   
    Wait Until Element Is Visible    xpath=(//*[@class='cs-btn ng-isolate-scope'])[1]/span[2]    60     
    Set Focus To Element    xpath=(//*[@class='cs-btn ng-isolate-scope'])[1]/span[2]      
    Click Element    xpath=(//*[@class='cs-btn ng-isolate-scope'])[1]/span[2] 
    Unselect Frame
    #Sleep    5       
    # Input Text    id=j_id0:j_id6:j_id32:searchNameInput    ${Contact}
    # Click Element    id=j_id0:j_id6:j_id32:searchButton
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60    
    Sleep    10    
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Wait Until Page Contains Element    xpath=(//*[contains(@class,'dataCell')])[1]/a    60
    Click Element    xpath=(//*[contains(@class,'dataCell')])[1]/a     
    Sleep    7       
    Handle Alert
    #Sleep    10  
    Unselect Frame
    
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60    
    Sleep    10    
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Wait Until Page Contains Element    xpath=(//*[@class='btn-group ng-scope'])[2]/button/span[2]    60    
    Click Element    xpath=(//*[@class='btn-group ng-scope'])[2]/button/span[2] 
    #Sleep    3 
    Unselect Frame
    
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60    
    Sleep    10    
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Wait Until Page Contains Element    xpath=(//*[contains(@class,'dataCell')])[1]/a    60    
    Click Element    xpath=(//*[contains(@class,'dataCell')])[1]/a
    Unselect Frame
    #Sleep    5  
    
Add and Select Product
    Sleep    5    
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60    
    Sleep    10    
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    
    Wait Until Page Contains Element    xpath=(//span[@class='btn-label ng-binding'])[6]    60
    Click Element    xpath=(//span[@class='btn-label ng-binding'])[6]
    sleep    5  
    
    Wait Until Page Contains Element      xpath=//*[@class='search-box ng-pristine ng-valid ng-touched']    100
    Set Focus To Element    xpath=//*[@class='search-box ng-pristine ng-valid ng-touched']
    Input Text    xpath=//*[@class='search-box ng-pristine ng-valid ng-touched']    ${Product}
    Sleep    4    
    Wait Until Element Is Enabled    xpath=//a[text()='${Product}']    60             
    #Sleep    25    
    Click Element    xpath=//a[text()='${Product}']   
    Sleep    5 
    Wait Until Element Is Enabled    xpath=(//span[@class='btn-label ng-binding'])[9]    60     
    Click Element    xpath=(//span[@class='btn-label ng-binding'])[9]
    Unselect Frame
    #Sleep    25
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe   60    
    Sleep    10    
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Wait Until Page Contains Element    xpath=//a[text()='${Product}']//following::button[1]    500         
    Wait Until Element Is Enabled    xpath=//a[text()='${Product}']//following::button[1]    500  
    Click Element    xpath=//a[text()='${Product}']//following::button[1]    
          
    #Unselect Frame
   
Save and Sync
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60    
    Sleep    10    
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Wait Until Page Contains Element    id=select2-chosen-16    60
    Click Element    id=select2-chosen-16
    Wait Until Page Contains Element    xpath=//ul[@id='select2-results-16']/li[5]    60
    Click Element    xpath=//ul[@id='select2-results-16']/li[5]  
    Sleep    5    
    Click Element    xpath=//*[text()='Save']  
    Sleep    5   
    Click Element    xpath=(//*[@class='cs-btn ng-isolate-scope'])[3]/span[2] 
    Sleep    15 
    Unselect Frame
    Sleep    10    
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60    
    Sleep    10    
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Sleep    10    
    Wait Until Page Contains Element    name=picklistField    60      
    Select From List By Value    name=picklistField    Won: Pricing
    Sleep    3    
    Click Element    xpath=//*[text()='Save']        
    Sleep    5       
    Unselect Frame
    Wait Until Page Contains Element    xpath=(//*[@class='slds-button slds-button_neutral'])[3]    60    
    Click Element    xpath=(//*[@class='slds-button slds-button_neutral'])[3]  
    
Case Creation
    Sleep    5    
    
    
    FOR    ${i}    IN RANGE    1  500
        Sleep    10          
        Wait Until Page Contains Element    xpath=//*[@class='column region-main']/div/div/div/ul/li[2]/a/span[2]    60
        Click Element    xpath=//*[@class='column region-main']/div/div/div/ul/li[2]/a/span[2] 
        Sleep    5    
        Scroll Element Into View    xpath=//span[text()='Cases']//following::span[1]
        Sleep    5    
        ${CaseNumber}=    Get Text    xpath=//span[text()='Cases']//following::span[1]
        Exit For Loop If    "${CaseNumber}" != "(0)" 
        Reload Page      
    END   
    
    ${OrderURL}=    Get Location
    #Click Element    xpath=//span[text()='Cases'] 
    Sleep    10     
    Set Browser Implicit Wait    5  
    Scroll Element Into View    xpath=//*[text()='Number Mgmt - Port In and TLA Numbers']//preceding::a[1]
    Sleep    15    
    Click Element    xpath=//*[text()='Number Mgmt - Port In and TLA Numbers']//preceding::a[1]
    Sleep                            5
    
    # Click Element                    xpath=(//div[@class='slds-grid forceActionsContainer'])[2]//following::ul[1]/li/a/div    
    # Sleep                            10
    # Select From List By Value        name=cas7    Finalize task and release order to fulfillment
    # Sleep    5    
    # Select From List By Value        name=cas6    User didn't attend training
    # Sleep    5   
    # Select From List By Value        name=00N2000000A5Esq    NUHA 
    Wait Until Page Contains Element    xpath=(//*[@class='slds-grid forceActionsContainer'])[2]//following::ul[1]/li/a    60    
    Click Element    xpath=(//*[@class='slds-grid forceActionsContainer'])[2]//following::ul[1]/li/a    
    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-form-element slds-hint-parent'])[1]/div/div/div/div/div/div/a    60
    Click Element    xpath=(//*[@class='slds-form-element slds-hint-parent'])[1]/div/div/div/div/div/div/a    
    Sleep    5    
    Wait Until Page Contains Element    xpath=//*[@class='uiMenuItem uiRadioMenuItem']//following::a[text()='Suljettu']    60
    Click Element    xpath=//*[@class='uiMenuItem uiRadioMenuItem']//following::a[text()='Suljettu'] 
    
    Click Element    xpath=(//*[@class='select'])[2]           
    Wait Until Element Is Visible    xpath=//*[@class='uiMenuItem uiRadioMenuItem']//following::a[text()='NUHA']    60
    Click Element    xpath=//*[@class='uiMenuItem uiRadioMenuItem']//following::a[text()='NUHA']     
    Sleep                            5    
    # Select From List By Value        name=00N3E000001BM8G    Numbers Created Successfully in CNM
    # Sleep    5 
    Click Element                    xpath=(//*[@class='forceModalActionContainer--footerAction forceModalActionContainer']/button[3]/span
    Sleep                            5   
    Capture Page Screenshot    4_CaseCompletion.png 
    Execute Javascript    window.open('${OrderURL}') 
    Sleep    4    
    Select Window    url=${OrderURL}
    Sleep    5   
    
Generating an order and subscription
    Sleep    20    
    
        
    FOR    ${i}    IN RANGE    1  500
        Sleep    10    
        Wait Until Page Contains Element    xpath=//*[@class='column region-main']/div/div/div/ul/li[2]/a/span[2]    60
        Click Element    xpath=//*[@class='column region-main']/div/div/div/ul/li[2]/a/span[2]  
        ${OrderNumber}=    Get Text    xpath=(//*[@class='slds-card__header-title slds-truncate slds-m-right--xx-small'])[4]//following::span[1]
        Exit For Loop If    "${OrderNumber}" != "(0)" 
        Reload Page      
        Sleep    10    
    END   
    #${OrderURL}=    Get Location
    Sleep    5 
    #${OpportunityId}=    Get Text    xpath=//*[text()='Opportunity Id']//following::div[1]  
    Click Element    xpath=(//*[@class='slds-card__header-title slds-truncate slds-m-right--xx-small'])[4]
    ${OrderURL}=    Get Location
    
    FOR    ${k}    IN RANGE    2  10
        Exit For Loop If    ${k} == 8
        
        ${OrderName}=    Get Text    xpath=//div[@class='uiVirtualDataTable indicator']//following::table/tbody/tr[${k}]/th/span/a
        Click Element    xpath=//div[@class='uiVirtualDataTable indicator']//following::table/tbody/tr[${k}]/th/span/a
        ${OrderId}=    Get Text    xpath=//*[text()='Order Basic Information']//following::span[2]/span
        Log To Console    ${OrderId} 
        Capture Page Screenshot 
        Loop for completion of status 
        Wait Until Page Contains Element    xpath=(//*[@class='column region-main']/div/div/div/ul/li[2]/a/span[2])    60
        
        ${ClickCount}    Get Element Count    xpath=(//*[@class='column region-main']/div/div/div/ul/li[2]/a/span[2])
        Run Keyword If    ${ClickCount} == 2    Click Element    xpath=(//*[@class='column region-main']/div/div/div/ul/li[2]/a/span[2])[2]  
        Run Keyword If    ${ClickCount} == 1    Click Element    xpath=(//*[@class='column region-main']/div/div/div/ul/li[2]/a/span[2])      
        # Wait Until Page Contains Element    xpath=(//*[@class='column region-main']/div/div/div/ul/li[2]/a/span[2])[2]    60
        # Wait Until Element Is Visible    xpath=(//*[@class='column region-main']/div/div/div/ul/li[2]/a/span[2])[2]    60    
        Sleep    3    
        Wait Until Page Contains Element    xpath=//*[contains(text(),'SUB0')]    60
        ${subNum}=    Get Text    xpath=//*[contains(text(),'SUB0')]    
        Log To Console    ${subNum} 
    
        Execute Javascript    window.open('${OrderURL}') 
        Select Window    url=${OrderURL}
        Capture Page Screenshot 
        WriteIntoExcel    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls    OutputResults    ${TEST_NAME}    ${OrderName}    ${OrderId}    ${subNum}    Completed
    END

Loop for completion of status   
    FOR    ${i}    IN RANGE    1  500
        Sleep    10    
        Wait Until Element Is Visible    xpath=//*[text()='Order Status Information']//following::span[2]    60    
        ${OrderStatus}=    Get Text    xpath=//*[text()='Order Status Information']//following::span[2]
        Exit For Loop If    "${OrderStatus}" == "Valmis"
        Reload Page
        #Sleep    60    
    END   
   