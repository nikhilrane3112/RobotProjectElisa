*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary 
Library    DatabaseLibrary  
Resource   ../Pages/LoginPage.robot
Library    ../ExternalKeywords/UserKeywords.py

*** Keywords ***
Solution Name
    Wait Until Page Contains Element    xpath=//div[@id='EditProductDialog']/iframe    60
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe   
    Sleep    10    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60 
    Wait Until Element Is Visible    xpath=(//*[@class='slds-input'])[1]    
    Set Focus To Element    xpath=(//*[@class='slds-input'])[1]
    Sleep    3       
    Input Text    xpath=(//*[@class='slds-input'])[1]    ${SolutionName}
    
PSTN Number Range
    Wait Until Element Is Visible    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2]    60    
    Wait Until Page Contains Element    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2]     60       
    Click Element    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2] 
    #Sleep    10 
    Wait Until Element Is Visible    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]    60   
    Wait Until Page Contains Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]     60     
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]    
    Sleep    15   
    
Date
    Wait Until Element Is Visible    xpath=//*[text()='Today']    60
    Set Focus To Element    xpath=//*[text()='Today']
    Click Element    xpath=//*[text()='Today']  
    Sleep    5
    
Service Level-Elisa Ring Premium
    Wait Until Page Contains Element    xpath=//*[@name='User_Service_Levels_0']     60
    ${ServiceLevel}=    Get Text    xpath=//*[@name='User_Service_Levels_0']
    Click Element    xpath=//*[@name='User_Service_Levels_0']  
 
Admin Details
    Wait Until Page Contains Element    id=technicalConfigFrame    60
    Set Focus To Element    id=technicalConfigFrame
    Select Frame    id=technicalConfigFrame
    Sleep    5      
    Set Focus To Element    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    Select Frame    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe 
    Input Text    xpath=(//*[contains(@data-id,'User First Name')])    ${FirstName}
    Input Text    xpath=(//*[contains(@data-id,'User Last Name')])    ${LastName}
    Input Text    xpath=(//*[contains(@data-id,'User ID')])    ${UserId}
    Input Text    xpath=(//*[contains(@data-id,'Mobile Number')])    ${Mobile}
    Click Element    xpath=(//*[contains(@data-id,'Mobile Number')])//preceding::button[5] 
    Sleep    5    
    Unselect Frame
    
Standard Special Numbers
    Sleep    5    
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe 
    Wait Until Page Contains Element    xpath=//div[@id='EditProductDialog']/iframe    60
        
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    3    
    Set Focus To Element    id=technicalConfigFrame
    Select Frame    id=technicalConfigFrame
    
    Sleep    5    
    Click Element    xpath=//*[@title='Special Numbers']/a  
    Sleep    5    
    Set Focus To Element    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    Select Frame    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    
    FOR    ${i}    IN RANGE    1  10
        Wait Until Page Contains Element    xpath=(//*[@class='select2-selection__rendered'])[${i}]    60
        ${CorporateNumber}=    Get Text    xpath=(//*[@class='select2-selection__rendered'])[${i}]
        Run Keyword If    "${CorporateNumber}" == "None"   Click Element    xpath=(//span[@class='select2-selection__arrow'])[${i}]   
        ${count}   Get Element Count    xpath=(//li[@class='select2-results__option'])[1]
        Run Keyword If    ${count} == 1    Click Element    xpath=(//li[@class='select2-results__option'])[1]                
        Exit For Loop If    ${i} == 5
        #Sleep    3      
    END 
    
    Sleep    5     
    Click Element    id=saveAllTabs
    Unselect Frame
    
    Sleep    5  
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    5  
    Set Focus To Element    id=technicalConfigFrame
    Select Frame    id=technicalConfigFrame
    Sleep    5  
    Click Element    xpath=//*[@title='Admin Details']/a 
    Sleep    5        
    Set Focus To Element    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    Select Frame    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe 
    Sleep    3    
    Click Element    xpath=(//*[contains(@data-id,'Mobile Number')])//preceding::button[5]
    Unselect Frame  
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Wait Until Page Contains Element    xpath=//div[@id='EditProductDialog']/iframe    60
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    3  
    Click Element    xpath=//*[@class='slds-button slds-button--brand']     
    Unselect Frame 
    Sleep    30   
    
    
