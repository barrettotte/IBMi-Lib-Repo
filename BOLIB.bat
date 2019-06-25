@ECHO OFF
DEL log.txt & RMDIR /s /q ".\.IBMi-cache" & python IBMi-lib-repo.py -e barrett-test