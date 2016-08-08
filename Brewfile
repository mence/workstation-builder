cask_args appdir: '/Applications'

# Homebrew Taps
tap 'homebrew/bundle'
tap 'homebrew/core'
tap 'homebrew/dupes'
tap 'homebrew/versions'
tap 'homebrew/services'
tap 'homebrew/completions'
tap 'homebrew/command-not-found'
tap 'homebrew/tex'
#tap 'homebrew/nginx'
#tap 'homebrew/science'
#tap 'homebrew/emacs'
#tap 'homebrew/apache'
#tap 'homebrew/python'

# Caskroom Taps
tap 'caskroom/cask'
tap 'caskroom/fonts'
tap 'caskroom/versions'

# Mac App Store Taps
tap 'argon/mas'

# Other Taps
tap 'spotify/public'

# --- HOMEBREW APPLICATIONS ---

# Homebrew: Core
brew 'git'
brew 'curl'
brew 'openssl'
brew 'coreutils'
brew 'findutils'
brew 'homebrew/dupes/grep'

# Homebrew: Shell
brew 'bash'
brew 'bash-completion'
brew 'fish'
brew 'tmux'
brew 'tldr-pages/tldr/tldr'
brew 'thefuck'
brew 'cheat'

# Homebrew: Additional Shells
brew 'zsh'
brew 'zsh-completions'
#brew 'antigen' # Alternative package manager for Vim
#brew 'vundle' # Alternative package manager for Vim
brew 'mobile-shell'

# Homebrew: Development
brew 'entr'
brew 'cloc'
brew 'vim', args: ['override-system-vi']
brew 'emacs', args: ['with-cocoa', 'with-gnutls']
brew 'flow'
brew 'nvm' # TODO post-setup steps
brew 'nginx'
brew 'shellcheck'
brew 'ansible'
brew 'awscli'
brew 'git-extras'
brew 'httpie'
brew 's3cmd'
brew 'sift'
brew 'ssh-copy-id'
brew 'prettyping'
brew 'pv'
brew 'cookiecutter' # https://github.com/audreyr/cookiecutter

# Homebrew: ctags (https://github.com/universal-ctags/ctags)
tap 'universal-ctags/universal-ctags'
brew 'universal-ctags' --HEAD

# Homebrew: Testing
brew 'phantomjs'
brew 'casperjs'
brew 'jmeter'
brew 'vegeta'

# Homebrew: Testing
brew 'phantomjs'
brew 'casperjs'
brew 'jmeter'
brew 'vegeta'

# Homebrew: Databases
brew 'mysql', restart_service: :changed # TODO post-setup steps
brew 'postgresql', restart_service: :changed # TODO post-setup steps
brew 'sqlite'
brew 'memcached', restart_service: :changed
brew 'mongodb', restart_service: :changed
brew 'redis'

# Homebrew: Programming Languages
brew 'go'
brew 'mercurial'
brew 'node'
brew 'ruby'
brew 'racket'
brew 'ocaml'
brew 'elixir'
brew 'leiningen'
brew 'lua'

# Homebrew: Python
brew 'python'
brew 'autoenv'

# Homebrew: Java
brew 'checkstyle'

# Homebrew: Swift
brew 'swiftlint'

# Homebrew: C++
brew 'cppcheck'

# Homebrew: Git Addons
brew 'git-standup'

# Homebrew: Python
brew 'python'
brew 'autoenv'

# Homebrew: Git Addons
brew 'git-standup'

# Homebrew: Utilities
brew 'cputhrottle'
brew 'htop'
brew 'iftop' # TODO post-setup steps
brew 'mtr'
brew 'pstree'
brew 'tree'
# brew 'watch'
# brew 'watchman'
brew 'wget'
brew 'the_silver_searcher'
brew 'icdiff'
brew 'unrar'
brew 'nmap'
brew 'jq'

# Homebrew Shell Completion: https://github.com/Homebrew/homebrew-completions
brew 'apm-bash-completion'
brew 'boot2docker-completion'
brew 'brew-cask-completion'
brew 'bundler-completion'
brew 'docker-completion'
brew 'docker-compose-completion'
brew 'docker-machine-completion'
brew 'gem-completion'
brew 'grunt-completion'
brew 'launchctl-completion'
brew 'maven-completion'
brew 'pip-completion'
brew 'ruby-completion'
brew 'rails-completion'
brew 'rake-completion'
brew 'vagrant-completion'

