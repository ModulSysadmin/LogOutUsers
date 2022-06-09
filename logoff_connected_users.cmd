@echo off

msg * "О 00:00 вiдбудеться вiдключення вiд сервера i 1С. Для продовження роботи пiсля вiдключення пiдключiться знову."
timeout /t 300

for /F "tokens=3 delims= " %%A in (' 
		qwinsta ^| 
		findstr "rdp-tcp#" '
	) do (
		logoff %%A
)
