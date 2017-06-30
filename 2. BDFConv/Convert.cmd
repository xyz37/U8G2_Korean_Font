@ECHO OFF
SET tmpDir=%TEMP%
IF NOT EXIST ".\_Output" MD .\_Output

CALL :__Convert u8g2_font_unifont_t_korean_NanumGothicCoding_16
CALL :__Convert u8g2_font_unifont_t_korean_NanumGothicCoding_24
CALL :__Convert u8g2_font_unifont_t_korean_NanumGothicCoding_36

CALL :__Convert u8g2_font_unifont_t_korean_NanumGothicCoding_Bold_16
CALL :__Convert u8g2_font_unifont_t_korean_NanumGothicCoding_Bold_24
CALL :__Convert u8g2_font_unifont_t_korean_NanumGothicCoding_Bold_36

GOTO :END

::************************************************ Inner  Batch ************************************************ Label
:__Convert
bdfconv -f 1 -M korean.map -n %1 -o .\_Output\%1.c "..\1. OTF2BDF\_Output\%1.bdf"
GOTO :EOF
::********************************************************************************************************************


:END
ECHO Done