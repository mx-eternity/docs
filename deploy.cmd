for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%

hugo
cd public
git add .
git commit
git push origin master