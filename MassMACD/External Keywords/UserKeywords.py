
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

    #First open the required excel
    wb = xlrd.open_workbook(path)
    
    #Reach the required sheet
    sheet = wb.sheet_by_name(sheet_name)
    
    #Now get the required rows
    row_count = sheet.nrows
    
    #Return row count
    return  row_count 


#----------------------------------------------------------------------
if __name__ == "__main__":
     path = "C://Users//nikhiran//Desktop//Ring.xls"
     
     ExcelRead(path, 1, 1, sheet_name)(path)
#     Write_Regular_Data_To_Sheet(path)
      
     #write_excel(path,'kjh','ISBT DEHRADUN','SHASTRADHARA','CLEMEN TOWN','RAJPUR ROAD')