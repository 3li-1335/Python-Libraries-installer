@echo off
for /f "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do set ESC=%%b
echo %ESC%[36mPython Libraries installer.%ESC%[0m
echo.
echo Last updated: 2026-03-31
echo -----------------------------------------------------------
echo numpy, pandas, matplotlib, spacy, nltk, textblob, langdetect, deep-translator, gensim, seaborn, scikit-learn, librosa, soundfile, jiwer, vosk, openai-whisper, librosa, soundfile
echo (Also includes: spaCy English model 'en_core_web_sm')
echo -----------------------------------------------------------
echo.

:: طلب مدخلات من المستخدم
set /p choice="Do you want to proceed with the installation? (y/n): "

:: التحقق من الإجابة
if /i "%choice%"=="y" (
    goto :install
) else if /i "%choice%"=="n" (
    goto :cancel
) else (
    echo Invalid input. Exiting...
    goto :end
)

:install
echo.
echo Installing required Python libraries...
python -m pip install numpy pandas matplotlib spacy nltk textblob langdetect deep-translator gensim seaborn scikit-learn librosa soundfile jiwer vosk openai-whisper librosa soundfile

echo.
echo Downloading spaCy English model...
python -m spacy download en_core_web_sm

echo.
echo Done. Installation complete.
goto :end

:cancel
echo.
echo Installation cancelled by user.
goto :end

:end
echo.
pause