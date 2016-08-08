# === Setup ===

# Install Powershell 3.0
./installPS30.ps1

# Update execution policy (this is insecure, don’t do that on your servers)
set-executionpolicy unrestricted -s cu

# === Scoop ===

# Install Scoop: https://github.com/lukesampson/scoop
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

# Scoop: Core Utilities
scoop install `
  7zip `
  coreutils `
  curl `
  git `
  grep `
  openssh `
  sed `
  wget `
  vim `
  grep `
  less `
  tail `
  sudo `
  tar `
  touch `
  ack `
  make `
  netcat `
  which `
  telnet `
  unzip `
  zip `
  --global

# Make Powershell pretty
scoop install concfg
concfg import solarized small
scoop install pshazz

# Scoop: Programming Languages
scoop install `
  python `
  ruby `
  go `
  perl `
  r

# Scoop: Build Tools
scoop install `
  ant `
  maven

# Scoop: Javascript
scoop install `
  nvm `
  phantomjs `
  casperjs

# Scoop: Fun
scoop install cowsay

# Scoop: Docker
scoop install
  docker-machine `
  docker `
  docker-compose

# Scoop: servers
scoop install nginx

# Scoop: Utilities
scoop install `
  ffmpeg `
  jq `
  rsync `
  vagrant `
  youtube-dl

# Scoop: Automation
scoop install puppet

# === Chocolatey ===
# Install Chocolatey: https://chocolatey.org/
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# Chocolatey Setup
#choco feature enable -n allowGlobalConfirmation

choco install jre8
choco install javaruntime

choco install notepadplusplus.install
choco install atom
choco install sublimetext3
choco install sublimetext3.packagecontrol
choco install sublimetext3.powershellalias
#choco install jivkok.SublimeText3.Packages # https://chocolatey.org/packages/jivkok.SublimeText3.Packages

choco install ghostscript.app
choco install cutepdf
#choco install dopdf # https://chocolatey.org/packages/doPDF

choco install dropbox
choco install googledrive

choco install tightvnc
#choco install ultravnc # https://chocolatey.org/packages/ultravnc

choco install daemontoolslite
choco install poweriso
choco install unetbootin
choco install virtualclonedrive

choco install crashplan
choco install prey

# Chocolatey: Applications
choco install googlechrome
choco install firefox
choco install flashplayerplugin
choco install flashplayeractivex

choco install vlc
choco install k-litecodecpackmega # http://www.codecguide.com/

choco install skype
choco install putty
choco install virtualbox
choco install calibre # https://chocolatey.org/packages/calibre
choco install fiddler
choco install steam
choco install spotify
choco install f.lux
choco install slack

choco install consolez
choco install defraggler
choco install nmap
choco install mingw
choco install nugetpackageexplorer
choco install procexp # https://chocolatey.org/packages/procexp
choco install cpu-z
choco install 1password
choco install yumi # https://chocolatey.org/packages/yumi/
choco install p4merge
choco install directx
choco install growl
choco install chromedriver2
choco install r.studio
choco install ultramon
#choco install livestreamer # https://chocolatey.org/packages/livestreamer

# Fix stupid windows things
choco install ccleaner
choco install ccenhancer
choco install windowsrepair
choco install javaruntime-preventasktoolbar
choco install linkshellextension
choco install rufus.install # https://chocolatey.org/packages/rufus.install
choco install wincommandpaste # https://chocolatey.org/packages/wincommandpaste
choco install jrt # https://www.malwarebytes.com/junkwareremovaltool/
choco install windowsupdate.disableautorestart # https://chocolatey.org/packages/WindowsUpdate.DisableAutoRestart
#choco install disableuac # https://chocolatey.org/packages/disableuac

choco install sabnzbd # https://chocolatey.org/packages/SABnzbd
