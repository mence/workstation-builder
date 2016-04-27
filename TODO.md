# TODO

Terminal & iTerm2 - https://github.com/mathiasbynens/dotfiles/blob/master/.osx#L561
Google Chrome - https://github.com/mathiasbynens/dotfiles/blob/master/.osx#L706

Sublime Text - https://github.com/mathiasbynens/dotfiles/blob/master/.osx#L755

Twitter - https://github.com/mathiasbynens/dotfiles/blob/master/.osx#L755
Tweetbot - https://github.com/mathiasbynens/dotfiles/blob/master/.osx#L755


  for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
    "Dock" "Finder" "Google Chrome" "Google Chrome Canary" "Mail" "Messages" \
    "Opera" "Photos" "Safari" "SizeUp" "Spectacle" "SystemUIServer" "Terminal" \
    "Transmission" "Tweetbot" "Twitter" "iCal"; do
    killall "${app}" &> /dev/null
  done
  echo "Done. Note that some of these changes require a logout/restart to take effect."
