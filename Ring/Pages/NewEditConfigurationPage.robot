*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary 
Library    DatabaseLibrary  
Resource   ../Pages/LoginPage.robot
Library    ../ExternalKeywords/UserKeywords.py
Resource    EditConfigFunctionPage.robot

*** Keywords ***
Edit Configuration for Default Values
    #Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60    
     
    Wait Until Page Contains Element    xpath=//div[@id='EditProductDialog']/iframe    60
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe   
    Sleep    10    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60 
    Wait Until Element Is Visible    xpath=(//*[@class='slds-input'])[1]    
    Set Focus To Element    xpath=(//*[@class='slds-input'])[1]
    Sleep    3       
    Input Text    xpath=(//*[@class='slds-input'])[1]    ${SolutionName}
    #Sleep    5  
    Wait Until Element Is Visible    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2]    60    
    Wait Until Page Contains Element    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2]     60       
    Click Element    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2] 
    #Sleep    10 
    Wait Until Element Is Visible    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]    60   
    Wait Until Page Contains Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]     60     
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]    
    Sleep    15  
         
    Wait Until Element Is Visible    xpath=//*[text()='Today']    60
    Set Focus To Element    xpath=//*[text()='Today']
    Click Element    xpath=//*[text()='Today']  
    Sleep    5     
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
    Sleep    10    
    Unselect Frame
    ${NewURL}    Get Location 
    #Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60
    Sleep    5    
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe 
    #Wait Until Page Contains Element    xpath=//div[@id='EditProductDialog']/iframe    60
    Sleep    20    
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    3    
    Set Focus To Element    id=technicalConfigFrame
    Select Frame    id=technicalConfigFrame
    
    Sleep    5    
    Click Element    xpath=//*[@title='Special Numbers']/a  
    Sleep    5    
    Set Focus To Element    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    Select Frame    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    
     # FOR    ${i}    IN RANGE    1  10
        # ${CorporateNumber}=    Get Text    xpath=(//*[@class='select2-selection__rendered'])[${i}]
        # Run Keyword If    "${CorporateNumber}" == "None"   Click Element    xpath=(//span[@class='select2-selection__arrow'])[${i}]   
        # ${count}   Get Element Count    xpath=(//li[@class='select2-results__option'])[1]
        # Run Keyword If    ${count} == 1    Click Element    xpath=(//li[@class='select2-results__option'])[1]                
        # Exit For Loop If    ${i} == 5
        # Sleep    3      
    # END 
    
    Sleep    5     
    Click Element    id=saveAllTabs
    Unselect Frame
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
    
Edit Product Configuration for Ring Premium
    Solution Name
    PSTN Number Range
    Date
    Admin Details
    Standard Special Numbers
    
Edit Product Configuration for PSTN
    Solution Name
    PSTN Number Range
      
    Wait Until Element Is Visible    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2]    60    
    Wait Until Page Contains Element    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2]     60       
    Click Element    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2] 
    #Sleep    10 
    Wait Until Element Is Visible    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[3]    60   
    Wait Until Page Contains Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[3]     60     
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[3]    
    Sleep    15  
    
    Date
    Admin Details
    Standard Special Numbers
    
Edit Product Configuration for Extension
    Solution Name
    PSTN Number Range
    Select From List By Value    xpath=//*[@id='Ring_Solution:General_Information:Extension_Size_0']    10000
    Sleep    7    
    Click Element    id=extn_1 
    Click Element    xpath=//*[text()='Continue']       
    Sleep    15 
    
    Date
    Admin Details
    Standard Special Numbers
    
Edit Product Configuration for Ring Light
    Solution Name
    PSTN Number Range
    Select From List By Value    xpath=//*[@id='Ring_Solution:General_Information:Extension_Size_0']    100000
    Sleep    7    
    Click Element    id=extn_1 
    Click Element    xpath=//*[text()='Continue']       
    Sleep    15 
    Date
    Wait Until Page Contains Element    xpath=//*[@name='User_Service_Levels_0']     60
    ${ServiceLevel}=    Get Text    xpath=//*[@name='User_Service_Levels_0']
    Click Element    xpath=//*[@name='User_Service_Levels_0']    
    Click Element    xpath=//*[@class='responstable']/tbody/tr[4]/td/input
    Wait Until Page Contains Element    xpath=//*[@value='Elisa Ring Light']     60
    Click Element    xpath=//*[@value='Elisa Ring Light']    
    Click Element    xpath=//*[text()='Continue'] 
    Sleep    5    
    Select From List By Value     xpath=//*[@name='Centile_Language_0']    FI
    Sleep    5    
    Select From List By Value    xpath=//*[@name='Calls_received_0']    False
    Sleep    5       
    Admin Details
    Standard Special Numbers
    
