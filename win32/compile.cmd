"C:\Program Files (x86)\FreeBASIC\fbc.exe" "const.bas" -lib >> "compile-win32.log"
"C:\Program Files (x86)\FreeBASIC\fbc.exe" "clv002.bas" -lib >> "compile-win32.log"
"C:\Program Files (x86)\FreeBASIC\fbc.exe" "names.bas" -lib >> "compile-win32.log"
copy "*.a" "C:\Program Files (x86)\FreeBASIC\lib\win32\*.a" >> "compile-win32.log"
"C:\Program Files (x86)\FreeBASIC\fbc.exe" "puzzlum-fbc068.bas" -s gui ".\win32\rc\puzzlum.rc" >> "compile-win32.log"
"puzzlum-fbc068.exe"
exit