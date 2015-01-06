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

InstType "Minimal"
InstType "Development"
InstType "All"

Section "!Python 2.7.5 core" PYTHON_CORE
	SectionIn 1 2 3 RO
	SetOutPath "$INSTDIR"
	File /r "${SOURCESFOLDER}\python-core\*.*"
	File "${SOURCESFOLDER}\Python-Portable.exe"
	File "${SOURCESFOLDER}\PythonW-Portable.exe"
	File "${SOURCESFOLDER}\IDLE-Portable.exe"
SectionEnd

SectionGroup "MicroDrop"
    ; Include packages here that are *required* for MicroDrop.
	Section "pymunk" MODULE_PYMUNK
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pymunk\PURELIB\*.*"
	SectionEnd 
	Section "PyWin32 218" MODULE_PYWIN32
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\pywin32\*.*"
	SectionEnd
	Section "lxml 2.3" MODULE_LXML
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\lxml\PLATLIB\*.*"
	SectionEnd
	Section "PyGTK 2.24.2" MODULE_PYGTK
        SectionIn 1 2 3 RO
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\pygtk\*.*"
		SetOutPath "$INSTDIR"
		File "${SOURCESFOLDER}\Glade3-Portable.exe"
	SectionEnd
    Section "Gevent" MODULE_GEVENT
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\gevent\PLATLIB\*.*"
    SectionEnd
    Section "Matplotlib" MODULE_MATPLOTLIB
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\matplotlib\PLATLIB\*.*"
    SectionEnd
    Section "Numexpr" MODULE_NUMEXPR
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\numexpr\PLATLIB\*.*"
    SectionEnd
    Section "Numpy" MODULE_NUMPY
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\numpy\PLATLIB\*.*"
        SetOutPath "$INSTDIR\App\Scripts"
        File /r "${SOURCESFOLDER}\numpy\SCRIPTS\*.*"
    SectionEnd
    Section "Pandas" MODULE_PANDAS
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\pandas\PLATLIB\*.*"
    SectionEnd
    Section "Pillow" MODULE_PILLOW
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\Pillow\PLATLIB\*.*"
        SetOutPath "$INSTDIR\App\Scripts"
        File /r "${SOURCESFOLDER}\Pillow\SCRIPTS\*.*"
    SectionEnd
    Section "Pyserial" MODULE_PYSERIAL
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\pyserial\PURELIB\*.*"
        SetOutPath "$INSTDIR\App\Scripts"
        File /r "${SOURCESFOLDER}\pyserial\SCRIPTS\*.*"
    SectionEnd
    Section "Python_Dateutil" MODULE_PYTHON_DATEUTIL
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\python_dateutil\PURELIB\*.*"
    SectionEnd
    Section "Pytz" MODULE_PYTZ
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\pytz\PURELIB\*.*"
    SectionEnd
    Section "Pyvisa" MODULE_PYVISA
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\PyVISA\PURELIB\*.*"
    SectionEnd
    Section "Scipy" MODULE_SCIPY
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\scipy\PLATLIB\*.*"
    SectionEnd
    Section "Sympy" MODULE_SYMPY
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App"
        File /r "${SOURCESFOLDER}\sympy\DATA\*.*"
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\sympy\PURELIB\*.*"
        SetOutPath "$INSTDIR\App\Scripts"
        File /r "${SOURCESFOLDER}\sympy\SCRIPTS\*.*"
    SectionEnd
    Section "Tables" MODULE_TABLES
        SectionIn 1 2 3 RO
        SetOutPath "$INSTDIR\App"
        File /r "${SOURCESFOLDER}\tables\DATA\*.*"
        SetOutPath "$INSTDIR\App\Lib\site-packages"
        File /r "${SOURCESFOLDER}\tables\PLATLIB\*.*"
        SetOutPath "$INSTDIR\App\Scripts"
        File /r "${SOURCESFOLDER}\tables\SCRIPTS\*.*"
    SectionEnd
SectionGroupEnd

SectionGroup "Optional"
	Section "NetworkX 1.7" MODULE_NETWORKX
		SectionIn 3
		SetOutPath "$INSTDIR\App\Lib\site-packages\networkx\"
		File /r "${SOURCESFOLDER}\networkx\networkx\*.*"
	SectionEnd
	Section "Django 1.5.1" MODULE_DJANGO
		SectionIn 3
		SetOutPath "$INSTDIR\App\Lib\site-packages\django\"
		File /r "${SOURCESFOLDER}\django\Django-1.5.1\django\*.*"
		SetOutPath "$INSTDIR\App\Scripts"
		File "${SOURCESFOLDER}\django\Django-1.5.1\django\bin\django-admin.py"
	SectionEnd
	Section "Py2Exe 0.6.9" MODULE_PY2EXE
		SectionIn 3
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\py2exe\PLATLIB\*.*"
	SectionEnd
	Section "wxPython 2.9.4.0" MODULE_WXPYTHON
		SectionIn 3
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\wxpython\package\*.*"
	SectionEnd
	Section "PyODBC 3.0.6" MODULE_PYODBC
		SectionIn 3
		SetOutPath "$INSTDIR\App\Lib\site-packages\"
		File /r "${SOURCESFOLDER}\pyodbc\PLATLIB\*.*"
	SectionEnd
	Section "PyGame 1.9.1" MODULE_PYGAME
		SectionIn 3
		SetOutPath "$INSTDIR\App\"
		File /r "${SOURCESFOLDER}\pygame\*.*"
	SectionEnd
	Section "PyQT 4.10.1" MODULE_PYQT
		SectionIn 3
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
		SectionIn 2 3
		SetOutPath "$INSTDIR"
		File /r "${SOURCESFOLDER}\PyScripter\*.*"
		File "${SOURCESFOLDER}\PyScripter-Portable.exe"
	SectionEnd
