# IBM C/C++ (VisualAge) Makefile for DBCSMAP, English version.
#
# To compile other languages, change 'NLV' (below) to the appropriate country
# code.  That NLV directory must exist and must have the correct language files.
#

CC     = icc.exe
RC     = rc.exe
LINK   = ilink.exe
IPFC   = ipfc.exe
CFLAGS = /Gm /Ss /Q+ /Wuse      # /Wrea /Wuni
RFLAGS = -x -n
LFLAGS = /NOE /PMTYPE:PM /NOLOGO /MAP
NAME   = dbcsmap
OBJS   = $(NAME).obj
MRI    = resource
LIBS   = libconv.lib libuls.lib

!ifndef NLV
    NLV = 001
!endif

!ifdef DEBUG
    CFLAGS   = $(CFLAGS) /Ti /Tm
    LFLAGS   = $(LFLAGS) /DEBUG
!endif

all         : $(NAME).exe $(NAME).hlp

$(NAME).exe : $(OBJS) $(NAME).h $(MRI).h $(MRI).res
                $(LINK) $(LFLAGS) $(OBJS) $(LIBS)
                $(RC) $(RFLAGS) $(MRI).res $@

$(MRI).res  : {$(NLV)}$(MRI).rc {$(NLV)}$(MRI).dlg $(MRI).h
                %cd $(NLV)
                $(RC) -i .. -r -n $(MRI).rc ..\$@
                %cd ..

$(NAME).hlp : {$(NLV)}$(NAME).ipf
                $(IPFC) -d:$(NLV) $< $@

clean       :
                del $(OBJS) $(MRI).res $(NAME).exe >NUL

