WIN_DIST_DIR = windows
MAC_DIST_DIR = macOS
LIN_DIST_DIR = linux

.PHONY: windows macOS linux

windows:
	if exist $(WIN_DIST_DIR) rmdir /s /q $(WIN_DIST_DIR)
	mkdir $(WIN_DIST_DIR)
	zig c++ main.cc -o $(WIN_DIST_DIR)/hello.exe -target x86_64-windows

macOS:
	if exist $(MAC_DIST_DIR) rmdir /s /q $(MAC_DIST_DIR)
	mkdir $(MAC_DIST_DIR)
	zig c++ main.cc -o $(MAC_DIST_DIR)/hello -target aarch64-macos

linux:
	if exist $(LIN_DIST_DIR) rmdir /s /q $(LIN_DIST_DIR)
	mkdir $(LIN_DIST_DIR)
	zig c++ main.cc -o $(LIN_DIST_DIR)/hello -target x86_64-linux
