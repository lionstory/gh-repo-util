# Resolve the “CRLF will be replaced by LF” warning problem when submitting code on windows
#
# Download dos2unix tooling: https://waterlan.home.xs4all.nl/dos2unix.html#DOS2UNIX
# 	Example: wget https://waterlan.home.xs4all.nl/dos2unix/dos2unix-7.4.4-win64.zip
# Add dos2unix bin bath to windows system variable `path`
#
find . -type f -exec dos2unix {} \;
