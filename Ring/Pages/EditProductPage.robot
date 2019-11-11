*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary 
Library    DatabaseLibrary  
Resource   ../Pages/LoginPage.robot
Library    ../ExternalKeywords/UserKeywords.py

*** Keywords ***
Edit Product Configuration 
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
    Unselect Frame
    # Unselect Frame
    # Unselect Frame
    Sleep    3   
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60
    Select Frame    xapth=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe 
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
    Select Frame    xapth=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
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
    Select Frame    xapth=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    3  
    Click Button    xpath=//button[text()='Valmis']  
    Unselect Frame 
    Sleep    30   
    

Edit Product Configuration basic
    Sleep    25
    Wait Until Element Is Visible    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60       
    Wait Until Page Contains Element    xpath=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe    60
    Select Frame    xapth=//*[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Wait Until Page Contains Element    xpath=//div[@id='EditProductDialog']/iframe    60
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    #Sleep    5    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60 
    Set Focus To Element    xpath=(//*[@class='slds-input'])[1]
    #Sleep    3    
    Input Text    xpath=(//*[@class='slds-input'])[1]    ${SolutionName}
    #Sleep    5  
    Wait Until Element Is Visible    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2]    60    
    Wait Until Page Contains Element    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2]     60       
    Click Element    xpath=//*[@id='s2id_Ring_Solution:General_Information:PSTN_Range_Lookup_0']/a/span[2] 
    #Sleep    10 
    Wait Until Element Is Visible    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]    60   
    Wait Until Page Contains Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]     60     
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]    
    #Sleep    15  
    Wait Until Element Is Visible    xpath=//*[text()='Today']    60
    Wait Until Page Contains Element    xpath=//*[text()='Today']    60   
    Click Element    xpath=//*[text()='Today']  
    Sleep    5     
    
    Edit Product Configuration
    
