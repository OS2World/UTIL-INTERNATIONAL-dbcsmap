:userdoc.

:h1 x=left y=bottom width=100% height=100% res=100.Double Byte Character Map
:p.DBCSMAP is a character map program for double-byte characters. It supports
Unicode text, as well as the double-byte portions of selected East Asian
(CJK) encodings.

:p.Unlike standard ASCII-based text, double-byte characters are represented
using two bytes instead of one. This allows up to 65,536 characters (256&sup2.)
to be represented within a double-byte encoding, or :hp1.codepage:ehp1..

:p.When using DBCSMAP, you select both a codepage and the desired value of
the first (or leading) byte. DBCSMAP then combines the leading byte with all
possible second-byte values to produce a range of 256 possible character
values. The corresponding characters are displayed in the grid.

:p.The controls on the left-hand side of the window include&colon.

:dl break=all.
:dt.Encoding
:dd.The "Codepage" control allows you to select the codepage (character
encoding) to display.  The "Leading byte" selector is used to specify
the desired leading byte (shown in hexadecimal notation).  The range of available
leading byte values may vary depending on the codepage.

:dt.Selected character
:dd.This area shows an enlarged image of whatever character is currently selected
(if any), with the corresponding byte values shown immediately below (in both
hexadecimal and decimal formats).

:dt.Copied characters
:dd.Provides controls for managing characters copied to the clipboard.  See
:link reftype=hd res=400.Copying Characters:elink. for more information.
:edl.

:p.
:p.:hp7.More Information:ehp7.
:ul compact.
:li.:link reftype=hd res=200.Selecting fonts:elink.
:li.:link reftype=hd res=300.Supported codepages:elink.
:li.:link reftype=hd res=400.Copying characters in DBCSMAP:elink.
:li.:link reftype=hd res=500.Pasting characters into other applications:elink.
:eul.


:p.
:h1 x=left y=bottom width=100% height=100% res=200.Fonts
:p.You can change the font used for character display through the "Options"
menu.  For best results, you should use an outline font (TrueType or Type 1).

:p.In order to view Unicode characters properly, you must use a font that
supports Unicode encoding. Non-Unicode CJK fonts for Japanese, Korean, or
Chinese may be used, but are unlikely to correctly display characters under
codepages (including Unicode) other than those for which they are intended.

:p.Starting with Warp Server for e-business, OS/2 has come with several
Unicode fonts available out of the box&colon.
:dl break=all.
:dt.Times New Roman WT J
.br
Times New Roman WT K
.br
Times New Roman WT TC
.br
Times New Roman WT TT
:dd.A proportional serif font, also available under the name "Times New Roman
MT 30".  (The four different versions have their Chinese character styles
optimized for cultural variations between Japanese, Korean, Simplified Chinese
and Traditional Chinese, respectively.  For the most part, however, any one of
them is suitable for generic use.)
:dt.Monotype Sans Duospace WT J
.br
Monotype Sans Duospace WT K
.br
Monotype Sans Duospace WT TC
.br
Monotype Sans Duospace WT TT
:dd.A monospaced sans-serif font (locale-optimized in the same way as above).
:edl.

:p.For earlier OS/2 versions, "Times New Roman MT 30" is available as part of
the Java 1.1.8 runtime package from IBM (Unicode font version).

:p.You can also get comprehensive Unicode fonts from other sources.  Some
commonly-encountered ones include&colon.
:dl break=all.
:dt.Bitstream Cyberbit
:dd.A proportional serif font with comprehensive support for many
languages. It is available from
http&colon.//ftp.netscape.com/pub/communicator/extras/fonts/windows/Cyberbit.ZIP
and is free for non-commercial use.
:dt.Arial Unicode MS
:dd.This font comes with recent versions of Microsoft Office, and is installed
under Windows if certain language options are selected.  It can be installed under
OS/2 by obtaining the file ARIALUNI.TTF and installing it in the usual way.  (A
valid license for Microsoft Office is required.)
:dt.Code 2000
:dd.This is a proportional serif font with support for a vast range of languages
and character sets.  It is inexpensive shareware, available from
http&colon.//www.code2000.net.
:edl.


:h1 x=left y=bottom width=100% height=100% res=300.Supported Codepages
:p.DBCSMAP is currently designed to handle the following codepages.

