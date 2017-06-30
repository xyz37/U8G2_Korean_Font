@ECHO OFF
SET tmpDir=%TEMP%
IF NOT EXIST ".\_Output" MD .\_Output
otf2bdf.exe -r 72 ".\_Fonts\³ª´®°íµñÄÚµù.ttf" -o ".\_Output\u8g2_font_unifont_t_korean_NanumGothicCoding_16.bdf" -p 16
otf2bdf.exe -r 72 ".\_Fonts\³ª´®°íµñÄÚµù.ttf" -o ".\_Output\u8g2_font_unifont_t_korean_NanumGothicCoding_24.bdf" -p 24
otf2bdf.exe -r 72 ".\_Fonts\³ª´®°íµñÄÚµù.ttf" -o ".\_Output\u8g2_font_unifont_t_korean_NanumGothicCoding_36.bdf" -p 36
					 
otf2bdf.exe -r 72 ".\_Fonts\³ª´®°íµñÄÚµù-Bold.ttf" -o ".\_Output\u8g2_font_unifont_t_korean_NanumGothicCoding_Bold_16.bdf" -p 16
otf2bdf.exe -r 72 ".\_Fonts\³ª´®°íµñÄÚµù-Bold.ttf" -o ".\_Output\u8g2_font_unifont_t_korean_NanumGothicCoding_Bold_24.bdf" -p 24
otf2bdf.exe -r 72 ".\_Fonts\³ª´®°íµñÄÚµù-Bold.ttf" -o ".\_Output\u8g2_font_unifont_t_korean_NanumGothicCoding_Bold_36.bdf" -p 36

ECHO Done