Edit Product Configuration for Ring Service
    Solution Name
    PSTN Number Range
    Select From List By Value    xpath=//*[@id='Ring_Solution:General_Information:Extension_Size_0']    1000000
    Sleep    7    
    Click Element    id=extn_1 
    Click Element    xpath=//*[text()='Continue']       
    Sleep    15 
    Date
    Wait Until Page Contains Element    xpath=//*[@name='User_Service_Levels_0']     60
    ${ServiceLevel}=    Get Text    xpath=//*[@name='User_Service_Levels_0']
    Click Element    xpath=//*[@name='User_Service_Levels_0']    
    Click Element    xpath=//*[@class='responstable']/tbody/tr[4]/td/input
    Wait Until Page Contains Element    xpath=//*[@value='Elisa Ring (Subscription)']    60
    Click Element    xpath=//*[@value='Elisa Ring (Subscription)']   
    Click Element    xpath=//*[text()='Continue'] 
    Sleep    5    
    Select From List By Value     xpath=//*[@name='Centile_Language_0']    SV
    Sleep    5    
    Select From List By Value    xpath=//*[@name='Calls_not_answered_0']    False
    Sleep    5       
    Admin Details
    Standard Special Numbers
    
Edit Product Configuration for AdminCheck
    Solution Name
    PSTN Number Range
    Date
    
    Wait Until Page Contains Element    id=technicalConfigFrame    60
    Set Focus To Element    id=technicalConfigFrame
    Select Frame    id=technicalConfigFrame
    Sleep    5      
    Set Focus To Element    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    Select Frame    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe 
    FOR    ${data}    IN RANGE    1  11 
        Input Text    xpath=(//*[contains(@data-id,'User First Name')])[${data}]    @{FirstnameList}[${data}]
        Input Text    xpath=(//*[contains(@data-id,'User Last Name')])[${data}]    @{LastnameList}[${data}]
        Input Text    xpath=(//*[contains(@data-id,'User ID')])[${data}]    @{UserIdList}[${data}]
        Input Text    xpath=(//*[contains(@data-id,'Mobile Number')])[${data}]    @{MobileList}[${data}]
        Exit For Loop If    ${data} == 10
        Click Element    xpath=//*[contains(@id,'addRowBtn')]    
    END    
    Click Element    xpath=(//*[contains(@data-id,'Mobile Number')])//preceding::button[5] 
    Sleep    5    
    Unselect Frame
    
    Standard Special Numbers
    
Edit Product Configuration for All Services
    Solution Name
    PSTN Number Range
    Date
    
    Wait Until Page Contains Element    xpath=//*[@name='User_Service_Levels_0']     60
    ${ServiceLevel}=    Get Text    xpath=//*[@name='User_Service_Levels_0']
    Click Element    xpath=//*[@name='User_Service_Levels_0']
    Wait Until Page Contains Element    xpath=//*[@value='Elisa Ring (Subscription)']     60
    Click Element    xpath=//*[@value='Elisa Ring (Subscription)'] 
    Wait Until Page Contains Element    xpath=//*[@value='Elisa Ring Light']     60
    Click Element    xpath=//*[@value='Elisa Ring Light']
    Click Element    xpath=//*[text()='Continue'] 
    Sleep    5    
    Admin Details
    Standard Special Numbers
    
Edit Confiuration Page with Solution Name Validations
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    5    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60 
    Set Focus To Element    xpath=(//*[@class='slds-input'])[1]
    Sleep    3   
    ##Capital Letter Validation 
    Input Text    xpath=(//*[@class='slds-input'])[1]    Nikhil
    Date
    # Input Text    xpath=(//*[@class='slds-input'])[1]    NikHil
    # Input Text    xpath=(//*[@class='slds-input'])[1]    NIKHIL
    ##Length Validation
    #Input Text    xpath=(//*[@class='slds-input'])[1]    ni
    ##Special Character Validation
    #Input Text    xpath=(//*[@class='slds-input'])[1]    @ikhil    
    Capture Page Screenshot    SolutionName.png
    Sleep    5
    
Edit Confiuration Page with UserId Validations
    Solution Name
    PSTN Number Range
    Date
    
    Set Focus To Element    id=technicalConfigFrame
    Select Frame    id=technicalConfigFrame
    Sleep    5      
    Set Focus To Element    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    Select Frame    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe 
    Input Text    xpath=(//*[contains(@data-id,'User First Name')])    ${FirstName}
    Input Text    xpath=(//*[contains(@data-id,'User Last Name')])    ${LastName}
    # Below 8 digit validation
    Input Text    xpath=(//*[contains(@data-id,'User ID')])    nikhi
    Click Element    xpath=(//*[contains(@data-id,'Mobile Number')])   
    #Input Text    xpath=(//*[contains(@data-id,'Mobile Number')])    ${Mobile}
    Capture Page Screenshot    UserId.png
    Click Element    xpath=(//*[contains(@data-id,'Mobile Number')])//preceding::button[5] 
    Sleep    5    
    Unselect Frame
    
Edit Confiuration Page with Special numbers Validation
    Solution Name
    PSTN Number Range
    Date
    Admin Details
    Sleep    5    
    Select Frame    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe 
    Wait Until Page Contains Element    xpath=//div[@id='EditProductDialog']/iframe    60
    
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    3    
    Set Focus To Element    id=technicalConfigFrame
    Select Frame    id=technicalConfigFrame
    
    Sleep    5    
    Click Element    xpath=//*[text()='Standard Special Numbers']  
    Sleep    5    
    Set Focus To Element    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    Select Frame    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    
    FOR    ${i}    IN RANGE    1  10
        ${CorporateNumber}=    Get Text    xpath=(//*[@class='select2-selection__rendered'])[${i}]
        ${CorporateNumber1}=    Get Text    xpath=(//*[@class='select2-selection__rendered'])[1]
        Run Keyword If    "${CorporateNumber}" == "None"   Click Element    xpath=(//span[@class='select2-selection__arrow'])[${i}]   
        ${count}   Get Element Count    xpath=(//li[@class='select2-results__option'])[1]
        Run Keyword If    ${count} == 1    Click Element    xpath=//div[text()='${CorporateNumber1}']        
        #Run Keyword If    ${count} == 1    Click Element    xpath=(//ul[@class='select2-results__options'])//following::div[text()='${CorporateNumber1} '] 
        Capture Page Screenshot    SpecialNum.png               
        Exit For Loop If    ${i} == 5
        Sleep    2      
    END 
    
Edit Confiuration Page manual Range
    Solution Name
    Wait Until Element Is Visible    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2]    60    
    Wait Until Page Contains Element    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2]     60       
    Click Element    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2] 
    Set Browser Implicit Wait    5
    Wait Until Page Contains Element    xpath=//*[text()='Olemassa oleva numeroavaruus']     60     
    Click Element    xpath=//*[text()='Olemassa oleva numeroavaruus']
    Set Browser Implicit Wait    5
    Date
    Wait Until Page Contains Element    name=startNum    60
    Input Text    name=startNum    0203459260  
    Wait Until Page Contains Element    name=endNum    60
    Input Text    name=endNum    0203459269
    Click Element    name=isportIn 
    sleep    5  
    Wait Until Page Contains Element    id=continueButton    60 
    Click Element    id=continueButton  
    Execute Javascript    window.scrollTo(0,100)
    Set Browser Implicit Wait    5
    Sleep    15    
    Wait Until Page Contains Element    xpath=//*[@name='Power_of_Attorney_0']//following::span[1]    60        
    Click Element    xpath=//*[@name='Power_of_Attorney_0']//following::span[1]   
    Set Browser Implicit Wait    3 
    Admin Details
    Standard Special Numbers
        