# Homebrew: Video
brew 'ffmpeg',
  args: [
  'with-faac',
  'with-fdk-aac',
  'with-ffplay',
  'with-fontconfig',
  'with-freetype',
  'with-frei0r',
  'with-lame',
  'with-libass',
  'with-libbluray',
  'with-libcaca',
  'with-libsoxr',
  'with-libssh',
  'with-libvidstab',
  'with-libvorbis',
  'with-libvpx',
  'with-opencore-amr',
  'with-openjpeg',
  'with-openssl',
  'with-opus',
  'with-rtmpdump',
  'with-schroedinger',
  'with-speex',
  'with-theora',
  'with-tools',
  'with-webp',
  'with-x264',
  'with-x265',
  'with-xvid',
  'with-zeromq' ]
brew 'youtube-dl'
brew 'mpv',
  args: [
  'with-bundle',
  'with-libaacs',
  'with-libbluray',
  'with-libcaca',
  'with-libdvdnav',
  'with-libdvdread',
  'with-shared',
  'with-uchardet',
  'with-vapoursynth',
  'with-x11' ]

# Homebrew: Image Manipulation
brew 'imagemagick'
brew 'jp2a'
brew 'spaceman-diff'
brew 'gifify'
brew 'gist'
brew 'gifsicle'

# Homebrew: LaTeX
brew 'chktex'
brew 'libyaml'
brew 'asciidoc'
brew 'pandoc'

# Homebrew: Productivity
brew 'todo-txt'

# Homebrew: Fun
brew 'cowsay'
brew 'fortune'

# Homebrew: Mopidy
tap 'mopidy/mopidy'
brew 'mopidy/mopidy/mopidy'
brew 'mopidy/mopidy/libspotify'
brew 'mopidy/mopidy/mopidy-spotify'
brew 'mopidy/mopidy/mopidy-soundcloud'

# --- CASKROOM APPLICATIONS ---

# Casks: Main Applications
cask 'anylist'
cask 'fullcontact'
cask 'gephi'
cask 'vlc'
cask 'google-drive'
cask 'crashplan' # TODO SHA mismatch
cask 'keyboard-maestro6'
cask 'todotxt'
cask 'dropbox'
cask 'dayone-cli'
cask 'box-sync'
cask 'spotify'

# Casks: Launchers
cask 'alfred'
cask 'lacona'

# Casks: Terminal
cask 'iterm2-beta'
cask 'black-screen'
cask 'totalterminal'

# Casks: Development IDEs
cask 'atom'
cask 'sublime-text3'
cask 'intellij-idea'
#cask 'intellij-idea-eap' # EAP is the Beta
cask 'rubymine'
#cask 'rubymine-eap' # EAP is the Beta
cask 'webstorm'
#cask 'webstorm-eap' # EAP is the Beta
cask 'datagrip'
#cask 'datagrip-eap' # EAP is the Beta
cask 'dbeaver-community'
cask 'brackets'

# Casks: Development Utilities
cask 'virtualbox'
cask 'virtualbox-extension-pack'
cask 'vagrant'
cask 'karabiner'
cask 'hammerspoon'
cask 'heroku-toolbelt'
cask 'dash'
cask 'gephi'
cask 'screenhero'
cask 'little-snitch'
cask 'charles-beta'
cask 'electron'
cask 'wireshark'
cask 'cyberduck'
cask 'fishapp'
cask 'abricotine'
cask 'postman'
cask 'transmit'
brew 'textql'

# Casks: Docker
cask 'dockertoolbox'
tap 'zzrotdesign/tap'
brew 'docker-clean'
brew 'hadolint' # https://github.com/lukasmartinelli/hadolint

# Casks: Docker
cask 'dockertoolbox'
tap 'zzrotdesign/tap'
brew 'docker-clean'

# Casks: Git
cask 'rowanj-gitx'
cask 'tower-beta'
cask 'gitkraken'

# Casks: Depends on Java
cask 'java6'
cask 'java7'
cask 'java'
#brew 'maven'
tap 'jcgay/jcgay'
brew 'maven-deluxe' # maven with shiny colours
brew 'ant',
  args: [
  'with-ivy',
  'with-bcel' ]
brew 'jenkins'
brew 'neo4j'
cask 'dbvisualizer'

# Casks: Browsers
cask 'google-chrome'
cask 'google-chrome-canary'
cask 'google-photos-backup'
cask 'chromium'
#cask 'freesmug-chromium' # Alternate pre-compiled build
cask 'firefox'
cask 'opera'
cask 'brave'
cask 'min'
cask 'jadengeller-helium'

# Casks: Communication
cask 'nylas-n1'
cask 'slack'
cask 'gitter'
cask 'discord'
cask 'textual' # IRC
cask 'skype'
cask 'franz'
cask 'google-hangouts'
cask 'yakyak'

