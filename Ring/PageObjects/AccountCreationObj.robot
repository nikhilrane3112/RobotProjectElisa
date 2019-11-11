*** Settings ***

Variables    AccountCreationObj.py

*** Variables ***
${NewAccountButton_Xpath}   //*[@class='slds-icon slds-icon_x-small']
${CreateAccountButton_Xpath}  //*[text()='Uusi Asiakas']
${AccountNameText}  (//*[@class=' input'])[1]
${VATCode}    (//*[@class=' input'])[3]
${StreetAddress_Xpath}   (//*[@class=' input'])[9]
${PostalAddress_Xpath}    (//*[@class=' input'])[10]
${StreetNumber_Xpath}    (//*[@class=' input'])[11]
${PostalNumber_Xpath}    (//*[@class=' input'])[12]
${VisitPostalCode_Xpath}    (//*[@class=' input'])[13]
${PostalPostalCode_Xpath}    (//*[@class=' input'])[14]
${VisitCountry_Xpath}    (//*[@class=' input'])[15]
${PostalCountry_Xpath}    (//*[@class=' input'])[16]
${PostalLanguage_Xpath}    (//*[@class='select'])[8]
${PostalLanguageSelect_Xpath}    (//*[text()='Suomi'])[3]
${Save_Xpath}    (//*[text()='Tallenna'])[3]
