@echo off

msg * "� 00:00 �i��㤥���� �i����祭�� �i� �ࢥ� i 1�. ��� �த������� ஡�� �i�� �i����祭�� �i�����i���� �����."
timeout /t 300

for /F "tokens=3 delims= " %%A in (' 
		qwinsta ^| 
		findstr "rdp-tcp#" '
	) do (
		logoff %%A
)
