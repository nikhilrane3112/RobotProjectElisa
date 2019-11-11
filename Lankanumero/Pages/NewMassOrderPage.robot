*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary 
Resource   ../Pages/NewCommonPage.robot

*** Keywords ***
Mass Order for add Lankanumero
    Sleep    10    
    Wait Until Page Contains Element    xpath=//*[@class='tabset slds-tabs_card uiTabset--base uiTabset--default uiTabset--dense uiTabset flexipageTabset']/div/ul/li[3]/a/span[2]    60
    Click Element    xpath=//*[@class='tabset slds-tabs_card uiTabset--base uiTabset--default uiTabset--dense uiTabset flexipageTabset']/div/ul/li[3]/a/span[2]  
    Sleep    10     
    #Wait Until Element Is Visible    xpath=(//*[text()='Mass Order Line Items'])[1]    60        
    #Wait Until Page Contains Element    xpath=(//*[text()='Mass Order Line Items'])[1]    60
    Scroll Element Into View    xpath=(//*[text()='Mass Order Line Items'])[1]
    Sleep    12    
    Click Element                    xpath=(//*[text()='Mass Order Line Items'])[1]
    #Sleep    5  
    Wait Until Page Contains Element    xpath=(//*[contains(text(),'MOLI')])    60     
    Capture Page Screenshot    7_MassOrder.png
    ${MACDCount}    Get Element Count    xpath=//*[text()='Lankanumero']//preceding::a[contains(text(),'MOLI')][1]
    Click Element                    xpath=(//*[text()='Lankanumero']//preceding::a[contains(text(),'MOLI')][1])[${MACDCount}+1]
    
    #Sleep    5 
    
Mass Order for Change Phone Number
    Sleep    10
    Wait Until Page Contains Element    xpath=//*[@class='tabset slds-tabs_card uiTabset--base uiTabset--default uiTabset--dense uiTabset flexipageTabset']/div/ul/li[3]/a/span[2]    60
    Click Element    xpath=//*[@class='tabset slds-tabs_card uiTabset--base uiTabset--default uiTabset--dense uiTabset flexipageTabset']/div/ul/li[3]/a/span[2]  
    Sleep    10    
    Scroll Element Into View    xpath=(//*[text()='Mass Order Line Items'])[1]
    Sleep    10    
    Click Element                    xpath=(//*[text()='Mass Order Line Items'])[1]
    #Sleep    5 
    Wait Until Page Contains Element    xpath=//*[text()='Change Phone Number']//preceding::a[contains(text(),'MOLI')][1]    60    
    Capture Page Screenshot    7_MassOrder.png
    ${MACDCount}    Get Element Count    xpath=//*[text()='Change Phone Number']//preceding::a[contains(text(),'MOLI')][1]
    Click Element                    xpath=(//*[text()='Change Phone Number']//preceding::a[contains(text(),'MOLI')][1])[${MACDCount}+1]    
    #Sleep    5 
    
Mass Order for Change Offer
    Sleep    10    
    Wait Until Page Contains Element    xpath=//*[@class='tabset slds-tabs_card uiTabset--base uiTabset--default uiTabset--dense uiTabset flexipageTabset']/div/ul/li[3]/a/span[2]    60
    Click Element    xpath=//*[@class='tabset slds-tabs_card uiTabset--base uiTabset--default uiTabset--dense uiTabset flexipageTabset']/div/ul/li[3]/a/span[2]  
    Sleep    10    
    Scroll Element Into View    xpath=(//*[text()='Mass Order Line Items'])[1]
    Sleep    10    
    Click Element                    xpath=(//*[text()='Mass Order Line Items'])[1]
    #Sleep    5   
    Wait Until Page Contains Element    xpath=//*[text()='Change Offer/Service']//preceding::a[contains(text(),'MOLI')][1]     60   
    Capture Page Screenshot    7_MassOrder.png
    Sleep    5    
    ${MACDCount}    Get Element Count    xpath=//*[text()='Change Offer/Service']//preceding::a[contains(text(),'MOLI')][1]
    Click Element                    xpath=(//*[text()='Change Offer/Service']//preceding::a[contains(text(),'MOLI')][1])[${MACDCount}+1]    
    #Sleep    5 

MassOrder for Restore Subscription
    Sleep    10    
    Wait Until Page Contains Element    xpath=//*[@class='tabset slds-tabs_card uiTabset--base uiTabset--default uiTabset--dense uiTabset flexipageTabset']/div/ul/li[3]/a/span[2]    60
    Click Element    xpath=//*[@class='tabset slds-tabs_card uiTabset--base uiTabset--default uiTabset--dense uiTabset flexipageTabset']/div/ul/li[3]/a/span[2]  
    Sleep    10  
    Scroll Element Into View    xpath=(//*[text()='Mass Order Line Items'])[1]
    Sleep    10    
    Click Element                    xpath=(//*[text()='Mass Order Line Items'])[1]
    #Sleep    5   
    # ${count}=    Get Element Count    //h3[text()='Mass Order Line Items']//following::div[1]/div/a[1]
    # Run Keyword If    ${count} == 1    Click Element    xpath=//h3[text()='Mass Order Line Items']//following::div[1]/div/a[1]
    #Sleep    5    
    Wait Until Page Contains Element    xpath=//*[text()='Restore']//preceding::a[contains(text(),'MOLI')][1]     60   
    Capture Page Screenshot    7_MassOrder.png
    Sleep    5    
    ${MACDCount}    Get Element Count    xpath=//*[text()='Restore']//preceding::a[contains(text(),'MOLI')][1]
    Click Element                    xpath=(//*[text()='Restore']//preceding::a[contains(text(),'MOLI')][1])[${MACDCount}+1]  
    #Sleep    5    
    
MassOrder for Remove Lankanumero
    Sleep    10  
    Wait Until Page Contains Element    xpath=//*[@class='tabset slds-tabs_card uiTabset--base uiTabset--default uiTabset--dense uiTabset flexipageTabset']/div/ul/li[3]/a/span[2]    60
    Click Element    xpath=//*[@class='tabset slds-tabs_card uiTabset--base uiTabset--default uiTabset--dense uiTabset flexipageTabset']/div/ul/li[3]/a/span[2]    
    Sleep    10  
    Scroll Element Into View    xpath=(//*[text()='Mass Order Line Items'])[1]
    Sleep    10    
    Click Element                    xpath=(//*[text()='Mass Order Line Items'])[1]
    #Sleep    5 
    Wait Until Page Contains Element    xpath=(//*[text()='Lankanumero'])//preceding::a[contains(text(),'MOLI')][1]     60   
    Capture Page Screenshot    7_MassOrder.png
    Sleep    5    
    ${MACDCount}    Get Element Count    xpath=(//*[text()='Lankanumero'])//preceding::a[contains(text(),'MOLI')][1]
    Click Element                    xpath=((//*[text()='Lankanumero'])//preceding::a[contains(text(),'MOLI')][1])[${MACDCount}]  
    #${MOUrl}=    Get Location
    #Sleep    5   