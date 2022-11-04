set service_name=my_flask_sleep_service
set path=C:\git\flask-sleep-service\
set wait=8
call nssm.exe install %service_name% %path%service.bat
timeout %wait% > NUL
call nssm.exe set %service_name% AppStdout %path%logs\my_flask_app_logs.log
call nssm.exe set %service_name% AppStderr %path%logs\my_flask_app_logs.log
call nssm.exe set %service_name% AppRotateFiles 1
call nssm.exe set %service_name% AppRotateOnline 0
call nssm.exe set %service_name% AppRotateSeconds 86400
call nssm.exe set %service_name% AppRotateBytes 1048576
