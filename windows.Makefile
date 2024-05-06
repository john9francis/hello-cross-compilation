WIN_DIST_DIR = windows
MAC_DIST_DIR = macOS

.PHONY: windows macOS

windows:
	if exist $(WIN_DIST_DIR) rmdir /s /q $(WIN_DIST_DIR)
	mkdir $(WIN_DIST_DIR)
	zig c++ main.cc -o $(WIN_DIST_DIR)/hello.exe

macOS:
	if exist $(MAC_DIST_DIR) rmdir /s /q $(MAC_DIST_DIR)
	mkdir $(MAC_DIST_DIR)
	zig c++ main.cc -o $(MAC_DIST_DIR)/hello -target aarch64-macos