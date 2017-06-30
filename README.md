# U8G2 library Korean Font
This is a repository for the support of Korean NanumGothicCoding fonts for https://github.com/olikraus/u8g2

Arduino Due with SSD1306 OLED Graphic LCD tested.

<img width="800" height="600">![Hangul test with Arduino Due](/U8G2_Hangul.JPG)
<img width="800" height="600">![Hangul characters begin.](/Hangul1.png)
<img width="800" height="600">![Hangul characters end.](/Hangul1.png)

  ## References

* NanumGothicCoding Font
  * https://github.com/naver/nanumfont/releases/download/VER2.5/NanumGothicCoding-2.5.zip

* bdfconv.exe
  * https://github.com/olikraus/u8g2/blob/master/tools/font/bdfconv/bdfconv.exe

* odf2bdf.exe
  * https://www.math.nmsu.edu/~mleisher/Software/otf2bdf/

* bdfViewer.exe
  * http://www.komeil.com/blog/chortkeh-bdf-font-viewer-2-0


  ## How to use.

1. Convert TTF font to BDF with otf2bdf.exe in "1. OTF2BDF"

	Or change "1. OTF2BDF\Convet.cmd" contents.
    
	"1. OTF2BDF\Convet.cmd" makes "1. OTF2BDF\_Fonts\<font name.ttf>" to "1. OTF2BDF\_Output\*.bdf"
	
    It make 3 size(16pt, 24pt, 36pt) of fonts

2. Convert BDF to U8G2 library header with bdfconv.exe and korea.map in "2. BDFConv"

	Or "2. BDFConv\Convert.cmd" contents.
	
    "2. BDFConv\Convert.cmd" makes "1. OTF2BDF\_Output\*.bdf" to "2. BDFConv\_Output\*.c"


3. "2. BDFConv\_Output\*.c" copy your skech folder and rename extension .c to .h


4. Define include

<pre>
    #include "u8g2_font_unifont_t_korean_NanumGothicCoding_16.h"
</pre>

5. Here is a sample skech code.

<pre>
void setup(void) 
{
  u8g2.begin();
  u8g2.enableUTF8Print();
}

void loop(void) 
{
  u8g2.setFont(u8g2_font_unifont_t_korean_NanumGothicCoding_16);
  u8g2.setFontDirection(0);
  u8g2.clearBuffer();
  u8g2.setCursor(0, 16);
  u8g2.print("Hello!");
  u8g2.setCursor(0,40);
  u8g2.print("안녕 H ☞ ☯.");	
  u8g2.sendBuffer();
  
  delay(1000);
}
</pre>


  ## Notices
* korean.map was all of character in NanumGothicCoding font even English characters.
  * You possible font glyph can be checked with the BDF Viewer.
* The font size is so large that you can not use various sizes in Arduino.
  * This should be tested later.