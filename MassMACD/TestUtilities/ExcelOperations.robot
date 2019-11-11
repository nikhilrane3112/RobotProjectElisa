*** Settings ***
Library    Selenium2Library
  
Library    Collections   
Library    ExcelLibrary  
Library    ../External Keywords/UserKeywords.py    

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
${ExceLFilePath}=    ${OUTPUT_DIR}//MassMACD//TestUtilities//MassMACD.xls

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

    