SectionGroupEnd

SectionGroup "`pip` packages"
    Section "Prepare `easy_install` and `pip`"
        Var /GLOBAL EasyInstall
        Var /GLOBAL Pip
        Var /GLOBAL PipInstallFlags
        SectionIn 1 2 3 RO
        StrCpy $EasyInstall '$INSTDIR\App\Scripts\easy_install.exe'
        StrCpy $Pip '$INSTDIR\App\Scripts\pip.exe'
        ; Use `--pre` argument to allow installation of [pre-release][1]
        ; package versions.
        ;
        ; [1]: http://stackoverflow.com/questions/18230956/could-not-find-a-version-that-satisfies-the-requirement-pytz
        StrCpy $PipInstallFlags ' --pre '
    SectionEnd

    Section "Install pip"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$EasyInstall pip'
    SectionEnd

    Section "Install blinker"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install blinker $PipInstallFlags'
    SectionEnd

    Section "Install path_helpers"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install path_helpers $PipInstallFlags'
    SectionEnd

    Section "Install ipython"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install ipython $PipInstallFlags'
    SectionEnd

    Section "Install pyutilib"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install pyutilib==3.9.2706 $PipInstallFlags'
    SectionEnd

    Section "Install pyparsing"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install pyparsing $PipInstallFlags'
    SectionEnd

    Section "Install configobj"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install configobj $PipInstallFlags'
    SectionEnd

    Section "Install pyyaml"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install pyyaml $PipInstallFlags'
    SectionEnd

    Section "Install pyzmq"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install pyzmq $PipInstallFlags'
    SectionEnd

    Section "Install pygst_utils.git"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install pygst_utils $PipInstallFlags'
    SectionEnd

    Section "Install pygtk-text-buffer-with-undo"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install pygtk-textbuffer-with-undo $PipInstallFlags'
    SectionEnd

    Section "Install task_scheduler"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install task-scheduler $PipInstallFlags'
    SectionEnd

    Section "Install pygst"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install http://microfluidics.utoronto.ca/git/python___pygst.git/snapshot/43321ed8c1c59881a6bddd076b7fe19338b88f3e.zip'
    SectionEnd

    Section "Install opencv_helpers"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install opencv_helpers $PipInstallFlags'
    SectionEnd

    Section "Install geo_util"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install geo_util $PipInstallFlags'
    SectionEnd

    Section "Install pygtkhelpers"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install wheeler.pygtkhelpers $PipInstallFlags'
    SectionEnd

    Section "Install flatland-fork"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install flatland-fork $PipInstallFlags'
    SectionEnd

    Section "Install pylint"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install http://download.logilab.org/pub/pylint/pylint-0.25.1.tar.gz'
    SectionEnd

    Section "Install wheeler.jsonrpc"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install wheeler.jsonrpc $PipInstallFlags'
    SectionEnd

    Section "Install microdrop_utility"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install microdrop_utility $PipInstallFlags'
    SectionEnd

    Section "Install svg_model"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install svg_model $PipInstallFlags'
    SectionEnd

    Section "Install application_repository"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install application_repository $PipInstallFlags'
    SectionEnd

    Section "Install bitarray"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install bitarray $PipInstallFlags'
    SectionEnd

    Section "Install protobuf"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install wheeler.arduino_rpc --pre $PipInstallFlags'
    SectionEnd

    Section "Install clang"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install clang --pre $PipInstallFlags'
    SectionEnd

    Section "Install clang-helpers"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install clang-helpers --pre $PipInstallFlags'
    SectionEnd

    Section "Install protobuf-helpers"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install protobuf-helpers --pre $PipInstallFlags'
    SectionEnd

    Section "Install nadamq"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install nadamq --pre $PipInstallFlags'
    SectionEnd

    Section "Install arduino_rpc"
        SectionIn 1 2 3 RO
        nsExec::ExecToLog '$Pip install wheeler.arduino_rpc --pre $PipInstallFlags'
    SectionEnd
SectionGroupEnd
