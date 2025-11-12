Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Running Population Analysis Project" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Step 1: Cleaning data..." -ForegroundColor Yellow
python scripts\data_cleaning.py
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error in data cleaning!" -ForegroundColor Red
    exit 1
}
Write-Host ""

Write-Host "Step 2: Generating bar chart..." -ForegroundColor Yellow
python scripts\population_bar_chart.py
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error in bar chart generation!" -ForegroundColor Red
    exit 1
}
Write-Host ""

Write-Host "Step 3: Generating histogram..." -ForegroundColor Yellow
python scripts\population_histogram.py
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error in histogram generation!" -ForegroundColor Red
    exit 1
}
Write-Host ""

Write-Host "Step 4: Generating combined visualization..." -ForegroundColor Yellow
python scripts\combined_visualization.py
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error in combined visualization!" -ForegroundColor Red
    exit 1
}
Write-Host ""

Write-Host "Step 5: Generating PDF report..." -ForegroundColor Yellow
python scripts\generate_pdf_report.py
if ($LASTEXITCODE -ne 0) {
    Write-Host "Error in PDF generation!" -ForegroundColor Red
    exit 1
}
Write-Host ""

Write-Host "========================================" -ForegroundColor Green
Write-Host "All steps completed successfully!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green

