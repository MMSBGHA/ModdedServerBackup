@ECHO OFF
echo %1
SET /A "counter=0"
:label
echo "Entered loop"
IF  %counter% LEQ 10 (
    echo %counter%
    SET /A "counter = counter + 1"
    goto :label
)
echo "End loop"