:p.It is important to note that, with the exception of Unicode (UCS-2), all of
these are variable-width encodings, with a mixture of single- and double-byte
characters. DBCSMAP :hp2.only:ehp2. supports the double-byte portions of these
codepages.  If you need access to characters which are normally encoded as
single-byte values, you should use the Unicode encoding (which supports all
characters).

:dl break=all.
:dt.938 (Taiwan SAA)
:dd.This is an implementation of the CNS-11643 Traditional Chinese character
set (with IBM extensions).  It is provided mainly for compatibility purposes,
as BIG-5 encoding (see codepage 950, below) is more commonly used for
Traditional Chinese text.

:dt.942 (Japan SJIS-1978)
:dd.This is an older version of Shift-JIS encoding (see codepage 943, below)
that is based on the JIS-X-0208-1978 standard instead of the more recent 1990
standard.

:dt.943 (Japan SJIS-1990)
:dd.This is the PC Shift-JIS encoding for Japanese text, which is based on the
official JIS-X-0208-1990 character set standard (with IBM/NEC/Microsoft
extensions). It is used as the &osq.native&csq. Japanese encoding under OS/2
and Windows, and is sometimes also called :hp1.Windows-31J:ehp1. encoding. Note
that codepage 943 is alternatively referred to as codepage 932; the two are
equivalent.

:dt.944 (Korea SAA)
:dd.This is an older IBM encoding for Korean, provided for compatibility with
other systems.  Wansung encoding (see codepage 949, below) is more commonly
used for Korean text.

:dt.949 (Korea KS-Code)
:dd.This is the IBM implementation of the Korean Wansung character set
standard. It includes KSC-5601 EUC code set 1 plus IBM MBCS-PC extensions.

