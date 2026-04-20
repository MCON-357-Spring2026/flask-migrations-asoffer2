@echo off
setlocal

if "%BASE_URL%"=="" set BASE_URL=http://127.0.0.1:5000/exercises

echo Creating student...
curl -sS -X POST "%BASE_URL%/students" ^
  -H "Content-Type: application/json" ^
  -d "{\"name\":\"Ava\",\"email\":\"ava@example.com\"}"
echo.
echo.

echo Creating assignment...
curl -sS -X POST "%BASE_URL%/assignments" ^
  -H "Content-Type: application/json" ^
  -d "{\"title\":\"ORM Practice\",\"max_score\":100}"
echo.
echo.

echo Creating grade...
curl -sS -X POST "%BASE_URL%/grades" ^
  -H "Content-Type: application/json" ^
  -d "{\"score\":95,\"student_id\":1,\"assignment_id\":1}"
echo.
echo Done.

endlocal
