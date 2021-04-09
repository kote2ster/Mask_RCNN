@ECHO OFF
IF [%1] == [] (
    ECHO Using dataset from 'out' folder
    blob.py train --dataset=out --weights=last
) ELSE (
    ECHO Using dataset from '%1' folder
    blob.py train --dataset=%1 --weights=last
)