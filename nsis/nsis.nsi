!define PRODUCT_NAME "I want to go home"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "It's not my company, Inc."
!define PRODUCT_WEB_SITE "https://its.not.my.company"

!include "MUI.nsh"

!insertmacro MUI_PAGE_LICENSE "home.txt"
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "Korean"

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "I want to go home.exe"

Section "MainSection" SEC01
SectionEnd