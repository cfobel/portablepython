; =================================================================
; The MIT License (MIT)
; Copyright (c) 2007 Perica Zivkovic
 
; Permission is hereby granted, free of charge, to any person obtaining a copy 
; of this software and associated documentation files (the "Software"), to deal 
; in the Software without restriction, including without limitation the rights 
; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
; copies of the Software, and to permit persons to whom the Software is furnished 
; to do so, subject to the following conditions:
 
; The above copyright notice and this permission notice shall be included in all 
; copies or substantial portions of the Software.
 
; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
; IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
; DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
; ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR 
; OTHER DEALINGS IN THE SOFTWARE.

; http://PortablePython.com
; =================================================================

InstType "Typical"
InstType "Minimal"
InstType "Development"

Section "!Python 2.7.5 core" PYTHON_CORE
	SectionIn 1 2 3 RO
	SetOutPath "$INSTDIR"
	File /r "${SOURCESFOLDER}\python-core\*.*"
	File "${SOURCESFOLDER}\Python-Portable.exe"
	File "${SOURCESFOLDER}\PythonW-Portable.exe"
	File "${SOURCESFOLDER}\IDLE-Portable.exe"
SectionEnd

SectionGroup "MicroDrop"
	Section "pymunk" MODULE_PYMUNK
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pymunk\PURELIB\*.*"
	SectionEnd 
	Section "NumPy 1.7.1" MODULE_NUMPY
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\numpy\PLATLIB\*.*"
	SectionEnd
	Section "SciPy 0.12.0" MODULE_SCIPY
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\scipy\PLATLIB\*.*"
	SectionEnd
	Section "PyWin32 218" MODULE_PYWIN32
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\pywin32\*.*"
	SectionEnd
	Section "PIL 1.1.7" MODULE_PIL
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pil\PLATLIB\*.*"
	SectionEnd
	Section "matplotlib 1.2.1" MODULE_MATPLOTLIB
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\matplotlib\PLATLIB\*.*"
	SectionEnd
	Section "lxml 2.3" MODULE_LXML
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\lxml\PLATLIB\*.*"
	SectionEnd
	Section "PySerial 2.5" MODULE_PY_SERIAL
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pyserial\PURELIB\*.*"
	SectionEnd
	Section "PyGTK 2.24.2" MODULE_PYGTK
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\pygtk\*.*"
		SetOutPath "$INSTDIR"
		File "${SOURCESFOLDER}\Glade3-Portable.exe"
	SectionEnd
SectionGroupEnd

SectionGroup "Optional"
	Section "Pandas 0.11.0" MODULE_PANDAS
		SectionIn 1 3
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pandas\PLATLIB\*.*"
	SectionEnd 
	Section "NetworkX 1.7" MODULE_NETWORKX
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\networkx\"
		File /r "${SOURCESFOLDER}\networkx\networkx\*.*"
	SectionEnd
	Section "Django 1.5.1" MODULE_DJANGO
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\django\"
		File /r "${SOURCESFOLDER}\django\Django-1.5.1\django\*.*"
		SetOutPath "$INSTDIR\App\Scripts"
		File "${SOURCESFOLDER}\django\Django-1.5.1\django\bin\django-admin.py"
	SectionEnd
	Section "Py2Exe 0.6.9" MODULE_PY2EXE
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\py2exe\PLATLIB\*.*"
	SectionEnd
	Section "wxPython 2.9.4.0" MODULE_WXPYTHON
		SectionIn 1
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\wxpython\package\*.*"
	SectionEnd
	Section "PyODBC 3.0.6" MODULE_PYODBC
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pyodbc\PLATLIB\*.*"
	SectionEnd
	Section "PyGame 1.9.1" MODULE_PYGAME
		SectionIn 1
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\pygame\*.*"
	SectionEnd
	Section "PyQT 4.10.1" MODULE_PYQT
		SectionIn 1
		SetOutPath "$INSTDIR\App\Lib\"
		File /r "${SOURCESFOLDER}\pyqt\Lib\*.*"
		SetOutPath "$INSTDIR\App\Lib\site-packages\PyQT4\"
		File /r "${SOURCESFOLDER}\pyqt\$[31]\*.*"
		SetOutPath "$INSTDIR\App\"
		File "${SOURCESFOLDER}\qt.conf"
		SetOutPath "$INSTDIR"
		File "${SOURCESFOLDER}\QtDesigner-Portable.exe"
	SectionEnd
SectionGroupEnd

SectionGroup "Code editors"
	Section "PyScripter 2.5.3" IDE_PYSCRIPTER
		SectionIn 1 3
		SetOutPath "$INSTDIR"
		File /r "${SOURCESFOLDER}\PyScripter\*.*"
		File "${SOURCESFOLDER}\PyScripter-Portable.exe"
	SectionEnd
SectionGroupEnd

SectionGroup "`pip` packages"
    Section "Prepare `easy_install` and `pip`"
        Var /GLOBAL EasyInstall
        Var /GLOBAL Pip
        SectionIn 1 2 3 RO
        StrCpy $EasyInstall '$INSTDIR\App\Scripts\easy_install.exe'
        StrCpy $Pip '$INSTDIR\App\Scripts\pip.exe'
    SectionEnd

    Section "Install pip"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$EasyInstall pip'
    SectionEnd

    Section "Install blinker"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install blinker'
    SectionEnd

    Section "Install path"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install http://microfluidics.utoronto.ca/git/python___path.git/snapshot/da43890764f1ee508fe6c32582acd69b87240365.zip'
    SectionEnd

    Section "Install ipython"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install ipython'
    SectionEnd

    Section "Install pyutilib"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install pyutilib'
    SectionEnd

    Section "Install pyparsing"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install pyparsing'
    SectionEnd

    Section "Install configobj"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install configobj'
    SectionEnd

    Section "Install pyyaml"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install pyyaml'
    SectionEnd

    Section "Install pyzmq"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install pyzmq'
    SectionEnd

    Section "Install pygst"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install http://microfluidics.utoronto.ca/git/python___pygst.git/snapshot/43321ed8c1c59881a6bddd076b7fe19338b88f3e.zip'
    SectionEnd

    Section "Install opencv_examples"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install https://github.com/cfobel/python___opencv_examples/tarball/master'
    SectionEnd

    Section "Install pygst_utils.git"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install https://github.com/cfobel/pygst_utils/archive/zeromq.zip'
    SectionEnd

    Section "Install pygst_utils_windows_server"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install http://microfluidics.utoronto.ca/downloads/pygst_utils_windows_server-0.1.15.tar.gz'
    SectionEnd

    Section "Install geo_util"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install https://github.com/cfobel/python___geo_util/tarball/master'
    SectionEnd

    Section "Install pygtkhelpers"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install https://github.com/cfobel/pygtkhelpers/tarball/pre_object_tree'
    SectionEnd

    Section "Install flatland"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install http://microfluidics.utoronto.ca/git/python___flatland.git/snapshot/a5111ec9f822f7a42fdb69752f023bcec97257bd.zip'
    SectionEnd

    Section "Install pylint"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install http://download.logilab.org/pub/pylint/pylint-0.25.1.tar.gz'
    SectionEnd

    Section "Install labix_constraint"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install https://github.com/cfobel/python___labix_constraint/tarball/master'
    SectionEnd

    Section "Install jsonrpc"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install https://github.com/cfobel/python-jsonrpc/tarball/master'
    SectionEnd
SectionGroupEnd
