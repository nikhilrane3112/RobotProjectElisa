*** Settings ***
Library    Selenium2Library     
Library    Collections   
Library    ExcelLibrary 
Resource   ../Pages/NewCommonPage1.robot


*** Keywords ***
MACD for Add Lankanumero
    Sleep    20 
    Capture Page Screenshot    4_MACDPage.png
       
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe    60   
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe
    
    Wait Until Element Is Enabled    xpath=//span[@class='x-tab-strip-inner']//following::span[text()='Lankanumero']    60   
    Click Element                    xpath=//span[@class='x-tab-strip-inner']//following::span[text()='Lankanumero'] 
    ${title}=    Get Title 
    Log To Console                   ${title} 
    Sleep    3    
    Wait Until Page Contains Element    id=screenFlowIframe    60      
    Select Frame                     id=screenFlowIframe
    Sleep                            7   
    Wait Until Page Contains Element    id=technicalConfigFrame    60 
    Select Frame                     id=technicalConfigFrame
    Sleep                            2  
    Execute JavaScript    window.scrollTo(0,300)
    #Scroll Element Into View    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero details']
    Wait Until Page Contains Element    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero tiedot']    60    
    Wait Until Element Is Visible    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero tiedot']    60
    
    Click Element                    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero tiedot']
    Sleep    3
    Capture Page Screenshot    5_LankaDetails.png 
    Wait Until Page Contains Element    xpath=//div[@class='slds-tabs--default__content loaderGif slds-show']/iframe    60                            
    Select Frame                     xpath=//div[@class='slds-tabs--default__content loaderGif slds-show']/iframe
    Wait Until Page Contains Element    xpath=//*[@data-label='Fixed Line Number']/div/input    60
    Set Focus To Element    xpath=//*[@data-label='Fixed Line Number']/div/input   
    Input Text                       xpath=//*[@data-label='Fixed Line Number']/div/input    @{LstFixedLineNum}[0]
    Wait Until Page Contains Element    xpath=//*[text()='Validoi ja tallenna']     60   
    Click Button                     xpath=//*[text()='Validoi ja tallenna'] 
    #Sleep                            2       
    Capture Page Screenshot    6_Fixednum.png
    Unselect Frame
    Sleep    3    
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe    60   
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Sleep    2    
    Wait Until Page Contains Element    id=screenFlowIframe    60 
    Select Frame                     id=screenFlowIframe
    Sleep    2    
    Wait Until Page Contains Element    xpath=(//*[text()='Finish'])[1]    60
    Click Button                     xpath=(//*[text()='Finish'])[1] 
    Unselect Frame  
    Sleep     15
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    
    Sleep    10     
    Wait Until Element Is Visible   xpath=(//span[@class='fieldLabel'])[1]//following::a[1]    60 
    Click Element                    xpath=(//span[@class='fieldLabel'])[1]//following::a[1]
    Unselect Frame
    #Sleep                            5
    
MACD for Change Phone Number
    #Set Screenshot Directory    C:/Users/nikhiran/eclipse-workspace/Elisa_SalesForce/LankaNumero/TestSuits/LankaNumero/TC_002_ChangePhoneNumber
    Sleep    15    
    Capture Page Screenshot    4_MACDPage.png
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe    60   
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe
    
    Wait Until Page Contains Element    xpath=//span[text()='Change Phone Number' and @class='x-tab-strip-text ']    60
    Click Element                    xpath=//span[text()='Change Phone Number' and @class='x-tab-strip-text ']
    #Sleep    10 
    
    Wait Until Page Contains Element    id=screenFlowIframe    60   
    Select Frame    id=screenFlowIframe
    #Sleep    7    
    Wait Until Page Contains Element    id=technicalConfigFrame    60   
    Select Frame    id=technicalConfigFrame
    #Sleep    3 
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Set Selenium Implicit Wait    50
    #Scroll Element Into View    xpath=//*[text()='Number details']
    #Wait Until Element Is Visible    locator    
    #Set Focus To Element    xpath=//*[text()='Number details']
    #Wait Until Page Contains Element    xpath=//*[text()='Number details']     60      
    #click Element    xpath=//*[text()='Number details'] 
    Capture Page Screenshot    5_Details.png
    Wait Until Page Contains Element    xpath=//*[@class='slds-tabs--default__content loaderGif slds-show']/iframe       60
    Select Frame    xpath=//*[@class='slds-tabs--default__content loaderGif slds-show']/iframe 
    Wait Until Page Contains Element    xpath=//*[text()='Validoi ja tallenna']     60  
    Click Element    xpath=//*[text()='Validoi ja tallenna'] 
    Unselect Frame
    
    #Sleep    3 
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe    60   
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe
    
    Wait Until Page Contains Element    id=screenFlowIframe    60      
    Select Frame    id=screenFlowIframe
    Sleep    7    
    Wait Until Page Contains Element    id=technicalConfigFrame    60
    Select Frame    id=technicalConfigFrame
    #Sleep    5
    Wait Until Page Contains Element    xpath=//*[text()='Numeron luettelotiedot']    60  
    Click Element    xpath=//*[text()='Numeron luettelotiedot']
    Capture Page Screenshot    6_Directory.png
    Wait Until Page Contains Element    xpath=//*[@class='slds-tabs--default__content loaderGif slds-show']/iframe       60
    Select Frame    xpath=//*[@class='slds-tabs--default__content loaderGif slds-show']/iframe   
    Wait Until Page Contains Element    xpath=//*[text()='Validoi ja tallenna']     60
    Click Element    xpath=//*[text()='Validoi ja tallenna'] 
    Unselect Frame
    
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe    60   
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Sleep    2  
    Wait Until Page Contains Element    id=screenFlowIframe    60  
    Select Frame    id=screenFlowIframe
    Sleep    2    
    Wait Until Page Contains Element    xpath=//*[text()='Finish']    60
    Click Element    xpath=//*[text()='Finish']
    Unselect Frame
    
    Sleep     15
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    
    Sleep    10     
    Wait Until Element Is Visible   xpath=(//span[@class='fieldLabel'])[1]//following::a[1]    60 
    Click Element                    xpath=(//span[@class='fieldLabel'])[1]//following::a[1]
    Unselect Frame
    #Sleep                            5 
    
MACD for Change Offer
    #Set Screenshot Directory    C:/Users/nikhiran/eclipse-workspace/Elisa_SalesForce/LankaNumero/TestSuits/LankaNumero/TC_003_ChangeOffer
    Sleep    15
    Capture Page Screenshot    4_MACDPage.png
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe    60   
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Wait Until Element Is Enabled    xpath=//span[text()='Change Offer/Service']    60
    Click Element                    xpath=//span[text()='Change Offer/Service']
    #Sleep    10   
    Wait Until Page Contains Element    id=screenFlowIframe    60  
    Select Frame     id=screenFlowIframe
    #Sleep    5   
    Wait Until Page Contains Element    xpath=(//span[text()='Valitse arvo'])[1]    60    
    Click Element    xpath=(//span[text()='Valitse arvo'])[1] 
    #Sleep    2  
    Wait Until Page Contains Element    xpath=(//div[contains(@id,'select2-result-label')])[1]/div/div/div[1]     60  
    Click Element    xpath=(//div[contains(@id,'select2-result-label')])[1]/div/div/div[1]  
    Capture Page Screenshot    5_Details.png  
    Unselect Frame 
    #Sleep    3   
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe    60   
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe
    
    Wait Until Page Contains Element    id=screenFlowIframe    60  
    Select Frame    id=screenFlowIframe
    #Sleep    5 
    Wait Until Page Contains Element    id=technicalConfigFrame    60   
    Select Frame    id=technicalConfigFrame
    #Sleep    5
    Wait Until Page Contains Element    xpath=//*[@class='slds-tabs--default__content loaderGif slds-show']/iframe       60       
    Select Frame    xpath=//*[@class='slds-tabs--default__content loaderGif slds-show']/iframe  
    Scroll Element Into View    xpath=//*[text()='Validoi ja tallenna']
    Sleep    5           
    Wait Until Page Contains Element    xpath=//*[text()='Validoi ja tallenna']    60   
    Click Element    xpath=//*[text()='Validoi ja tallenna'] 
    Unselect Frame
    Capture Page Screenshot    6_Details.png   
    
    Sleep    2 
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe    60   
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Wait Until Page Contains Element    id=screenFlowIframe    60    
    Select Frame    id=screenFlowIframe
    Sleep    2    
    Wait Until Page Contains Element    xpath=//*[text()='Finish']    60   
    Click Element    xpath=//*[text()='Finish']
    Unselect Frame
    
    Sleep     15
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    
    Sleep    10     
    Wait Until Element Is Visible   xpath=(//span[@class='fieldLabel'])[1]//following::a[1]    60 
    Click Element                    xpath=(//span[@class='fieldLabel'])[1]//following::a[1]
    Unselect Frame
    Sleep    5   
    
MACD for Suspend Subscription
    #Set Screenshot Directory    C:/Users/nikhiran/eclipse-workspace/Elisa_SalesForce/LankaNumero/TestSuits/LankaNumero/TC_004_Suspend
    Capture Page Screenshot    4_MACDPage.png
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe  
    Wait Until Element Is Enabled    xpath=//span[text()='Suspend']    60
    Click Element                    xpath=//span[text()='Suspend']
    Sleep    3 
    Wait Until Page Contains Element    id=fieldSetIframe    60
    Select Frame    id=fieldSetIframe 
    Sleep    2     
    Wait Until Page Contains Element    xpath=//*[@value='Finish']    60 
    Click Element    xpath=//*[@value='Finish']    
    Unselect Frame 
    #Sleep    10 
 
MACD creation for Resume Subscription   
    Capture Page Screenshot    4_MACDPage.png
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe  
    Wait Until Element Is Enabled    xpath=//span[text()='Resume']    60
    Click Element                    xpath=//span[text()='Resume']
    Sleep    3 
    Wait Until Page Contains Element    id=fieldSetIframe    60
    Select Frame    id=fieldSetIframe 
    #Sleep    3  
    Wait Until Page Contains Element    xpath=//*[@value='Finish']    60  
    Click Element    xpath=//*[@value='Finish']    
    Unselect Frame 
    
MACD creation for Terminate Subscription
    Capture Page Screenshot    4_MACDPage.png
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe 
    Wait Until Element Is Enabled    xpath=//span[text()='Terminate']    60
    Click Element                    xpath=//span[text()='Terminate'] 
    Unselect Frame
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    
    Sleep    3 
    Wait Until Page Contains Element    id=fieldSetIframe    60
    Select Frame    id=fieldSetIframe
    Sleep    3 
    Wait Until Element Is Visible     xpath=//span[@class='dateFormat']/a    60
    Click Element    xpath=//span[@class='dateFormat']/a
    #Sleep    3     
    # Wait Until Page Contains Element    xpath=(//*[@class='lookupInput'])[1]/a/img    60  
    # Click Image    xpath=(//*[@class='lookupInput'])[1]/a/img 
    #Sleep    5    
    Unselect Frame
    Capture Page Screenshot    5_Details.png
    #Sleep    10
    # ${Title}=    Get Title    

    # Select Window    url=https://elisa--uat--c.cs107.visual.force.com/apex/ContactSelectMACD?accountId=0012000001aNglKAAS&lookupFormName=SCRPage%3AfieldSetForm&lookupParentEditElementName=SCRPage%3AfieldSetForm%3Apb1%3Aj_id29%3Aj_id56%3Aj_id58
    # Maximize Browser Window
    # ${OrderingContact}=    Get Text    id=j_id0:j_id3:j_id4:searchResults:0:j_id42
    # Close Window
   
    # Sleep    10     
    # Select Window    ${Title}
    Sleep    2    
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe 
    Wait Until Page Contains Element    id=fieldSetIframe    60
    Select Frame    id=fieldSetIframe
    #Sleep    5 
    Wait Until Page Contains Element    xpath=(//*[@class='lookupInput'])[1]/a/img//preceding::input[1]    60  
    Input Text     xpath=(//*[@class='lookupInput'])[1]/a/img//preceding::input[1]    Eng Fin 
    Capture Page Screenshot    6_OrderingContact.png
    #Sleep    3 
    Wait Until Page Contains Element    xpath=//*[@value='Finish']    60  
    Click Element    xpath=//*[@value='Finish']    
    Unselect Frame
    
    #Sleep    10   
    
    
MACD creation for Restore Subscription
    Sleep    15
    Capture Page Screenshot    4_MACDPage.png
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe 
    Wait Until Element Is Enabled    xpath=//span[text()='Restore']    60
    Click Element                    xpath=//span[text()='Restore']
    #Sleep    10
    Sleep    20    
    Wait Until Page Contains Element    id=screenFlowIframe    60   
    Select Frame    id=screenFlowIframe 
    Sleep   20 
    Wait Until Page Contains Element    xpath=//*[text()='Finish']    60     
    Click Element    xpath=//*[text()='Finish']    
    Unselect Frame 
    Sleep     10
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    
     
    Wait Until Element Is Visible   xpath=(//span[@class='fieldLabel'])[1]//following::a[1]    60 
    Click Element                    xpath=(//span[@class='fieldLabel'])[1]//following::a[1]
    Unselect Frame
    #Sleep                            5   

MACD creation for Remove Lankanumero   
    Sleep    15 
    Set Screenshot Directory    C:/Users/nikhiran/eclipse-workspace/Elisa_SalesForce/LankaNumero/TestSuits/LankaNumero/TC_008_Remove_LankaNumero
    Capture Page Screenshot
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe    60   
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe
    
    Wait Until Element Is Enabled    xpath=//span[@class='x-tab-strip-inner']//following::span[text()='Lankanumero']    60   
    Click Element                    xpath=//span[@class='x-tab-strip-inner']//following::span[text()='Lankanumero'] 
    ${title}=    Get Title 
    Log To Console                   ${title}  
    Wait Until Page Contains Element    id=screenFlowIframe    60     
    Select Frame                     id=screenFlowIframe
    Sleep                            7  
    Wait Until Page Contains Element    id=technicalConfigFrame    60  
    Select Frame                     id=technicalConfigFrame
    Sleep    5    
    Execute JavaScript    window.scrollTo(0,300)
    Wait Until Page Contains Element    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero tiedot']    60    
    Wait Until Element Is Visible    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero tiedot']    60
    Click Element                    xpath=//a[@class='slds-tabs--default__link' and text()='Lankanumero tiedot']
    Sleep    3    
    Wait Until Page Contains Element    xpath=//div[@class='slds-tabs--default__content loaderGif slds-show']/iframe    60 
    Select Frame                     xpath=//div[@class='slds-tabs--default__content loaderGif slds-show']/iframe
    Capture Page Screenshot    5_LankaDetails.png
    Wait Until Page Contains Element    id=lankanumeroRemove    60
    Click Button                     id=lankanumeroRemove 
    #Sleep                            3       
    Unselect Frame

    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe    60   
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']/iframe
    Sleep                            2
    Wait Until Page Contains Element    id=screenFlowIframe    60
    Select Frame                     id=screenFlowIframe
    Wait Until Page Contains Element    xpath=(//*[text()='Finish'])[1]    60
    Click Button                     xpath=(//*[text()='Finish'])[1] 
    Unselect Frame
     
    Sleep     15
    Wait Until Page Contains Element    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    60
    Select Frame    xpath=//div[@class='iframe-parent slds-template_iframe slds-card']//iframe    
    Sleep    7     
    Wait Until Element Is Visible   xpath=(//span[@class='fieldLabel'])[1]//following::a[1]    60 
    Click Element                    xpath=(//span[@class='fieldLabel'])[1]//following::a[1]
    Unselect Frame
    #Sleep                            5 
                