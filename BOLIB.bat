@ECHO OFF
DEL log.txt & RMDIR /s /q ".\.IBMi-cache" & python IBMi-lib-repo.py -e barrett-test
REM python IBMi-lib-repo.py -e barrett-test --creds test wasd