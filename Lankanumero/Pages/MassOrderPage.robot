*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary 
Resource   ../Pages/NewCommonPage.robot

*** Keywords ***
MassOrder for add Lankanumero
    Wait Until Page Contains Element    xpath=(//*[text()='Liittyvä'])[2]    60
    Click Element    xpath=(//*[text()='Liittyvä'])[2]       
    Wait Until Page Contains Element    xpath=(//span[text()='Mass Order Line Items'])[1]    60
    Click Element                    xpath=(//span[text()='Mass Order Line Items'])[1]
    #Sleep    5  
    Wait Until Page Contains Element    xpath=(//a[contains(text(),'MOLI')])[4]    60     
    Capture Page Screenshot    7_MassOrder.png
    Click Element                    xpath=(//a[contains(text(),'MOLI')])[4]
    #Sleep    5 
    
MassOrder for Change Phone Number
    Wait Until Page Contains Element    xpath=//*[text()='Related']    60
    Click Element    xpath=//*[text()='Related']     
    Wait Until Page Contains Element    xpath=(//span[text()='Mass Order Line Items'])[1]    60
    Click Element                    xpath=(//span[text()='Mass Order Line Items'])[1]
    #Sleep    5 
    Wait Until Page Contains Element    xpath=//*[text()='Change Phone Number']//following::td[text()='Pending for Submission']//preceding::a[1]    60    
    Capture Page Screenshot    7_MassOrder.png
    Click Element                    xpath=//*[text()='Change Phone Number']//following::td[text()='Pending for Submission']//preceding::a[1]    
    #Sleep    5 
    
MassOrder for Change Offer
    Wait Until Page Contains Element    xpath=//*[text()='Related']    60
    Click Element    xpath=//*[text()='Related']  
    Wait Until Page Contains Element    xpath=(//span[text()='Mass Order Line Items'])[1]    60
    Click Element                    xpath=(//span[text()='Mass Order Line Items'])[1]
    #Sleep    5   
    Wait Until Page Contains Element    xpath=//*[text()='Change Offer/Service']//following::td[text()='Pending for Submission']//preceding::a[1]     60   
    Capture Page Screenshot    7_MassOrder.png
    Click Element                    xpath=//*[text()='Change Offer/Service']//following::td[text()='Pending for Submission']//preceding::a[1]    
    #Sleep    5 

MassOrder for Restore Subscription
    Wait Until Page Contains Element    xpath=(//span[text()='Mass Order Line Items'])[1]    60   
    Click Element                    xpath=(//span[text()='Mass Order Line Items'])[1]
    #Sleep    5   
    ${count}=    Get Element Count    //h3[text()='Mass Order Line Items']//following::div[1]/div/a[1]
    Run Keyword If    ${count} == 1    Click Element    xpath=//h3[text()='Mass Order Line Items']//following::div[1]/div/a[1]
    #Sleep    5    
    Wait Until Page Contains Element    xpath=//*[text()='Restore']//following::td[text()='Pending for Submission']//preceding::a[1]     60   
    Capture Page Screenshot    7_MassOrder.png
    Click Element                    xpath=//*[text()='Restore']//following::td[text()='Pending for Submission']//preceding::a[1]    
    #Sleep    5    
    
MassOrder for Remove Lankanumero
    Wait Until Page Contains Element    xpath=(//span[text()='Mass Order Line Items'])[1]    60
    Click Element                    xpath=(//span[text()='Mass Order Line Items'])[1]
    #Sleep    5 
    Wait Until Page Contains Element    xpath=//*[text()='Lankanumero']//following::td[text()='Pending for Submission']//preceding::a[1]    60
    Capture Page Screenshot    7_MassOrder.png
    Click Element                    xpath=//*[text()='Lankanumero']//following::td[text()='Pending for Submission']//preceding::a[1]
    #${MOUrl}=    Get Location
    #Sleep    5   