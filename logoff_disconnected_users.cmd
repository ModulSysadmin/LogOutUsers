@echo off

for /F "tokens=2 delims= " %%A in (' 
		qwinsta ^| 
		findstr "���" ^| 
		findstr /v "services" '
	) do (
		logoff %%A
)
