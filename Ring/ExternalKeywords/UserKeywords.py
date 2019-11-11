
 #Nikhil Rane/Excel Read n Write Operations
#----------------------------------------------------------------------
import xlrd
import xlwt
import xlsxwriter
from xlwt import Workbook 
from xlutils.copy import copy

#----------------------------------------------------------------------
def ExcelRead(path,row,col,sheet_name):
    """
    Open and read an Excel file
    """
    book = xlrd.open_workbook(path)
#  
#     # print number of sheets
#     print book.nsheets
#     
#  
#     # print sheet names
#     print book.sheet_names()

    # get the first worksheet
    sheet = book.sheet_by_name(sheet_name)

    rowInt = int(row)
    columnInt = int(col)
    
    #sheet.cell_value(1,1)
    return sheet.cell_value(rowInt,columnInt)

    
def write_excel(path,CaseName,OrderName,OrderId,Subscriber,status):
   # Workbook is created 
    wb = Workbook() 
    
    #open excel
    book = xlrd.open_workbook(path)
    
    #make writable copy
    wb = copy(book)
    
    #Read first sheet 
    sheet1 = wb.get_sheet(0)
    
   # add_sheet is used to create sheet. 
    #sheet1 = wb.add_sheet('Sheet 2') 
    row=Return_Row_Count(path)
    print(row)
    sheet1.write(row, 0, CaseName) 
    sheet1.write(row, 1, OrderName) 
    sheet1.write(row, 2, OrderId) 
    sheet1.write(row, 3, Subscriber) 
    sheet1.write(row, 4, status)
    
   
    #wb.save('xlwt example.xlsx') 
    wb.save(path) 
    

def Return_Row_Count(path,sheet_name):
    wb = xlrd.open_workbook(path)
    sheet = wb.sheet_by_name(sheet_name)
    row_count = sheet.nrows
    return  row_count 

def Return_Column_Count(path,sheet_name):
    wb = xlrd.open_workbook(path)
    sheet = wb.sheet_by_name(sheet_name)
    column_count = sheet.ncols
    return  column_count 
    
def WriteIntoExcel(path,sheet_name, *args):
    wb = Workbook() 
    book = xlrd.open_workbook(path)
    wb = copy(book)
    sheet1 = wb.get_sheet(0)
    row=Return_Row_Count(path, sheet_name)
    col=Return_Column_Count(path, sheet_name)
    print(row)    
    for colc in range(col):
        sheet1.write(row, colc, args[colc])
        
    wb.save(path)   
    
    
def Read_Data_From_ExcelSheet(path, Sheetname, testcaseid, columnName):
        # open excel file
        workbook = xlrd.open_workbook(path)
        #open work sheet
        worksheet = workbook.sheet_by_name(Sheetname)
        
        totalrows = worksheet.nrows
        totalcolumns = worksheet.ncols
        ColumnNumber = None

        for colnum in range(0,totalcolumns):
            header = worksheet.cell(0, colnum).value
            if str(header) == str(columnName):
                ColumnNumber = colnum
                break
        for rownum in range(1,totalrows):
            TestCaseNumber = worksheet.cell(rownum, 0).value
            if str(TestCaseNumber) == str(testcaseid):
                searchData = worksheet.cell(rownum, ColumnNumber).value
                print searchData
                return searchData  


#----------------------------------------------------------------------
if __name__ == "__main__":
     #path = "C://Users//nikhiran//OneDrive - AMDOCS//Backup Folders//Desktop//Ring.xls"
     path = "C://Users//nikhiran//eclipse-workspace//ElisaAutomation//Ring//TestUtilities//NewRingSolution.xls"
     
     #ExcelRead(path, 1, 1, sheet_name)(path)
     #Demo(path,1,2,3)
     
#     Write_Regular_Data_To_Sheet(path)
     Read_Data_From_Excel(path, "Sheet1", "TC_001", "ProductName") 
     #Demo(path,"Sheet1",'kjh','ISBT DEHRADUN','SHASTRADHARA','CLEMEN TOWN','RAJPUR ROAD')