Edit Product Configuration for PSTN
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    5 
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60      
    Input Text    xpath=(//*[@class='slds-input'])[1]    ${SolutionName}
    Sleep    5    
    Click Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1] 
    Sleep    10     
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2] 
    Sleep    10    
    Click Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1] 
    Sleep    10 
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[3]   
    Sleep    15  
    Select From List By Value    xpath=//*[text()='Extension Length']//following::select[1]    1000
    Sleep    7    
    Click Element    id=extn_1 
    Click Element    xpath=//*[text()='Continue']       
    Sleep    15        
    Click Element    xpath=//*[text()='Today']  
    Sleep    5     
    Set Focus To Element    id=technicalConfigFrame
    Select Frame    id=technicalConfigFrame
    Sleep    5    
    Set Focus To Element    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    Select Frame    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe 
    Input Text    xpath=(//*[contains(@data-id,'User First Name')])    ${FirstName}
    Input Text    xpath=(//*[contains(@data-id,'User Last Name')])    ${LastName}
    Input Text    xpath=(//*[contains(@data-id,'User ID')])    ${UserId}
    Input Text    xpath=(//*[contains(@data-id,'Mobile Number')])    ${Mobile}
    Click Element    xpath=//*[text()='Validate and save'] 
    Unselect Frame
    Unselect Frame
    Unselect Frame
    Sleep    3    
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
        Run Keyword If    "${CorporateNumber}" == "None"   Click Element    xpath=(//span[@class='select2-selection__arrow'])[${i}]   
        ${count}   Get Element Count    xpath=(//li[@class='select2-results__option'])[1]
        Run Keyword If    ${count} == 1    Click Element    xpath=(//li[@class='select2-results__option'])[1]                
        Exit For Loop If    ${i} == 5
        Sleep    3      
    END 
    Sleep    5     
    Click Element    xpath=//*[text()='Validate and save']
    Unselect Frame
    Unselect Frame
    Sleep    5    
    
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    3  
    Click Button    xpath=//button[text()='Finish']  
    Unselect Frame 
    Sleep    30   
    
Edit Product Configuration for Extension
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    5    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60 
    Input Text    xpath=(//*[@class='slds-input'])[1]    ${SolutionName}
    Sleep    5   
    Wait Until Page Contains Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1]    60  
    Click Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1] 
    Sleep    10     
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]           
    Sleep    15  
    Select From List By Value    xpath=//*[@id='Ring_Solution:General_Information:Extension_Size_0']    10000
    Sleep    7    
    Click Element    id=extn_1 
    Click Element    xpath=//*[text()='Continue']       
    Sleep    15  
    Click Element    xpath=//*[text()='Today']  
    Sleep    5         
    Edit Product Configuration   

Edit Product Configuration for Ring Light
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    5    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60 
    Set Focus To Element    xpath=(//*[@class='slds-input'])[1]
    Sleep    3
    Input Text    xpath=(//*[@class='slds-input'])[1]    ${SolutionName}
    Sleep    5    
    Wait Until Page Contains Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1]    60
    Click Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1] 
    Sleep    10   
    Wait Until Page Contains Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[1]    60
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[1]    
    Sleep    10   
    Select From List By Value    xpath=//*[text()='Extension Length']//following::select[1]    100000
    Sleep    7    
    Click Element    id=extn_1 
    Click Element    xpath=//*[text()='Continue']       
    Sleep    15 
    Click Element    xpath=//*[text()='Today']  
    Sleep    5    
    Wait Until Page Contains Element    xpath=//*[@name='User_Service_Levels_0']     60
    ${ServiceLevel}=    Get Text    xpath=//*[@name='User_Service_Levels_0']
    Click Element    xpath=//*[@name='User_Service_Levels_0']    
    Click Element    xpath=//*[@class='responstable']/tbody/tr[4]/td/input
    Wait Until Page Contains Element    xpath=//*[text()='Elisa Ring Light ']/input     60
    Click Element    xpath=//*[text()='Elisa Ring Light ']/input    
    Click Element    xpath=//*[text()='Continue'] 
    Sleep    5    
    Select From List By Value     xpath=//*[text()='Solution Language']//following::select[1]    FI
    Sleep    5    
    Select From List By Value    xpath=//*[@name='Calls_received_0']    False
    Sleep    5        
    Edit Product Configuration

Edit Product Configuration for Ring Service      
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    5    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60 
    Set Focus To Element    xpath=(//*[@class='slds-input'])[1]
    Sleep    3
    Input Text    xpath=(//*[@class='slds-input'])[1]    ${SolutionName}
    Sleep    5    
    Wait Until Page Contains Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1]    60
    Click Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1] 
    Sleep    10   
    Wait Until Page Contains Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[1]    60
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[1]    
    Sleep    10  
    Select From List By Value    xpath=//*[text()='Extension Length']//following::select[1]    1000000
    Sleep    7    
    Click Element    id=extn_1 
    Click Element    xpath=//*[text()='Continue']       
    Sleep    15 
    Click Element    xpath=//*[text()='Today']    
    Sleep    5    
    Wait Until Page Contains Element    xpath=//*[@name='User_Service_Levels_0']     60
    ${ServiceLevel}=    Get Text    xpath=//*[@name='User_Service_Levels_0']
    Click Element    xpath=//*[@name='User_Service_Levels_0']    
    Click Element    xpath=//*[@class='responstable']/tbody/tr[4]/td/input
    Wait Until Page Contains Element    xpath=//*[text()='Elisa Ring (Subscription) ']/input     60
    Click Element    xpath=//*[text()='Elisa Ring (Subscription) ']/input    
    Click Element    xpath=//*[text()='Continue'] 
    Sleep    5    
    Select From List By Value     xpath=//*[text()='Solution Language']//following::select[1]    SV
    Sleep    5    
    Select From List By Value    xpath=//*[@name='Calls_not_answered_0']    False
    Sleep    5   
    Edit Product Configuration
    
Edit Product Configuration for All Services
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    5    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60 
    Set Focus To Element    xpath=(//*[@class='slds-input'])[1]
    Sleep    3    
    Input Text    xpath=(//*[@class='slds-input'])[1]    ${SolutionName}
    Sleep    5    
    Click Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1] 
    Sleep    10    
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[1]    
    Sleep    10  
    Select From List By Value    xpath=//*[text()='Extension Length']//following::select[1]    100000
    Sleep    7    
    Click Element    id=extn_1 
    Click Element    xpath=//*[text()='Continue']       
    Sleep    15 
    Click Element    xpath=//*[text()='Today']    
    Sleep    5    
    Wait Until Page Contains Element    xpath=//*[@name='User_Service_Levels_0']     60
    ${ServiceLevel}=    Get Text    xpath=//*[@name='User_Service_Levels_0']
    Click Element    xpath=//*[@name='User_Service_Levels_0']
    Wait Until Page Contains Element    xpath=//*[text()='Elisa Ring (Subscription) ']/input     60
    Click Element    xpath=//*[text()='Elisa Ring (Subscription) ']/input 
    Wait Until Page Contains Element    xpath=//*[text()='Elisa Ring Light ']/input     60
    Click Element    xpath=//*[text()='Elisa Ring Light ']/input 
    Click Element    xpath=//*[text()='Continue'] 
    Sleep    5    
    
    Edit Product Configuration
       

Edit Product Configuration for AdminCheck
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    5 
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60      
    Input Text    xpath=(//*[@class='slds-input'])[1]    ${SolutionName}
    Sleep    5    
    Click Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1] 
    Sleep    10     
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[1] 
    Sleep    15    
    # Click Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1] 
    # Sleep    15 
    # Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[2]   
    # Sleep    15  
    #Select From List By Value    xpath=//*[text()='Extension Length']//following::select[1]    1000
    #Sleep    7    
    # Click Element    id=extn_1 
    # Click Element    xpath=//*[text()='Continue']       
    # Sleep    15  
    Wait Until Page Contains Element    xpath=//*[text()='Today']     60         
    Click Element    xpath=//*[text()='Today']  
    Sleep    5     
    Set Focus To Element    id=technicalConfigFrame
    Select Frame    id=technicalConfigFrame
    Sleep    5    
    Set Focus To Element    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe
    Select Frame    xpath=//*[contains(@class,'slds-tabs--default__content loaderGif slds-show')]/iframe 
 
    # FOR    ${data}    IN RANGE    1  11 
        # Input Text    xpath=(//*[contains(@data-id,'User First Name')])[${data}]    @{FirstName1}[${data}]
        # Input Text    xpath=(//*[contains(@data-id,'User Last Name')])[${data}]    @{LastName1}[${data}]
        # Input Text    xpath=(//*[contains(@data-id,'User ID')])[${data}]    @{UserId1}[${data}]
        # Input Text    xpath=(//*[contains(@data-id,'Mobile Number')])[${data}]    @{Mobile1}[${data}]
        # Exit For Loop If    ${data} == 10
        # Click Element    xpath=//*[contains(@id,'addRowBtn')]    
    # END    
    Sleep    5
    Wait Until Page Contains Element    xpath=//*[text()='Validate and save']    60            
    Click Element    xpath=//*[text()='Validate and save'] 
    Unselect Frame
    Unselect Frame
    Unselect Frame
    Sleep    3    
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    3    
    Set Focus To Element    id=technicalConfigFrame
    Select Frame    id=technicalConfigFrame
    
    Sleep    5 
    Wait Until Page Contains Element    xpath=//*[text()='Standard Special Numbers']    60   
    Click Element    xpath=//*[text()='Standard Special Numbers']  
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
    Wait Until Page Contains Element    xpath=//*[text()='Extension Number']//preceding::button[4]    60        
    Click Element    xpath=//*[text()='Extension Number']//preceding::button[4]
    Unselect Frame
    Unselect Frame
    Sleep    5    
    
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    3  
    Wait Until Page Contains Element    xpath=//button[text()='Finish']    60   
    Click Button    xpath=//button[text()='Finish']  
    Unselect Frame 
    Sleep    30    
    

Edit Product Configuration for Finish Lanuage 
    Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    Sleep    5    
    Wait Until Page Contains Element    xpath=(//*[@class='slds-input'])[1]    60 
    Input Text    xpath=(//*[@class='slds-input'])[1]    ${SolutionName}
    Sleep    5    
    Click Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1] 
    Sleep    10    
    Click Element    xpath=(//*[@class='select2-results-dept-0 select2-result select2-result-selectable'])[1]    
    Sleep    15  
    Click Element    xpath=//*[text()='Today']  
    Sleep    5    
    Wait Until Page Contains Element    xpath=//*[@name='User_Service_Levels_0']     60
    ${ServiceLevel}=    Get Text    xpath=//*[@name='User_Service_Levels_0']
    Click Element    xpath=//*[@name='User_Service_Levels_0']    
    Click Element    xpath=//*[@class='responstable']/tbody/tr[4]/td/input
    Wait Until Page Contains Element    xpath=//*[text()='Elisa Ring Light ']/input     60
    Click Element    xpath=//*[text()='Elisa Ring Light ']/input    
    Click Element    xpath=//*[text()='Continue'] 
    Sleep    5    
    Edit Product Configuration
  