*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary 
Library    DatabaseLibrary     
Resource    ../TestUtilities/ExcelOperations.robot    


*** Keywords ***
Open Browser and Maximize window
    Read Data from Excel
    Open Browser                     ${URL}    ${browser}   
    Set Browser Implicit Wait        5
    Maximize Browser Window
    
# Do Login
    # Input Text    name=username    @{Credentials}[0]
    # Input Password    name=pw    @{Credentials}[1]
    # Click Element    name=Login    
    # Sleep   5 
    
Do Login
    Input Text    name=Ecom_User_ID    ${UserName}
    Input Password    name=Ecom_Password    ${Password}
    #Click Button    name=loginButton2
    Click Element    name=loginButton2  
 
Validate Salesforce classic URL
    Sleep    5    
    ${LightURL}=    Get Location
    Sleep    5
    Run Keyword if    "${URL}" != "${LightURL}"    URLCheck  
    Sleep    5 
    
Move to another Account
    Wait Until Page Contains Element    xpath=(//a[@title='Press space bar or Enter key to open'])[2]/b    60
    Click Element    xpath=(//a[@title='Press space bar or Enter key to open'])[2]/b    
    
    Wait Until Element Is Visible    xpath=(//a[text()='Setup'])    60
    Click Element    xpath=(//a[text()='Setup'])    
    Wait Until Page Contains Element    xpath=//*[@class='searchBoxContainer']/input[1]    60
    Input Text    xpath=//*[@class='searchBoxContainer']/input[1]    users
    Click Element    xpath=(//*[text()='Users'])[1]    
    Select From List By Label    id=fcf    Elisa BackOffice Agent
    
    
    Wait Until Page Contains Element    xpath=(//*[text()='Axberg, Jan'])    60
    Click Element    xpath=(//*[text()='Axberg, Jan'])//preceding::a[1]
    ${Lightning}    Get Element Count    xpath=(//*[@class='switch-to-lightning'])
    Run Keyword If    ${Lightning} == 1    Click Element    xpath=(//*[@class='switch-to-lightning'])            

URLCheck
    Click Element    xpath=//div[@class='profileTrigger branding-user-profile bgimg slds-avatar slds-avatar_profile-image-small circular forceEntityIcon']/span 
    Sleep    5       
    Click Element    xpath=//*[text()='Switch to Salesforce Classic']  
    
     
     