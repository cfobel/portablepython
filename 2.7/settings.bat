:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: The MIT License (MIT)
:: Copyright (c) 2007 Perica Zivkovic
 
:: Permission is hereby granted, free of charge, to any person obtaining a 
:: copy of this software and associated documentation files (the "Software"), 
:: to deal in the Software without restriction, including without limitation 
:: the rights to use, copy, modify, merge, publish, distribute, sublicense, 
:: and/or sell copies of the Software, and to permit persons to whom the 
:: Software is furnished to do so, subject to the following conditions:
 
:: The above copyright notice and this permission notice shall be included 
:: in all copies or substantial portions of the Software.
 
:: THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
:: OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
:: FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
:: AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
:: WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN 
:: CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

:: http://PortablePython.com
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set PY_VERSION=2.7
set PP_VERSION=5.1
set PY_SHORT_VERSION=27

:: Core
set PY_MSI_DOWNLOAD="http://python.org/ftp/python/2.7.5/python-2.7.5.msi"
set PY_MSI_FILE=python-2.7.5.msi
set PY_MSI_MD5=0006d6219160ce6abe711a71c835ebb0

:: Modules
set PY_SETUPTOOLS_DOWNLOAD="http://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11.win32-py2.7.exe"
set PY_SETUPTOOLS_FILE=setuptools-0.6c11.win32-py2.7.exe
set PY_SETUPTOOLS_MD5=57e1e64f6b7c7f1d2eddfc9746bbaf20

set PY_SCRIPTER_DOWNLOAD="http://pyscripter.googlecode.com/files/PyScripter-v2.5.3.zip"
set PY_SCRIPTER_FILE=PyScripter-v2.5.3.zip
set PY_SCRIPTER_SHA1=363226a2dc708bc5dd83eda9ccc36339b79a7345

set PYWIN32_DOWNLOAD="http://sourceforge.net/projects/pywin32/files/pywin32/Build 218/pywin32-218.win32-py2.7.exe"
set PYWIN32_FILE=pywin32-218.win32-py2.7.exe
set PYWIN32_MD5=16e178ac18b49fa0d27ba0be90f460af

set NETWORKX_DOWNLOAD="http://networkx.lanl.gov/download/networkx/networkx-1.7-py2.7.egg"
set NETWORKX_FILE=networkx-1.7-py2.7.egg
set NETWORKX_MD5=1d4c59f1e894f39f8928be8718905969

set DJANGO_DOWNLOAD="https://pypi.python.org/packages/source/D/Django/Django-1.5.1.tar.gz"
set DJANGO_FILE=Django-1.5.1.tar.gz
set DJANGO_FILE_TAR=Django-1.5.1.tar
set DJANGO_MD5=7465f6383264ba167a9a031d6b058bff

set PY2EXE_DOWNLOAD="http://sourceforge.net/projects/py2exe/files/py2exe/0.6.9/py2exe-0.6.9.win32-py2.7.exe"
set PY2EXE_FILE=py2exe-0.6.9.win32-py2.7.exe
set PY2EXE_MD5=b7899302e70596defe3b7e8c95cd15c1

set WXPYTHON_DOWNLOAD="http://sourceforge.net/projects/wxpython/files/wxPython/2.9.4.0/wxPython2.9-win32-2.9.4.0-py27.exe"
set WXPYTHON_FILE=wxPython2.9-win32-2.9.4.0-py27.exe
set WXPYTHON_MD5=8ec28d1c8aba69c77a3df52a22f76fea

set LXML_DOWNLOAD="http://pypi.python.org/packages/2.7/l/lxml/lxml-2.3.win32-py2.7.exe"
set LXML_FILE=lxml-2.3.win32-py2.7.exe

set PYODBC_DOWNLOAD="http://pyodbc.googlecode.com/files/pyodbc-3.0.6.win32-py2.7.exe"
set PYODBC_FILE=pyodbc-3.0.6.win32-py2.7.exe
set PYODBC_SHA1=780c650853f37e7283e72b33a51649fb61375537 

set PYGAME_DOWNLOAD="http://pygame.org/ftp/pygame-1.9.1.win32-py2.7.msi"
set PYGAME_FILE=pygame-1.9.1.win32-py2.7.msi

set PYGTK_DOWNLOAD="http://ftp.gnome.org/pub/GNOME/binaries/win32/pygtk/2.24/pygtk-all-in-one-2.24.2.win32-py2.7.msi"
set PYGTK_FILE=pygtk-all-in-one-2.24.2.win32-py2.7.msi
set PYGTK_MD5=4bddf847f81d8de2d73048b113da3dd5

set PYQT_DOWNLOAD="http://sourceforge.net/projects/pyqt/files/PyQt4/PyQt-4.10.1/PyQt4-4.10.1-gpl-Py2.7-Qt4.8.4-x32.exe"
set PYQT_FILE=PyQt4-4.10.1-gpl-Py2.7-Qt4.8.4-x32.exe
set PYQT_MD5=5bdc651f8ab43386437d3fbc33e8c156

set PYMUNK_DOWNLOAD="http://pymunk.googlecode.com/files/pymunk-2.1.0.win32.exe"
set PYMUNK_FILE=pymunk-2.1.0.win32.exe
set PYMUNK_MD5=75ca1f787acfed13f4cc306aa4950b45

:: Packages hosted on `microfluidics.utoronto.ca`
set GEVENT_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/gevent-1.0.1.win32-py2.7.exe"
set GEVENT_FILE=gevent-1.0.1.win32-py2.7.exe

set MATPLOTLIB_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/matplotlib-1.4.2.win32-py2.7.exe"
set MATPLOTLIB_FILE=matplotlib-1.4.2.win32-py2.7.exe

set NUMEXPR_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/numexpr-2.4.win32-py2.7.exe"
set NUMEXPR_FILE=numexpr-2.4.win32-py2.7.exe

set NUMPY_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/numpy-MKL-1.9.1.win32-py2.7.exe"
set NUMPY_FILE=numpy-MKL-1.9.1.win32-py2.7.exe

set PANDAS_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/pandas-0.15.1.win32-py2.7.exe"
set PANDAS_FILE=pandas-0.15.1.win32-py2.7.exe

set PILLOW_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/Pillow-2.6.1.win32-py2.7.exe"
set PILLOW_FILE=Pillow-2.6.1.win32-py2.7.exe

set PYSERIAL_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/pyserial-2.7.win32-py2.7.exe"
set PYSERIAL_FILE=pyserial-2.7.win32-py2.7.exe

set PYTHON_DATEUTIL_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/python-dateutil-2.2.win32-py2.7.exe"
set PYTHON_DATEUTIL_FILE=python-dateutil-2.2.win32-py2.7.exe

set PYTZ_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/pytz-2014.10.win32-py2.7.exe"
set PYTZ_FILE=pytz-2014.10.win32-py2.7.exe

set PYVISA_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/PyVISA-1.6.win32-py2.7.exe"
set PYVISA_FILE=PyVISA-1.6.win32-py2.7.exe

set SCIPY_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/scipy-0.15.0b1.win32-py2.7.exe"
set SCIPY_FILE=scipy-0.15.0b1.win32-py2.7.exe

set SYMPY_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/sympy-0.7.6.win32-py2.7.exe"
set SYMPY_FILE=sympy-0.7.6.win32-py2.7.exe

set TABLES_DOWNLOAD="http://microfluidics.utoronto.ca/software/pythonlibs/tables-3.1.1.win32-py2.7.exe"
set TABLES_FILE=tables-3.1.1.win32-py2.7.exe
