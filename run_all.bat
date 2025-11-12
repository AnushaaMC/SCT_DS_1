@echo off
echo ========================================
echo Running Population Analysis Project
echo ========================================
echo.

echo Step 1: Cleaning data...
python scripts\data_cleaning.py
if errorlevel 1 (
    echo Error in data cleaning!
    pause
    exit /b 1
)
echo.

echo Step 2: Generating bar chart...
python scripts\population_bar_chart.py
if errorlevel 1 (
    echo Error in bar chart generation!
    pause
    exit /b 1
)
echo.

echo Step 3: Generating histogram...
python scripts\population_histogram.py
if errorlevel 1 (
    echo Error in histogram generation!
    pause
    exit /b 1
)
echo.

echo Step 4: Generating combined visualization...
python scripts\combined_visualization.py
if errorlevel 1 (
    echo Error in combined visualization!
    pause
    exit /b 1
)
echo.

echo Step 5: Generating PDF report...
python scripts\generate_pdf_report.py
if errorlevel 1 (
    echo Error in PDF generation!
    pause
    exit /b 1
)
echo.

echo ========================================
echo All steps completed successfully!
echo ========================================
pause

