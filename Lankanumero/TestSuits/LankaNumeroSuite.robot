*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary  


*** Variables ***
${browser}        Chrome
${URL}            https://elisa--uat.cs107.my.salesforce.com/home/home.jsp
@{Credentials}    ext-nikhil.rane@elisa.fi    Apple@1994
${SubscriberNum}    SUB000600955
${FixedLineNum}    0908897610   
 
*** Test Cases ***
TC_001_Add_LankaNumero
    Open Browser                     ${URL}    ${browser}  
    Set Browser Implicit Wait        5
    Maximize Browser Window
    Do Login
    Sleep                            5  
    ${LightURL}=    Get Location
    Sleep    5
    Run Keyword if    "${URL}" != "${LightURL}"    URLCheck 
    
    Input Text                       id=phSearchInput     ${SubscriberNum}
    Click Element                    id=phSearchButton      
    Sleep                            3 
    Wait Until Element Is Visible    xpath=//*[text()='Active']//preceding::a[2]    60 
    Click Element                    xpath=//*[text()='Active']//preceding::a[2]  
    Click Element                    xpath=//span[text()='Subscription Change Requests (Subscription)']
    Click Element                    xpath=//*[@value='New Subscription Change Request']  
    Sleep                            25       
    
    Click Element                    xpath=//*[text()='Lankanumero'] 
    ${title}=    Get Title 
    Log To Console                   ${title}    
    Select Frame                     id=screenFlowIframe
    Sleep                            5    
    Select Frame                     id=technicalConfigFrame
    Wait Until Element Is Visible    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero details']    60
    #Execute Javascript    window.document.getElementsByClassName(' ext-strict')[0].scrollIntoView(true);
    Click Element                    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero details']
    Sleep                            3      
    Select Frame                     xpath=//div[@class='slds-tabs--default__content loaderGif slds-show']/iframe
    Input Text                       xpath=//*[@data-label='Fixed Line Number']/div/input    ${FixedLineNum}
    Click Button                     xpath=//*[text()='Validate and save'] 
    Sleep                            2       
    Unselect Frame
    Sleep                            3    
    Unselect Frame
    Sleep                            2    
    Unselect Frame
    Sleep                            2
    Select Frame                     id=screenFlowIframe
    Click Button                     xpath=(//*[text()='Finish'])[1] 
    Unselect Frame  
    Sleep     10
    Wait Until Element Is Visible    xpath=(//span[@class='fieldLabel'])[1]//following::a[1] 
    Click Element                    xpath=(//span[@class='fieldLabel'])[1]//following::a[1]
    Sleep                            5     
    Click Element                    xpath=(//span[text()='Mass Order Line Items'])[1]
    Sleep    5 
    

    #${MassOrderCount}=    Get Element Count    xpath=xpath=//a[contains(text(),'MOLI')]   
    Click Element                    xpath=(//a[contains(text(),'MOLI')])
    #${MOUrl}=    Get Location
    Sleep    5   
     
    FOR    ${i}    IN RANGE    1  500
        ${Status}=    Get Text    id=00N0J00000A6AeY_ileinner
        Exit For Loop If    "${Status}" == "Completed"
        Reload Page
        Sleep    60    
    END   
    Capture Page Screenshot    
    ${CRUrl}=      Get Location
    ${CRNumber}=    Get Text    xpath=//div[@id='CF00N0J00000A6AeZ_ileinner']/a
    ${OrderId}=    Get Text          xpath=//div[@id='00N0J00000A6AeT_ileinner']/a
    Log To Console       ${CRNumber} 
    Log To Console                   ${OrderId}  
    Sleep    5    
    Click Element    xpath=//div[@id='00N0J00000A6AeT_ileinner']/a  
    Sleep    5   
    ${OrderURL}=    Get Location
    Click Element                    xpath=//span[text()='Cases'] 
    Sleep                            5
    Click Element                    xpath=//*[@class='dataRow even last first']/th/a  
    Sleep                            5
    Click Element                    xpath=//*[@value='Close Case']    
    Sleep                            5
    Select From List By Value        name=cas7    Finalize task and release the order to fulfillment
    Select From List By Value        name=cas6    User didn't attend training
    Select From List By Value        name=00N2000000A5Esq    NUHA 
    Sleep                            10    
    Click Element                    xpath=//input[@name='save']   
    Sleep                            5   
    Execute Javascript    window.open('${OrderURL}') 
    Sleep    4    
    Select Window    url=${OrderURL}
    Sleep    5   
    
    FOR    ${i}    IN RANGE    1  500
        ${FinalOrderStatus}=    Get Text    id=00N20000009xGEP_ileinner
        Exit For Loop If    "${FinalOrderStatus}" == "Completed"
        Reload Page
        Sleep    60    
    END 
     
    Capture Page Screenshot    
    Close Window
    # Sleep                            5    
    # ${CRUrl}=      Get Location 
    # Sleep                            40  
    # Reload Page
    # Sleep                            5
    # Click Element                    xpath=//td[@class='data2Col inlineEditLock']/div/a
    # Sleep                            5
    # ${MainUrl}=    Get Location
    # Click Element                    xpath=//span[text()='Cases'] 
    # Sleep                            5
    # Click Element                    xpath=//*[@class='dataRow even last first']/th/a  
    # Sleep                            5
    # Click Element                    xpath=//*[@value='Close Case']    
    # Sleep                            5
    # Select From List By Value        name=cas7    Finalize task and release the order to fulfillment
    # Select From List By Value        name=cas6    User didn't attend training
    # Select From List By Value        name=00N2000000A5Esq    NUHA 
    # Sleep                            10    
    # Click Element                    xpath=//input[@name='save']   
    # Sleep                            5    
    # Execute Javascript               window.open('${MainUrl}') 
    Execute Javascript               window.open('${CRUrl}') 
    Sleep    4    
    Select Window    url=${CRUrl}
    Sleep    5 
    Capture Page Screenshot    
    
TC_002_ChangePhoneNumber
    ReusableFlow
    Wait Until Element Is Enabled    xpath=//span[text()='Change Phone Number']    60
    Click Element                    xpath=//span[text()='Change Phone Number']
    Sleep    10 
    Select Frame    id=screenFlowIframe
    Sleep    3    
    Select Frame    id=technicalConfigFrame
    Sleep    3     
    click Element    xpath=//*[text()='Number details'] 
    Select Frame    xpath=//*[@class='slds-tabs--default__content loaderGif slds-show']/iframe   
    Click Element    xpath=//*[text()='Validate and save'] 
    Unselect Frame
    Unselect Frame
    Unselect Frame
    Sleep    3    
    Select Frame    id=screenFlowIframe
    Sleep    5    
    Select Frame    id=technicalConfigFrame
    Sleep    5   
    Click Element    xpath=//*[text()='Directory details']
    Select Frame    xpath=//*[@class='slds-tabs--default__content loaderGif slds-show']/iframe   
    Click Element    xpath=//*[text()='Validate and save'] 
    Unselect Frame
    Unselect Frame
    Unselect Frame  
    Sleep    3    
    # Select Frame    id=screenFlowIframe
    # Sleep    3    
    # Select Frame    id=technicalConfigFrame
    # Sleep    3   
    # Click Element    xpath=//*[text()='Port In Details']
    # Select Frame    xpath=//*[@class='slds-tabs--default__content loaderGif slds-show']/iframe   
    # Click Element    xpath=//*[text()='Port In Details'] 
    # Unselect Frame
    # Unselect Frame
    # Unselect Frame      
    
    Sleep    3    
    Select Frame    id=screenFlowIframe
    Click Element    xpath=//*[text()='Finish']
    Unselect Frame
    
    Wait Until Element Is Visible    xpath=(//span[@class='fieldLabel'])[1]//following::a[1] 
    Click Element                    xpath=(//span[@class='fieldLabel'])[1]//following::a[1]
    Sleep                            5     
    Click Element                    xpath=(//span[text()='Mass Order Line Items'])[1]
    Sleep    5   
    Click Element                    xpath=//*[text()='Change Phone Number']//preceding::a[1]    
    Sleep    5    
         
     FOR    ${i}    IN RANGE    1  500
        ${Status}=    Get Text    id=00N2000000A5Ezw_ileinner
        Exit For Loop If    "${Status}" == "Completed"
        Reload Page
        Sleep    30    
    END     
    Capture Page Screenshot 
    Close Browser
    

TC_006_Remove_LankaNumero 
    Open Browser                     ${URL}    ${browser}  
    Set Browser Implicit Wait        5
    Maximize Browser Window
    Do Login
    Sleep                            5  
    ${LightURL}=    Get Location
    Sleep    5
    Run Keyword if    "${URL}" != "${LightURL}"    URLCheck 
    Input Text                       id=phSearchInput     ${SubscriberNum}
    Click Element                    id=phSearchButton      
    Sleep                            3 
    # ${elements}=    Get WebElements    xpath=//*[text()='Elisa Yrityspaketti 4G (200M)']
    # ${count}=    Get Element Count    xpath=//*[text()='Elisa Yrityspaketti 4G (200M)']
    Wait Until Element Is Visible    xpath=//*[text()='Active']//preceding::a[2]    60 
    Click Element                    xpath=//*[text()='Active']//preceding::a[2]
    ${CorporateNum}=    Get Text     xpath=//*[text()='Corporate Number']//following::td[1]/div 
    Log To Console                   ${CorporateNum}       l
    Sleep                            2    
    ${MainUrl}=    Get Location
    Click Element                    xpath=//span[text()='Subscription Change Requests (Subscription)']
    Click Element                    xpath=//*[@value='New Subscription Change Request']  
    Sleep                            25       
    #Wait Until Element Is Enabled    xpath=//*[text()='Lankanumero']    30
    Click Element                    xpath=//*[text()='Lankanumero'] 
    ${title}=    Get Title 
    Log To Console                   ${title}    
    Select Frame                     id=screenFlowIframe
    Sleep                            10    
    Select Frame                     id=technicalConfigFrame
    Wait Until Element Is Visible    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero details']    60
    #Execute Javascript    window.document.getElementsByClassName(' ext-strict')[0].scrollIntoView(true);
    Click Element                    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero details'] 
    Select Frame                     xpath=//div[@class='slds-tabs--default__content loaderGif slds-show']/iframe
    Click Button                     xpath=//*[text()='Remove'] 
    Sleep                            3       
    Unselect Frame
    Sleep                            5    
    Unselect Frame
    Sleep                            2    
    Unselect Frame
    Sleep                            2
    Select Frame                     id=screenFlowIframe
    Click Button                     xpath=(//*[text()='Finish'])[1] 
    Unselect Frame
     
    Sleep                            40  
    Reload Page
    Sleep                            5    
    Execute Javascript               window.open('${MainUrl}') 
    
              
TC_003_SuspendSubscription
    ReusableFlow
    Wait Until Element Is Enabled    xpath=//span[text()='Terminate']    60
    Click Element                    xpath=//span[text()='Terminate']    
    Sleep    10 
    Select Frame    id=fieldSetIframe
    Sleep    3 
    Click Element    xpath=//span[@class='dateFormat']
    Sleep    3     
    Click Image    xpath=(//*[@class='lookupInput'])[1]/a/img 
    Sleep    5    
    Unselect Frame
    Sleep    10
    ${Title}=    Get Title    

    Select Window    url=https://elisa--uat--c.cs107.visual.force.com/apex/ContactSelectMACD?accountId=0011q00000P5uroAAB&lookupFormName=SCRPage%3AfieldSetForm&lookupParentEditElementName=SCRPage%3AfieldSetForm%3Apb1%3Aj_id29%3Aj_id56%3Aj_id58
    Maximize Browser Window
    ${OrderingContact}=    Get Text    id=j_id0:j_id3:j_id4:searchResults:0:j_id42
    Close Window
   
    Sleep    3     
    Select Window    ${Title}
    Select Frame    id=fieldSetIframe
    Sleep    3   
    Input Text     xpath=//input[@id='SCRPage:fieldSetForm:pb1:j_id29:j_id82:0:j_id83']    ${OrderingContact}    
    

 
  

Demo
    Open Browser                     ${URL}    ${browser}  
    Set Browser Implicit Wait        5
    Maximize Browser Window
    Do Login
    Sleep                            5  
    ${LightURL}=    Get Location
    Sleep    5
    Run Keyword if    "${URL}" != "${LightURL}"    URLCheck 
    Execute Javascript    window.open('https://elisa--uat.cs107.my.salesforce.com/a1P1q000000lqVxEAI') 
    Sleep    4    
    Select Window    url=https://elisa--uat.cs107.my.salesforce.com/a1P1q000000lqVxEAI
    ${Tit}=    Get Location
    Log To Console    ${Tit}    
    Sleep    5  
    #Click Element    xpath=//*[@value='New Mass Order Line Item']  
    Click Element                   xpath=//a[contains(text(),'MOLI')]       
    ${MainUrl}=    Get Location
    Sleep    5   
     
    FOR    ${i}    IN RANGE    1  500
        ${Status}=    Get Text    id=00N0J00000A6AeY_ileinner
        Exit For Loop If    "${Status}" == "Completed"
        Reload Page
        Sleep    60    
    END   
    
    ${CRUrl}=      Get Location
    ${CRNumber}=    Get Text    xpath=//div[@id='CF00N0J00000A6AeZ_ileinner']/a
    ${OrderId}=    Get Text          xpath=//div[@id='00N0J00000A6AeT_ileinner']/a
    Log To Console       ${CRNumber} 
    Log To Console                   ${OrderId}  
    Sleep    5    
    Click Element    xpath=//div[@id='CF00N0J00000A6AeZ_ileinner']/a  
    Sleep    5   
    Capture Page Screenshot    filename=   
*** Keywords ***
Do Login
    Input Text    name=Ecom_User_ID    @{Credentials}[0]
    Input Password    name=Ecom_Password    @{Credentials}[1]
    #Click Button    name=loginButton2
    Click Element    name=loginButton2      
    
URLCheck
    Click Element    xpath=//div[@class='profileTrigger branding-user-profile bgimg slds-avatar slds-avatar_profile-image-small circular forceEntityIcon']/span 
    Sleep    5       
    Click Element    xpath=//*[text()='Switch to Salesforce Classic']   
    Sleep    5    
    
ReusableFlow
    Open Browser                     ${URL}    ${browser}  
    Set Browser Implicit Wait        5
    Maximize Browser Window
    Do Login
    Sleep                            5  
    ${LightURL}=    Get Location
    Sleep    5
    Run Keyword if    "${URL}" != "${LightURL}"    URLCheck 
    Input Text                       id=phSearchInput     ${SubscriberNum}
    Click Element                    id=phSearchButton      
    Sleep                            3 
    # ${elements}=    Get WebElements    xpath=//*[text()='Elisa Yrityspaketti 4G (200M)']
    # ${count}=    Get Element Count    xpath=//*[text()='Elisa Yrityspaketti 4G (200M)']
    Wait Until Element Is Visible    xpath=//*[text()='Active']//preceding::a[2]    60 
    Click Element                    xpath=//*[text()='Active']//preceding::a[2]
    ${CorporateNum}=    Get Text     xpath=//*[text()='Corporate Number']//following::td[1]/div 
    Log To Console                   ${CorporateNum}       l
    Sleep                            2    
    ${MainUrl}=    Get Location
    Click Element                    xpath=//span[text()='Subscription Change Requests (Subscription)']
    Click Element                    xpath=//*[@value='New Subscription Change Request']  
    Sleep                            20      
    #Wait Until Element Is Enabled    xpath=//*[text()='Lankanumero']    30
    