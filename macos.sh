#!/usr/bin/env bash
 
# # # Desktop & Dock # # # # # # # # # # # # # # # # # #

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

# # # # TrackPad # # # # # # # # # # # # # # # # # #

    # System Preferences > Trackpad > Point & Click > Tap to click: 
    defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
    defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

    # System Preferences > Trackpad > Scroll & Zoom > Natural scrolling: 
    defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