# Casks: Taskbar Apps
cask 'lastfm'
cask 'rescuetime'
cask 'viscosity'
cask 'shiftit'
cask 'bartender'
cask 'caffeine'
cask 'flux'
cask 'yujitach-menumeters'
cask 'istat-menus'
cask 'tripmode'

# Casks: Utilities
cask 'appcleaner'
cask 'basictex'
cask 'suspicious-package'
cask 'selfcontrol'
cask 'cheatsheet'
cask 'smcfancontrol'
cask 'carbon-copy-cloner'
cask 'ubersicht'
cask 'fluid'
cask 'deeper'
cask 'coconutbattery'
cask 'crunch' # TODO Confirm
cask 'knock' # TODO SHA mismatch
cask 'duet'
cask 'sequential'
cask 'diskwave'
cask 'phoneclean'

# Casks: Screensavers
cask 'aerial'
cask 'save-hollywood'

# Casks: Fun
cask 'steam'

# Casks: Betas
cask 'airmail-beta' # TODO SHA mismatch

# Casks: Other
cask 'mailbutler'
cask 'scansnap-manager-ix500' # TODO Download failed

# Casks: QuickLook Extensions
cask 'betterzipql'
cask 'cert-quicklook'
cask 'epubquicklook'
cask 'webpquicklook'
cask 'provisionql'
cask 'qlcolorcode'
cask 'qlmarkdown'
cask 'qlprettypatch'
cask 'qlstephen' # TODO Download failed
cask 'quicklook-csv'
cask 'quicklook-json'
cask 'qlImageSize'
cask 'qlplayground'
cask 'qlprettypatch'

# Casks: Fonts
cask 'font-anonymous-pro-for-powerline'
cask 'font-arimo'
cask 'font-baron'
cask 'font-bebas-neue'
cask 'font-bitter'
cask 'font-clear-sans'
cask 'font-cousine'
cask 'font-dejavu-sans-mono-for-powerline'
cask 'font-droid-sans-mono-for-powerline'
cask 'font-fira-code'
cask 'font-fira-mono-for-powerline'
cask 'font-fira-sans'
cask 'font-fontawesome'
cask 'font-hack'
cask 'font-hermit'
cask 'font-inconsolata'
cask 'font-inconsolata-dz-for-powerline'
cask 'font-inconsolata-for-powerline'
cask 'font-inconsolata-g-for-powerline'
cask 'font-input'
cask 'font-jaapokki'
cask 'font-karla'
cask 'font-league-gothic'
cask 'font-league-script'
cask 'font-liberation-mono-for-powerline'
cask 'font-meddon'
cask 'font-merriweather'
cask 'font-meslo-lg-for-powerline'
cask 'font-monoid'
cask 'font-montserrat'
cask 'font-open-sans'
cask 'font-open-sans-condensed'
cask 'font-raleway'
cask 'font-roboto'
cask 'font-roboto-slab'
cask 'font-rokkitt'
cask 'font-sauce-code-powerline'
cask 'font-sinkin-sans'
cask 'font-source-code-pro'
cask 'font-source-sans-pro'
cask 'font-source-serif-pro'
cask 'font-terminus'
cask 'font-ubuntu'
cask 'font-ubuntu-mono-powerline'
cask 'font-work-sans'

# --- MAC APP STORE APPLICATIONS ---
# Alternative command: appstore 'Foo'

# Primary Account
#mas '1Password', id: 443987910
#mas 'Evernote', id: 406056744
#mas 'Growl', id: 467939042
#mas 'HardwareGrowler', id: 475260933
#mas 'Sunrise Calendar', id: 886106985
#mas 'Keynote', id: 409183694
#mas 'Day One Classic', id: 422304217
#mas 'Pages', id: 409201541
#mas 'Numbers', id: 409203825
#mas 'Memory Clean - Monitor and Free Up Memory', id: 451444120
#mas 'Microsoft Remote Desktop', id: 715768417
#mas 'CCMenu', id: 603117688

# Secondary Account
mas 'Twitter', id: 409789998
mas 'TweetDeck by Twitter', id: 485812721
mas 'GrowlTunes', id: 499190094
mas 'WiFi Explorer', id: 494803304
mas 'Wunderlist', id: 410628904
mas 'DaisyDisk', id: 411643860
mas 'Reeder 3', id: 880001334
mas 'Day One', id: 1055511498

# --- MAINTENANCE ---

# Homebrew Brewfile manager
tap 'rcmdnk/file'
brew 'brew-file'

# --- OPTIONAL ---
# https://github.com/EricChiang/pup
#brew 'https://raw.githubusercontent.com/EricChiang/pup/master/pup.rb'

# https://github.com/redspread/spread
#tap 'redspread/spread'
#brew 'spread'
