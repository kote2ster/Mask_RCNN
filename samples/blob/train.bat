@ECHO OFF
IF [%1] == [] (
    ECHO Using dataset from 'out' folder
    blob.py train --dataset=out --weights=coco
) ELSE (
    ECHO Using dataset from %1 folder
    ECHO Continuing from %2 dataset
    blob.py train --dataset=%1 --weights=%2
)