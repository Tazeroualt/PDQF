@echo off

rem Activate Python environment
call D:\DQF\alz\Scripts\activate.bat

rem Set the project directory path
set project_dir=D:\DQF\jaffle_shop

rem Create db_run_data folder if it doesn't exist
if not exist D:\DQF\dbt_run_data mkdir D:\DQF\dbt_run_data

rem Get current date with timezone
for /f %%x in ('powershell -command "Get-Date -Format yyyyMMddTHHmmss"') do set utc=%%x

rem Create folder inside dbt_run_data folder
set sub_store=D:\DQF\dbt_run_data\%utc%
mkdir %sub_store%

rem Run dbt test command with project directory path
dbt test --project-dir=%project_dir% --target-path=%sub_store%

rem Execute injection
cd D:\DQF\injection
python injection.py %sub_store%

@REM streamlit run st_temp.py
echo "Injection has been done (if no error appeared); temp checkmark"

rem Keep the CLI open until user closes it
cmd /k

rem start django server 
rem python manage.py runserver  in frontend folder