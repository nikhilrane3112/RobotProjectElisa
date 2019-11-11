*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary 
Resource   ../Pages/NewCommonPage1.robot
Library    ../ExternalKeywords/UserKeywords.py

*** Keywords ***
CR Order and Case creation
    FOR    ${i}    IN RANGE    1  500
        Reload Page
        #Sleep    10 
        Wait Until Page Contains Element    xpath=//*[text()='Status Information']//following::span[1]//following::span[1]    20   
        ${Status}=    Get Text    xpath=//*[text()='Status Information']//following::span[1]//following::span[1] 
        Exit For Loop If    "${Status}" == "Completed"
        #Sleep    30  
        Set Browser Implicit Wait    15  
    END          
    ${CRUrl}=      Get Location
    
    FOR    ${i}    IN RANGE    1  500 
        Wait Until Page Contains Element    xpath=(//*[text()='Order'])//following::span[1]/span    30         
        ${OrderId}=    Get Text          xpath=(//*[text()='Order'])//following::span[1]/span
        ${OrderValid}=    Get Element Count    xpath=//a[contains(text(),'ON')]
        Exit For Loop If    ${OrderValid} == 1
        Reload Page
        Set Browser Implicit Wait    15    
    END  
   
    Capture Page Screenshot    8_CRcomplete.png      
    ${CRNumber}=    Get Text    xpath=//*[text()='Subscription Change Request']//following::a[1]
    
    Log To Console       ${CRNumber} 
    Log To Console       ${OrderId}  
    #Sleep    5 
    Wait Until Page Contains Element    xpath=//a[contains(text(),'ON')]    60   
    Click Element    xpath=//a[contains(text(),'ON')] 
    Sleep    5   
    ${OrderURL}=    Get Location
    
    #${RelateCount}=    Get Element Count    xpath=(//*[@class='column region-main'])/div/div/div/ul/li[2]/a/span[2]
    #Run Keyword If    ${RelateCount} == 1    Click Element    xpath=(//*[@class='column region-main'])/div/div/div/ul/li[2]/a/span[2]
    #Run Keyword If    ${RelateCount} == 2    Click Element    xpath=(//*[@class='column region-main'])[2]/div/div/div/ul/li[2]/a/span[2]
    Click Element    xpath=(//*[@class='column region-main'])[2]/div/div/div/ul/li[2]/a/span[2]
    Sleep    5 
    Execute JavaScript    window.scrollTo(0,500)
   
    Wait Until Page Contains Element    xpath=(//*[@class='slds-page-header__title listViewTitle slds-text-color--default slds-p-right--x-small slds-truncate'])[4]/a    60   
    #Click Element                    xpath=(//*[@class='slds-page-header__title listViewTitle slds-text-color--default slds-p-right--x-small slds-truncate'])[4]/a
    Sleep    5     
    Set Focus To Element    xpath=//*[text()='Elisa Lankanumero - New lankanumero order']//preceding::a[1]
    Wait Until Page Contains Element    xpath=//*[text()='Elisa Lankanumero - New lankanumero order']//preceding::a[1]    60
    Click Element                    xpath=//*[text()='Elisa Lankanumero - New lankanumero order']//preceding::a[1]  
    Sleep    10      
    Execute Javascript    document.evaluate("(//*[@class='slds-grid primaryFieldRow'])[2]/div[2]/ul/li/a/div", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    Sleep    5
    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-form-element slds-hint-parent'])[1]/div/div/div/div/div/div/a    60 
    Click Element    xpath=(//*[@class='slds-form-element slds-hint-parent'])[1]/div/div/div/div/div/div/a 
    
    Wait Until Element Is Visible    xpath=//*[@class='uiMenuItem uiRadioMenuItem']//following::a[10]    60
    Wait Until Page Contains Element    xpath=//*[@class='uiMenuItem uiRadioMenuItem']//following::a[10]    60
    Click Element    xpath=//*[@class='uiMenuItem uiRadioMenuItem']//following::a[10] 
    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-form-element slds-hint-parent'])[3]/div/div/div/div[1]/div/div/a    60 
    Click Element    xpath=(//*[@class='slds-form-element slds-hint-parent'])[3]/div/div/div/div[1]/div/div/a 
    
    Wait Until Element Is Visible    xpath=(//*[@title='NUHA'])    60
    Wait Until Page Contains Element    xpath=(//*[@title='NUHA'])    60
    Click Element    xpath=(//*[@title='NUHA'])
    
    Wait Until Page Contains Element    xpath=//*[@class='forceModalActionContainer--footerAction forceModalActionContainer']/button[3]/span    60
    Click Element    xpath=//*[@class='forceModalActionContainer--footerAction forceModalActionContainer']/button[3]/span      
              
    Sleep                            5   
    Execute Javascript    window.open('${OrderURL}') 
    Sleep    4    
    Select Window    url=${OrderURL}
    Sleep    5  
     FOR    ${i}    IN RANGE    1  500
        Reload Page
        Wait Until Page Contains Element    xpath=//*[text()='Status']//following::span[1]    60   
        ${FinalOrderStatus}=    Get Text    xpath=//*[text()='Status']//following::span[1]
        Exit For Loop If    "${FinalOrderStatus}" == "Valmis"      
        #Sleep    30
        Set Selenium Implicit Wait    10    
    END 
    
    Capture Page Screenshot    10_Order.png    
    
    
    Execute Javascript               window.open('${CRUrl}') 
    Sleep    4    
    Select Window    url=${CRUrl}
    Sleep    5 
    #Write Excel    ${OUTPUT_DIR}//Lankanumero//TestUtilities//Newlankanumero.xls    ${TEST_NAME}    ${CRNumber}    ${OrderId}    @{LstSubscriberNum}[0]    ${FinalOrderStatus} 
    Capture Page Screenshot
    
    Close Browser     
 
CR and Order Creation
    FOR    ${i}    IN RANGE    1  500
        Reload Page
        #Sleep    10 
        Wait Until Page Contains Element    xpath=(//*[text()='Status Information'])//following::span[3]    20   
        ${Status}=    Get Text    xpath=(//*[text()='Status Information'])//following::span[3] 
        Exit For Loop If    "${Status}" == "Completed"
        #Sleep    30  
        Set Browser Implicit Wait    15  
    END       
        
    ${CRUrl}=      Get Location
    
    FOR    ${i}    IN RANGE    1  500 
        Wait Until Page Contains Element    xpath=(//*[text()='Order'])//following::span[1]/span    30         
        ${OrderId}=    Get Text          xpath=(//*[text()='Order'])//following::span[1]/span
        ${OrderValid}=    Get Element Count    xpath=//a[contains(text(),'ON')]
        Exit For Loop If    ${OrderValid} == 1
        Reload Page
        Set Browser Implicit Wait    15    
    END  
    
    Capture Page Screenshot    8_CRcomplete.png  
    ${CRNumber}=    Get Text    xpath=(//*[text()='Subscription Change Request'])//following::a[1]
    
    Log To Console       ${CRNumber} 
    Log To Console       ${OrderId}  
    #Sleep    5  
    Wait Until Page Contains Element    xpath=//a[contains(text(),'ON')]    60   
    Click Element    xpath=//a[contains(text(),'ON')] 
         
    FOR    ${i}    IN RANGE    1  500
        Reload Page
        Wait Until Page Contains Element    xpath=(//*[text()='Status'])//following::span[1]    60   
        ${FinalOrderStatus}=    Get Text    xpath=(//*[text()='Status'])//following::span[1]
        Exit For Loop If    "${FinalOrderStatus}" == "Valmis"      
        #Sleep    30
        Set Selenium Implicit Wait    10    
    END 
    
    Capture Page Screenshot    9.Order.png
    Write Excel    C://Users//nikhiran//Desktop//Newlankanumero.xls    ${TEST_NAME}    ${CRNumber}    ${OrderId}    @{LstSubscriberNum}[0]    ${FinalOrderStatus}   
     
    Close Browser
       
OrderCompletion 
    Wait Until Page Contains Element    xpath=(//*[@class='slds-form slds-form_stacked '])[1]/div[2]/div[2]/div/div[2]/span/span     60   
    ${CRNum}=    Get Text    xpath=(//*[@class='slds-form slds-form_stacked '])[1]/div[2]/div[2]/div/div[2]/span/span   
    FOR    ${i}    IN RANGE    1  500
        Reload Page
        Wait Until Page Contains Element    xpath=(//*[@class='slds-form slds-form_stacked '])[1]/div[3]/div[2]/div/div[2]/span/span    60    
        ${Status}=    Get Text    xpath=(//*[@class='slds-form slds-form_stacked '])[1]/div[3]/div[2]/div/div[2]/span/span
        Exit For Loop If    "${Status}" == "Valmis"     
        #Sleep    20 
        Set Selenium Implicit Wait    10   
    END     
    Write Excel    C://Users//nikhiran//Desktop//Newlankanumero.xls    ${TEST_NAME}    ${CRNum}    NA    @{LstSubscriberNum}[0]    ${Status} 
    Capture Page Screenshot    OrderComplete.png 
    Close Browser
    
CR case and Order creation
    FOR    ${i}    IN RANGE    1  500
        Reload Page
        #Sleep    10 
        Wait Until Page Contains Element    xpath=//*[text()='Status Information']//following::span[1]//following::span[1]    20   
        ${Status}=    Get Text    xpath=//*[text()='Status Information']//following::span[1]//following::span[1] 
        Exit For Loop If    "${Status}" == "Completed"
        #Sleep    30  
        Set Browser Implicit Wait    15  
    END       
        
    ${CRUrl}=      Get Location
    
    FOR    ${i}    IN RANGE    1  500 
        Wait Until Page Contains Element    xpath=(//*[text()='Order'])//following::span[1]/span    30         
        ${OrderId}=    Get Text          xpath=(//*[text()='Order'])//following::span[1]/span
        ${OrderValid}=    Get Element Count    xpath=//a[contains(text(),'ON')]
        Exit For Loop If    ${OrderValid} == 1
        Reload Page
        Set Browser Implicit Wait    15    
    END  
    
    Capture Page Screenshot  
    ${CRNumber}=    Get Text    xpath=//*[text()='Subscription Change Request']//following::a[1]
    
    Log To Console       ${CRNumber} 
    Log To Console       ${OrderId}  
    #Sleep    5    
    Wait Until Page Contains Element    xpath=//a[contains(text(),'ON')]    60   
    Click Element    xpath=//a[contains(text(),'ON')] 
    #Sleep    5   
    ${OrderURL}=    Get Location
    
    # Wait Until Page Contains Element     xpath=//span[text()='Cases']    60
    # Click Element                    xpath=//span[text()='Cases'] 
    ${RelateCount}=    Get Element Count    xpath=(//*[@class='column region-main'])/div/div/div/ul/li[2]/a/span[2]
    Run Keyword If    ${RelateCount} == 1    Click Element    xpath=(//*[@class='column region-main'])/div/div/div/ul/li[2]/a/span[2]
    Run Keyword If    ${RelateCount} == 2    Click Element    xpath=(//*[@class='column region-main'])[2]/div/div/div/ul/li[2]/a/span[2]
    Sleep    5 
    Execute JavaScript    window.scrollTo(0,500)
   
    Wait Until Page Contains Element    xpath=(//*[@class='slds-page-header__title listViewTitle slds-text-color--default slds-p-right--x-small slds-truncate'])[4]/a    60   
    #Click Element                    xpath=(//*[@class='slds-page-header__title listViewTitle slds-text-color--default slds-p-right--x-small slds-truncate'])[4]/a
    Sleep    5     
    #Sleep                            5
    Wait Until Page Contains Element    xpath=//*[text()='Termination of Elisa Lankanumero']//preceding::a[1]    60   
    Click Element                    xpath=//*[text()='Termination of Elisa Lankanumero']//preceding::a[1]  
    Sleep                            5
    Capture Page Screenshot    
    
    Execute Javascript    window.open('${OrderURL}') 
    Sleep    4    
    Select Window    url=${OrderURL}
    #Sleep    5 
    FOR    ${i}    IN RANGE    1  500
        Reload Page
        Wait Until Page Contains Element    xpath=(//*[text()='Status'])//following::span[1]    60   
        ${FinalOrderStatus}=    Get Text    xpath=(//*[text()='Status'])//following::span[1]
        Exit For Loop If    "${FinalOrderStatus}" == "Valmis"      
        #Sleep    30
        Set Selenium Implicit Wait    10    
    END 
    
    #Write Excel    C://Users//nikhiran//Desktop//Newlankanumero.xls    ${TEST_NAME}    ${CRNumber}    ${OrderId}    @{LstSubscriberNum}[0]    ${FinalOrderStatus}   
    Capture Page Screenshot 
    Close Browser   