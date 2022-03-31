setlocal
set crr=%~dp0
set crr=%crr:\=/%
set crr=%crr:C:=/cygdrive/c%
C:\cygwin64\bin\bash --login -i -c "cd %crr% && make"
exit