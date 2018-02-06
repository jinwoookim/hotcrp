@echo off
pushd \
%~d0
cd "%~dp0"
set vboxmanexe="%ProgramFiles%\Oracle\VirtualBox\VBoxManage.exe"
call :NORMALIZEPATH "..\"
set hcrplocpath=%RETVAL:~0,-1%
docker-machine stop default
%vboxmanexe% controlvm default poweroff soft
%vboxmanexe% sharedfolder remove default --name hcrp0
%vboxmanexe% sharedfolder add default --name hcrp0 --hostpath "%hcrplocpath%" --automount

popd

EXIT /B
:NORMALIZEPATH
  SET RETVAL=%~dpfn1
  EXIT /B