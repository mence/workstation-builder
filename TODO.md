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

https://github.com/vonwenm/CHOCCO-LAB/blob/master/XXX-setup.ps1

# TODO: Consider these

seafile
owncloud

# DONE
## correct name
dockertoolbox
webpquicklook

## post java
jenkins
neo4j

## retry download
qlstephen

# sha mismatch
knock
airmail-beta

# MAS Failed
Evernote - Unknown Error
Sunrise Calendar - Unknown Error
Wunderlist: To-Do List & Tasks - Unknown Error

# MAS Failed due to not purchased
GrowlTunes - Unknown Error

# TODO

https://dl.dropboxusercontent.com/u/622216/battleschool/playbooks/playbook.yml

```
- name: install gvm the Groovy enVironment Manager
  mac_pkg: pkg_type=script script_creates=/usr/local/bin/gvm
           script_prefix="echo | " script_exe=bash
           url=http://get.gvmtool.net
```

## Brew
dnsmasq


# LONG TERM BROKEN

## sha mismatch
crashplan
font-sinkin-sans

## download failed (404)
scansnap-manager-ix500

## Font hardlink failed
font-work-sans

