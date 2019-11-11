*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary  
Library    ../ExternalKeywords/UserKeywords.py

*** Variables ***
# ${browser}        Chrome
# ${URL}            https://elisa--uat.cs107.my.salesforce.com/home/home.jsp
# @{Credentials}    ext-nikhil.rane@elisa.fi    Apple@1994
# ${SubscriberNum}    SUB000633321
# ${FixedLineNum}    0608978615 
@{LstSubscriberNum}
@{LstFixedLineNum}
${browser}
${URL}
${UserName}
${Password}
${ExceLFilePath}=    ${OUTPUT_DIR}//Lankanumero//TestUtilities//Newlankanumero.xls

*** Keywords ***
Read Data from Excel
    ${rowCountSub}=    Return_Row_Count    ${ExceLFilePath}    TestData_Subscriber
    #Open Excel Document    ${ExceLFilePath}   doc
     
    FOR    ${row}    IN RANGE    1    ${rowCountSub}        
        ${Status}=    ExcelRead    ${ExceLFilePath}    ${row}    1    TestData_Subscriber
        ${SubscriberNumber}=    Run Keyword If    "${Status}" == "Active"   ExcelRead    ${ExceLFilePath}    ${row}    0    TestData_Subscriber           
        #${SubscriberNumber}=    Run Keyword If    "${Status}" == "Active"   Read Excel Cell    ${row}    1    TestData_Subscriber 
        Run Keyword If    "${SubscriberNumber}" != "None"    Append To List    ${LstSubscriberNum}    ${SubscriberNumber}         
        #Append To List    ${LstSubscriberNum}    ${SubscriberNumber}  
        
    END
    Set Global Variable    @{LstSubscriberNum}   
   
    #${browser}    Read Excel Cell     2     1    TestData_Credentials
    ${browser}    ExcelRead    ${ExceLFilePath}    1    0    TestData_Credentials
    Set Global Variable    ${browser} 
    
    ${URL}    ExcelRead    ${ExceLFilePath}    2    1    TestData_Credentials
    Set Global Variable    ${URL} 
    
    ${UserName}    ExcelRead    ${ExceLFilePath}    1    2    TestData_Credentials
    Set Global Variable    ${UserName}  
    
    ${Password}    ExcelRead    ${ExceLFilePath}    1    3    TestData_Credentials
    Set Global Variable    ${Password}   
    
    ${rowCountCorp}=    Return_Row_Count    ${ExceLFilePath}    TestData_CorpNum
    FOR    ${row}    IN RANGE    1    ${rowCountCorp}    
        ${FixedLineStatus}=    ExcelRead    ${ExceLFilePath}    ${row}    1    TestData_CorpNum          
        ${FixedLineNum}=    Run Keyword If    "${FixedLineStatus}" == "Available"   ExcelRead    ${ExceLFilePath}    ${row}    0    TestData_CorpNum  
        Run Keyword If    "${FixedLineNum}" != "None"    Append To List    ${LstFixedLineNum}    ${FixedLineNum}      
        #Append To List    ${LstFixedLineNum}    ${FixedLineNum}  
        
    END
    Set Global Variable    @{LstFixedLineNum}   
    
     
    
    