*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary 
Library    DatabaseLibrary  
Resource   ../Pages/LoginPage.robot
Resource   EditConfigFunctionPage.robot
Library    ../ExternalKeywords/UserKeywords.py

*** Keywords ***
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
    Click Element    xpath=//*[text()='Validate and save'] 
    Unselect Frame
    Unselect Frame
    Unselect Frame
    Sleep    3    
    
Edit Confiuration Page with Special numbers Validation
    Solution Name
    PSTN Number Range
    Date
    Admin Details
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
    # Sleep    5     
    # Click Element    xpath=//*[text()='Extension Number']//preceding::button[4]
    # Unselect Frame
    # Unselect Frame
    # Sleep    5    
    
    # Select Frame    xpath=//div[@id='EditProductDialog']/iframe
    # Sleep    3  
    # Click Button    xpath=//button[text()='Finish']  
    # Unselect Frame 
    # Sleep    30   

Edit Confiuration Page manual Range
    Solution Name
    Wait Until Page Contains Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1]     60       
    Click Element    xpath=//*[text()='PSTN Number Range']//following::span[@class='select2-chosen'][1]
    Set Browser Implicit Wait    5
    Wait Until Page Contains Element    xpath=//*[text()='Olemassa oleva numeroavaruus']     60     
    Click Element    xpath=//*[text()='Olemassa oleva numeroavaruus']
    Set Browser Implicit Wait    5
    Wait Until Page Contains Element    name=startNum    60
    Input Text    name=startNum    0203459230  
    Wait Until Page Contains Element    name=endNum    60
    Input Text    name=endNum    0203459239
    Click Element    name=isportIn 
    sleep    5  
    Wait Until Page Contains Element    xpath=(//button[text()='Save'])[1]    60 
    Click Element    xpath=(//button[text()='Save'])[1]  
    Execute Javascript    window.scrollTo(0,100)
    Set Browser Implicit Wait    5
    Sleep    15    
    Wait Until Page Contains Element    xpath=//*[@name='Power_of_Attorney_0']//following::span[1]    60        
    Click Element    xpath=//*[@name='Power_of_Attorney_0']//following::span[1]   
    Set Browser Implicit Wait    3 
    Admin Details
    Standard Special Numbers
        
    
    
