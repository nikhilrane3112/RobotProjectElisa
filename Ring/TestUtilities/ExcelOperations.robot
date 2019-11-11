*** Settings ***
Library    Selenium2Library
Library    String     
Library    Collections   
Library    ExcelLibrary  
Library    ../ExternalKeywords/UserKeywords.py

*** Variables ***
${AccountName}
${Contact}
${Product}
${SolutionName}
@{FirstnameList}
@{LastnameList}
@{UserIdList}
@{MobileList}
${Firstname}
${Lastname}
${UserId}
${Mobile}
${browser}
${URL}
${UserName}
${Password}
${ExceLFilePath}=    ${OUTPUT_DIR}//Ring//TestUtilities//NewRingSolution.xls

*** Keywords ***
Read Data from Excel
    ${browser}    ExcelRead    ${ExceLFilePath}    1    0    TestData_Credentials
    Set Global Variable    ${browser} 
    
    ${URL}    ExcelRead    ${ExceLFilePath}    1    1    TestData_Credentials
    Set Global Variable    ${URL} 
    
    ${UserName}    ExcelRead    ${ExceLFilePath}    1    2    TestData_Credentials
    Set Global Variable    ${UserName}  
    
    ${Password}    ExcelRead    ${ExceLFilePath}    1    3    TestData_Credentials
    Set Global Variable    ${Password}   
    
    ${AccountName}    ExcelRead    ${ExceLFilePath}    1    0    TestData_Inputs
    Set Global Variable    ${AccountName} 
    
    ${Contact}    ExcelRead    ${ExceLFilePath}    1    1    TestData_Inputs
    Set Global Variable    ${Contact} 
    
    ${Product}    ExcelRead    ${ExceLFilePath}    1    2    TestData_Inputs
    Set Global Variable    ${Product} 
    
    ${SolutionName}    ExcelRead    ${ExceLFilePath}    1    3    TestData_Inputs
    Set Global Variable    ${SolutionName} 
    
    ${FirstName}    ExcelRead    ${ExceLFilePath}    1    4    TestData_Inputs
    Set Global Variable    ${FirstName}
     
    ${LastName}    ExcelRead    ${ExceLFilePath}    1    5    TestData_Inputs
    Set Global Variable    ${LastName} 
    
    ${UserId}    ExcelRead    ${ExceLFilePath}    1    6    TestData_Inputs
    Set Global Variable    ${UserId} 
    
    ${Mobile}    ExcelRead    ${ExceLFilePath}    1    7    TestData_Inputs
    Set Global Variable    ${Mobile} 
    
    
    
    ${rowCount}=    Return_Row_Count    ${ExceLFilePath}    TestData_Inputs
    FOR    ${row}    IN RANGE    1    ${rowCount}    
        ${FirstName1}=    ExcelRead    ${ExceLFilePath}    ${row}    4    TestData_Inputs
        Append To List    ${FirstnameList}    ${FirstName1}
        ${LastName}=    ExcelRead    ${ExceLFilePath}    ${row}    5    TestData_Inputs
        Append To List    ${LastnameList}    ${LastName}
        ${UserId}=    ExcelRead    ${ExceLFilePath}    ${row}    6    TestData_Inputs
        Append To List    ${UserIdList}    ${UserId}
        ${Mobile}=    ExcelRead    ${ExceLFilePath}    ${row}    7    TestData_Inputs            
        Append To List    ${MobileList}    ${Mobile}       
        #Append To List    ${LstFixedLineNum}    ${FixedLineNum}  
        
    END
    Set Global Variable    @{FirstnameList} 
    Set Global Variable    @{LastnameList}
    Set Global Variable    @{UserIdList}
    Set Global Variable    @{MobileList}  
    
Splitting String
    [Arguments]    ${reqString}
    @{pre}=    Split String    ${reqString}    -
    [Return]    @{pre}[0]
    
# *** Test Cases ***   
 # TestEx
     # Read Data from Excel  
    
    