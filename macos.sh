#!/usr/bin/env bash

# # # # System preference # # # # # # # # # # # # # # # #

# # # # Desktop & Dock # # # # # # # # # # # # # # # # # #

    # System Preferences > Desktop & Dock > Dock > Minimise windows using:
    defaults write com.apple.dock mineffect -string "scale"

    # System Preferences > Desktop & Dock > Dock > Automatically hide and show the Dock:
    defaults write com.apple.dock autohide -bool true

    # System Preferences > Desktop & Dock > Dock > Show recent application in Dock:
    defaults write com.apple.dock show-recents -bool false

    # System Preferences > Desktop & Dock > Menu > Automatically show and hide the menu bar:
    defaults write NSGlobalDomain _HIHideMenuBar -bool true

    # System Preferences > Desktop & Dock > Mission Control > Automatically rearrange Spaces based on most recent use:
    defaults write com.apple.dock mru-spaces -bool false

# # # # Accessibility # # # # # # # # # # # # # # # # # #

    # System Preferences > Accessibility > Mouse & Trackpad > Trackpad Potions
    defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
    defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# # # # Keyboard # # # # # # # # # # # # # # # # # #

    ## Website to tune key-repeat preference https://mac-key-repeat.zaymon.dev/
    # System Preferences > Keyboard > Key repeat rate
     defaults write NSGlobalDomain KeyRepeat -int 1

    # System Preference > Keyboard > Delay until repeat
    defaults write NSGlobalDomain InitialKeyRepeat -int 10

    # Disable press and hold for special characters
    defaults write -g ApplePressAndHoldEnabled -bool false

    ## Navigation au clavier
    defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

    ## Remove Keyboard Shortcut related to screenshot to enable Cleanshot X
    # System Preference > Keyboard > Keyboard Shortcuts > Screenshots > Save picture of the Touch Bar as a file
    defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 181 "<dict><key>enabled</key><false/></dict>"

    # System Preference > Keyboard > Keyboard Shortcuts > Screenshots > Copy picture of the Touch Bar to the clipboard
    defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 182 "<dict><key>enabled</key><false/></dict>"

    # System Preference > Keyboard > Keyboard Shortcuts > Screenshots > Screenshot and recording options
    defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 184 "<dict><key>enabled</key><false/></dict>"

    # System Preference > Keyboard > Keyboard Shortcuts > Screenshots > Save picture of screen as a file
    defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 28 "<dict><key>enabled</key><false/></dict>"

    # System Preference > Keyboard > Keyboard Shortcuts > Screenshots > Copy picture of screen to the clipboard
    defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 29 "<dict><key>enabled</key><false/></dict>"

    # System Preference > Keyboard > Keyboard Shortcuts > Screenshots > Save picture of selected area as a file 
    defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 30 "<dict><key>enabled</key><false/></dict>"

    # System Preference > Keyboard > Keyboard Shortcuts > Screenshots > Copy picture of selected area to the clipboard 
    defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 31 "<dict><key>enabled</key><false/></dict>"

# # # # TrackPad # # # # # # # # # # # # # # # # # #

    # System Preferences > Trackpad > Point & Click > Tap to click: 
    defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
    defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

    # System Preferences > Trackpad > Scroll & Zoom > Natural scrolling: 
    defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# # # # Finder # # # # # # # # # # # # # # # # # # #

    # Finder > Advanced > Show all filename extensions
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true

