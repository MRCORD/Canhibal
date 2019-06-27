import wx 
import pyodbc
import pandas as pd

conn = pyodbc.connect('Driver={ODBC Driver 17 for SQL Server};'
                      'Server=LAPTOP-39CD6UJT\SQLEXPRESS;'
                      'Database=MKK10;'
                      'Trusted_Connection=yes;')

cursor = conn.cursor()

tablas = ['Cliente', 'Orden', 'Incluye', 'Producto', 'Insumo', 'Convierte', 'Provee', 'Proveedor']

"""
Cliente = cursor.execute('SELECT * FROM Cliente')
Orden = cursor.execute('SELECT * FROM Orden')
Incluye = cursor.execute('SELECT * FROM Incluye')
Producto = cursor.execute('SELECT * FROM Producto')
Insumo = cursor.execute('SELECT * FROM Insumo')
Convierte = cursor.execute('SELECT * FROM Convierte')
Provee = cursor.execute('SELECT * FROM Provee')
Proveedor = cursor.execute('SELECT * FROM Proveedor')
"""

for i in range(0,len(tablas)):
    
    tablas[i] = cursor.execute('SELECT * FROM ' + tablas[i])
    tablas[i] = tablas[i].fetchall()


for row in cursor:
    print(row)

class App(wx.App):
    def OnInit(self):
        frame = wx.Frame(parent=None, title='Bare')
        frame.Show()
        return True

for row in cursor:
    print(row)


app = App()
app.MainLoop()
