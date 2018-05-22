# macGetActiveWindowID

Command line utility that outputs the `windowid` of the current foremost/active window.

Download precompiled binary or compile yourself:
`gcc -framework cocoa -x objective-c -o getActiveWindowID getActiveWindowID.m`

### usage

`./getActiveWindowID` 

### examples

* `./getActiveWindowID` ==> `280972`
* Use in combination with screencapture to screenshot currently active / foremost window: `screencapture -l "$(./getActiveWindowID)" screenshot.png`