:nt.The OS/2 version of codepage 949 only supports the basic Wansung character
set (plus the IBM extensions). There is a replacement codepage table available
which updates codepage 949 to support the MS Unified Hangul Code ("Extended
Wansung") encoding.
:p.To install the updated codepage table, download
http&colon.//www.borgendale.com/tools/ulstools.zip, extract the updated IBM949
codepage table from the archive, and copy it over the existing version under
\LANGUAGE\CODEPAGE on your boot drive.:ent.

:dt.950 (Taiwan BIG-5)
:dd.This is the BIG-5 encoding for Traditional Chinese text (as used in Hong
Kong and Taiwan). It is the default codepage used by Traditional Chinese
DBCS versions of OS/2.

:dt.1381 (China GB)
:dd.This is the IBM MBCS-PC implementation of the GB-2312 character set
standard for Simplified Chinese text (as used in the People's Republic of
China).

:dt.1386 (China GBK)
:dd.This is the IBM MBCS-PC implementation of the GBK character set standard
for Simplified Chinese text, which is a superset of the older GB-2312.  It is
the default codepage used by Simplified Chinese DBCS versions of OS/2, and is
approximately equivalent to Windows codepage 936.

:dt.Unicode (Plane 0)
:dd.Unicode is a &osq.universal&csq. text encoding that is rapidly becoming
the dominant standard for representing multilingual text.
:p.OS/2, and therefore DBCSMAP, supports only Plane 0 of Unicode, called the
:hp1.Basic Multilingual Plane:ehp1.. This nonetheless provides support for
tens of thousands of characters representing almost all writing systems in
use around the world today.
:p.DBCSMAP represents Unicode characters in the codepage selector according
to 2-byte Universal Character Set (UCS-2) values.  (When copied to the
clipboard as plain text, however, they are stored in UTF-8 format.  See
:link reftype=hd res=400.Copying Characters:elink. for details.)
:edl.


:h1 x=left y=bottom width=100% height=100% res=400.Copying Characters
:p.A character can be copied to the clipboard either by double-clicking on
it in the character map, or by highlighting it and then selecting "Add".

:p.The first character copied in this way after you start DBCSMAP will replace
the previous clipboard contents (if any).  However, any subsequent characters
copied by DBCSMAP will be appended to those previously copied.  DBCSMAP
'remembers' previously-copied characters, so even if you clear or replace
the contents of the clipboard using another program, the characters you copied
using DBCSMAP will be restored to the clipboard the next time you copy a
character.  (Or, alternatively, if you select "Re-copy all" from the "Edit"
menu.)  These 'remembered' characters are sometimes referred to as the
'clipboard buffer', and are displayed in the clipboard panel.

:p.The "Clear" button erases the current clipboard contents, including any
characters previously copied with DBCSMAP.  The "Delete" button erases only
the last character from the clipboard buffer.

:p.When a character is copied, the raw double-byte value of that character (as
shown beneath the glyph preview window) is placed onto the clipboard in plain
text format &endash. :hp1.except:ehp1. in the case of Unicode characters, which
are stored as one-to-three-byte UTF-8 values instead (since most applications
are not capable of processing raw UCS byte values as plain text).

:p.However, if you select a new codepage while characters are still in the
clipboard, those characters will be converted into their equivalents under the
new codepage. This means that the byte values of previously-copied characters
may change (to the appropriate values under the new codepage). If a character
does not exist in the new codepage, it will be replaced with a generic
substitution character.

:p.In addition, all copied characters are also placed on the clipboard in the
custom "text/unicode" format (Unicode UCS-2), if the "Copy Unicode" option is
enabled (as it is by default).  Applications which support this clipboard
format (such as the Mozilla family of products) will generally use it when
pasting, in preference to the plain text format, whenever possible.
:p.If this seems confusing, refer to the example below.

:p.
:p.:hp5.Copying Example:ehp5.
:p.Let's say you have codepage 943 (Japan SJIS-1990) selected, and you copy
the character 0x82E2 (Japanese hiragana character &osq.YA&csq.).
:p.:artwork name='943_82e2.bmp' align=center.
:p.Copying this character causes the byte sequence 0x82E2 to be placed in
the clipboard under the plain text format, and the equivalent Unicode value
for the same character (U+3084) to be placed in the clipboard under the
text/unicode (UCS-2) format.
:p.At this point the clipboard contains&colon.
:xmp.
    Text format (CF_TEXT)&colon.    0x82E2 (codepage 943 value for YA hiragana)
    Text/unicode format&colon.      U+3084 (UCS-2 value for YA hiragana)
:exmp.
:p.If you then change the selected codepage to Unicode with this character
still in the clipboard, DBCSMAP will convert it to the equivalent UTF-8
value for Japanese &osq.YA&csq. hiragana. (The text/unicode value for the
character remains unchanged, as it is codepage-independent.)  The clipboard
now contains&colon.
:xmp.
    Text format (CF_TEXT)&colon.    0xE38284 (UTF-8 value for YA hiragana)
    Text/unicode format&colon.      U+3084   (UCS-2 value for YA hiragana)
:exmp.
:p.Finally, let's say you change the selected codepage again, this time to
949 (Korea KS-Code).  The character, if it is still in the clipboard, will
once again be converted to the appropriate value for this new codepage&colon.
:xmp.
    Text format (CF_TEXT)&colon.    0xAAE4 (codepage 949 value for YA hiragana)
    Text/unicode format&colon.      U+3084 (UCS-2 value for YA hiragana)
:exmp.


:h1 x=left y=bottom width=100% height=100% res=500.Pasting Characters
:p.When you paste copied characters into another application, the
text/unicode value will be pasted if (and only if) the application in
question supports it; otherwise, only the plain text value will be pasted.

:p.Pasted characters will be displayed according to the capabilities of the
target application.  Unless the application uses Unicode directly for
rendering text (which is relatively uncommon), this generally means that
they will be rendered using whatever codepage and font are currently active
in that application.  If the codepage/font combination is not capable of
displaying the pasted characters, they will not be displayed correctly.

:p.For example, if you copied character 0x82E2 (Japanese &osq.YA&csq. hiragana)
from codepage 943 (Japan SJIS-1990) in DBCSMAP, attempting to paste it into
an application that does not support the text/unicode clipboard format will
cause the character value 0x82E2 to be pasted verbatim.  This will only appear
in the target application as a &osq.YA&csq. hiragana character if that
application is using codepage 943 (or a compatible codepage such as 932) for
display, :hp1.and:ehp1. a font containing that character.


.* :h1 x=left y=bottom width=100% height=100% res=600.Common Problems
.* :p.
.* :dl.
.* :dt.
.* :dd.
.* :edl.

:euserdoc.
