cask_args appdir: '/Applications'

# Homebrew Taps
tap 'homebrew/bundle'
tap 'homebrew/core'
tap 'homebrew/services'
tap 'homebrew/command-not-found'
# tap 'homebrew/science'
# tap 'homebrew/emacs'
# tap 'homebrew/apache'
# tap 'homebrew/python'

# Caskroom Taps
tap 'caskroom/cask'
tap 'caskroom/fonts'
tap 'caskroom/versions'
tap 'caskroom/drivers'

# Other Taps
tap 'spotify/public'

# Personal Tap
tap 'mence/mence'

# --- HOMEBREW CORE ---

# Mac App Store Install
brew 'mas'

# --- HOMEBREW APPLICATIONS ---

# Homebrew: Core Dependencies
brew 'git'
brew 'hub'
brew 'curl'
brew 'openssl'
brew 'grep'
brew 'wget',
     args: [
       'with-gpgme',
       'with-libmetalink',
       'with-pcre'
     ]
# brew 'python'
brew 'python@2' # only use Python 2
brew 'gcc'
brew 'gpg2',
     args: [
       'with-gpg-zip',
       'with-gpgsplit',
       'with-readline'
     ]
brew 'bat'

# Caskroom: Dependencies
cask 'xquartz'

# Homebrew: Supplementary Dependencies
brew 'imagemagick',
     args: [
       'with-fftw',
       'with-fontconfig',
       'with-ghostscript',
       'with-hdri',
       'with-little-cms',
       'with-little-cms2',
       'with-opencl',
       'with-openexr',
       'with-openjpeg',
       'with-openmp',
       'with-pango',
       'with-webp'
     ]

# Homebrew: Shell
brew 'bash'
brew 'bash-completion'
brew 'tmux'
brew 'thefuck'
brew 'cheat'
brew 'fzf'
brew 'hh'

# Homebrew: tldr
tap 'tldr-pages/tldr'
brew 'tldr-pages/tldr/tldr'

# Homebrew: Linux Utilities
brew 'hfsutils'
brew 'coreutils',
     args: [
       'with-gmp'
     ]
brew 'moreutils'
brew 'findutils'

# Homebrew: Additional Shells
brew 'zsh'
brew 'zsh-completions'
# brew 'antigen' # Alternative package manager for Zsh
brew 'mobile-shell'

# Homebrew: git
brew 'git-extras'
brew 'git-lfs'
brew 'git-quick-stats'

# Homebrew: Development
brew 'entr'
brew 'cloc'
brew 'tokei' # a better cloc
brew 'emacs',
     args: [
       'with-cocoa',
       'with-gnutls'
     ]
brew 'shellcheck'
brew 'ansible'
brew 'packer'
brew 'packer-completion'
brew 'httpie'
brew 'sift'
brew 'ssh-copy-id'
brew 'prettyping'
brew 'pv'
brew 'cookiecutter' # https://github.com/audreyr/cookiecutter
brew 'jid'
brew 'jq' # parse JSON at command line
brew 'pup' # parse HTML at command line
brew 'xsv' # parse CSV at command line
brew 'json-table'
brew 'consul',
     args: [
       'with-web-ui'
     ],
     restart_service: :changed
brew 'borg'

# Homebrew: Web Servers
brew 'nginx'
brew 'caddy'

# Homebrew: Network
brew 'speedtest_cli'

# Homebrew: ctags (https://github.com/universal-ctags/ctags)
tap 'universal-ctags/universal-ctags'
brew 'universal-ctags',
     args: [
       'HEAD'
     ]

# Homebrew: Testing
brew 'phantomjs'
brew 'casperjs'
brew 'jmeter'
brew 'vegeta'
brew 'chromedriver'
brew 'webkit2png'
brew 'gor'
tap 'loadimpact/k6'
brew 'k6'

# Homebrew: Databases
brew 'mysql', restart_service: :changed # TODO: post-setup steps
brew 'mycli'
brew 'postgresql', restart_service: :changed # TODO: post-setup steps
brew 'sqlite'
# brew 'memcached', restart_service: :changed
brew 'mongodb', restart_service: :changed
brew 'redis'
brew 'cockroach'

# Homebrew: Golang
brew 'go'
brew 'glide' # go package manager
tap 'msoap/tools'
brew 'go-carpet'

# Homebrew: Programming Languages
brew 'mercurial'
brew 'ruby'
brew 'ocaml'
brew 'erlang'
brew 'elixir'
brew 'leiningen'

# Homebrew: Javascript
brew 'node'
brew 'nvm'
brew 'flow'
brew 'yarn'

# Homebrew: Python
brew 'autoenv'
brew 'pyenv'
brew 'pyenv-virtualenv'
brew 'pyenv-virtualenvwrapper'

# Homebrew: Java
brew 'checkstyle'

# Homebrew: Swift
brew 'swiftlint'

# Homebrew: C++
brew 'cppcheck'

# Homebrew: top viewers
brew 'htop'
brew 'iftop' # TODO: post-setup steps
brew 'apachetop'
brew 'ctop'
brew 'dnstop'
brew 'innotop'
brew 'mytop'
brew 'jnettop'
brew 'libgtop'
# brew 'memcache-top'
# brew 'sqtop' # Display information about active connections for a Squid proxy
brew 'pg_top'

# Homebrew: Cloud Services
brew 'awscli'
brew 's3cmd'
brew 'heroku'

# Homebrew: Utilities
brew 'cputhrottle'
brew 'mtr'
brew 'pstree'
brew 'tree'
brew 'watch'
# brew 'watchman'
brew 'the_silver_searcher'
brew 'fd'
brew 'icdiff'
brew 'diff-so-fancy'
brew 'unrar'
brew 'nmap'
brew 'neofetch' # For making fancy screenshots: https://github.com/dylanaraps/neofetch
brew 'dnsmasq',
     args: [
       'with-dnssec',
       'with-libidn'
     ]
brew 'dark-mode' # Control the macOS dark mode from the command-line
brew 'pwgen'
brew 'graphviz',
     args: [
       'with-app',
       'with-bindings',
       'with-freetype',
       'with-gts',
       'with-librsvg',
       'with-pango',
       'with-x11'
     ],
brew 'progress' # previously known as cv
brew 'noti' # trigger a macOS notification

# Homebrew: Monitoring
# brew 'metricbeat'
# brew 'packetbeat'
brew 'prometheus'

# Homebrew: Security
brew 'mac-robber'
brew 'spoof-mac'
brew 'bettercap'
brew 'testssl'

# Homebrew Shell Completion: https://github.com/Homebrew/homebrew-completions
brew 'apm-bash-completion'
brew 'boot2docker-completion'
brew 'brew-cask-completion'
brew 'bundler-completion'
brew 'docker-compose-completion'
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
       'with-zeromq'
     ]
brew 'youtube-dl'
brew 'mpv'

# Homebrew: Image Manipulation
brew 'jp2a'
brew 'spaceman-diff'
brew 'gifify'
brew 'gist'
brew 'gifsicle'
brew 'vbindiff'

# Homebrew: Productivity
brew 'todo-txt'
# Requires Day One. Post-install sync: http://jrnl.sh/advanced.html
brew 'jrnl' # https://github.com/maebert/jrnl

# Homebrew: Blogs
brew 'hugo'

# Homebrew: Fun
brew 'cowsay'
brew 'fortune',
     args: [
       'without-offensive'
     ]

# Homebrew: Mopidy
# May not be necessary for every machine
# tap 'mopidy/mopidy'
# brew 'mopidy/mopidy/mopidy'
# brew 'mopidy/mopidy/libspotify'
# brew 'mopidy/mopidy/mopidy-spotify'
# brew 'mopidy/mopidy/mopidy-soundcloud'

# --- CASKROOM APPLICATIONS ---

# Casks: Main Applications
cask 'anylist'
cask 'fullcontact'
cask 'gephi'
cask 'vlc'
cask 'keyboard-maestro6'
cask 'todotxt'
cask 'dayone-cli'
cask 'lastpass'

# Casks: Entertainment
cask 'spotify'
cask 'sonos'
# cask 'mkchromecast'
cask 'statusfy'

# Casks: Cloud Storage
# cask 'dropbox' # TODO Install separately
cask 'google-backup-and-sync' # replaces Google Drive for consumers
cask 'google-drive-file-stream' # replaces Google Drive for enterprise
cask 'box-sync'
cask 'resilio-sync'
cask 'amazon-drive'

# Casks: Launchers
cask 'alfred2'
# cask 'lacona' # https://www.lacona.io/

# Casks: Terminal
cask 'iterm2-beta'
cask 'black-screen'
cask 'totalterminal'

# Casks: Depends on Java
cask 'java6'
cask 'zulu7'
cask 'java8'
cask 'java'
brew 'maven'
tap 'jcgay/jcgay'
# brew 'maven-deluxe' # maven with shiny colours
brew 'ant',
     args: [
       'with-ivy',
       'with-bcel'
     ]
brew 'jenkins' # alternative is Dockerized Jenkins
brew 'neo4j'
cask 'dbvisualizer'
brew 'swagger-codegen'
brew 'jvmtop'

# Casks: Development IDEs
cask 'atom'
cask 'sublime-text'
cask 'intellij-idea'
# cask 'intellij-idea-eap' # EAP is the Beta
cask 'rubymine'
# cask 'rubymine-eap' # EAP is the Beta
cask 'webstorm'
# cask 'webstorm-eap' # EAP is the Beta
cask 'datagrip'
# cask 'datagrip-eap' # EAP is the Beta
cask 'dbeaver-community'
cask 'brackets'
cask 'graphql-ide'
cask 'racket'
cask 'visual-studio-code'

# Casks: Shells
cask 'fish'

# Casks: Development Utilities
cask 'virtualbox'
cask 'virtualbox-extension-pack'
cask 'vagrant'
# Manually install via brew cask install karabiner --no-binaries
# cask 'karabiner', args: { no-binaries }
cask 'hammerspoon'
cask 'dash'
cask 'gephi'
cask 'screenhero'
cask 'electron'
cask 'cyberduck'
cask 'transmit'
brew 'textql'
cask 'pgweb'
cask 'sequel-pro'

# Casks: Network / Traffic Testing
cask 'wireshark'
cask 'little-snitch'
cask 'charles'
cask 'postman'
cask 'angry-ip-scanner'
cask 'insomnia'
cask 'ngrok'

# Casks: Docker
cask 'docker-edge'
brew 'docker-clean'
brew 'hadolint' # https://github.com/lukasmartinelli/hadolint
# brew 'helios-solo' # https://github.com/spotify/helios
cask 'osxfuse'
tap 'datawire/blackbird'
brew 'datawire/blackbird/telepresence'

# Casks: Kubernetes and Terraform
brew 'terraform'
brew 'kubectl'
cask 'minikube' # https://github.com/kubernetes/minikube/releases
brew 'kubernetes-helm'
tap 'ksonnet/tap'
brew 'ksonnet/tap/ks'
brew 'kube-ps1' # https://github.com/jonmosco/kube-ps1
brew 'kubectx'
tap 'wata727/tflint'
brew 'tflint'

# Casks: Git
cask 'rowanj-gitx'
cask 'tower'
# cask 'tower-beta'
cask 'gitkraken'

# Homebrew: Vim
brew 'lua', args: ['with-completion']
brew 'luajit'
brew 'vim',
     args: [
       'with-client-server',
       'with-gettext'
       'with-lua',
       'with-luajit',
       'with-override-system-vi',
       'with-python@2'
     ]
# brew 'vundle' # Alternative package manager for Vim
cask 'macvim'

# Casks: Google
cask 'google-photos-backup'
cask 'google-cloud-sdk'
cask 'google-hangouts'
cask 'google-earth'

# Casks: Browsers
cask 'google-chrome'
cask 'google-chrome-canary'
cask 'chromium'
# cask 'freesmug-chromium' # Alternate pre-compiled build
cask 'firefox'
cask 'opera'
cask 'brave'
cask 'min'
cask 'jadengeller-helium'

# Casks: Communication
cask 'slack'
cask 'hipchat'
cask 'gitter'
cask 'discord'
cask 'textual' # IRC
cask 'skype'
cask 'franz'
cask 'yakyak'
cask 'goofy'
cask 'whatsapp'

# Casks: Email
cask 'nylas-mail'
cask 'mailbutler'
cask 'airmail-beta'

# Casks: Productivity
cask 'nvalt' # Post install steps in post-cask-install.sh
cask 'numi'
cask 'typora'

# Casks: Photography
cask 'darktable'
# cask adobe-photoshop-lightroom
cask 'digikam'

# Casks: Design
cask 'noun-project'
# cask 'adobe-photoshop-cc' # removed from Caskroom due to login requirement
# cask 'adobe-illustrator-cc' # removed from Caskroom due to login requirement
# cask 'adobe-indesign-cc' # removed from Caskroom due to login requirement

# Casks: Taskbar Apps
cask 'lastfm'
cask 'rescuetime'
cask 'viscosity'
cask 'shiftit'
cask 'bartender'
cask 'caffeine'
cask 'flux'
cask 'yujitach-menumeters'
cask 'istat-menus5'
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
cask 'crunch' # https://github.com/chrissimpkins/Crunch
cask 'knock'
cask 'duet'
cask 'sequential'
cask 'diskwave'
cask 'phoneclean'
cask 'keybase' # https://keybase.io/
cask 'etcher'
cask 'insomniax'
cask 'nosleep'
cask 'bettertouchtool'
cask 'vagrant-manager'
cask 'beardedspice'
cask 'etrecheck'
cask 'paparazzi'
cask 'namechanger'
cask 'keka'
cask 'oversight'
cask 'blockblock'
cask 'ransomwhere'
cask 'lockdown'
cask 'kextviewr'
cask 'dhs'

# Homebrew: LaTeX
cask 'basictex'
# cask 'mactex'
# brew 'chktex'
brew 'libyaml'
brew 'asciidoc'
brew 'pandoc'
brew 'style-check'
brew 'latex2rtf'
brew 'latex2html'
brew 'latexml'

# Casks: Screensavers
cask 'aerial'
cask 'save-hollywood'
cask 'fliqlo'
cask 'padbury-clock'
cask 'pongsaver'
cask 'google-trends'

# Casks: Relax
cask 'steam'
cask 'gog-galaxy'
cask 'origin'
cask 'kindle'

# Casks: Drivers
cask 'scansnap-manager-ix500'

# Casks: QuickLook Extensions
cask 'betterzipql'
cask 'brushviewql'
cask 'cert-quicklook'
cask 'emin-webpquicklook'
cask 'epubquicklook'
cask 'gltfquicklook'
cask 'jupyter-notebook-ql'
cask 'osirix-quicklook'
cask 'provisionql'
cask 'qladdict'
cask 'qlcolorcode'
cask 'qldds'
cask 'qlgradle'
cask 'qlimagesize'
# cask 'qlmarkdown' # using ttscoff MultiMarkdown QL instead
cask 'qlmobi'
cask 'qlnetcdf'
cask 'qlplayground'
cask 'qlprettypatch'
cask 'qlrest'
cask 'qlstephen'
cask 'qlswift'
cask 'qlvideo'
cask 'quickgeojson'
cask 'quicklook-csv'
cask 'quicklook-json'
cask 'quicklook-pat'
cask 'quicklook-pfm'
cask 'quicklookapk'
cask 'quicklookase'
cask 'ttscoff-mmd-quicklook'
cask 'qlcommonmark'

# Casks: Fonts
cask 'font-anonymous-pro'
cask 'font-arimo'
cask 'font-baron'
cask 'font-bebas-neue'
cask 'font-bitter'
cask 'font-clear-sans'
cask 'font-cousine'
cask 'font-dejavu-sans'
cask 'font-dejavu-sans-mono-for-powerline'
cask 'font-droid-sans'
cask 'font-droid-sans-mono-for-powerline'
cask 'font-fira-code'
cask 'font-fira-mono'
cask 'font-fira-mono-for-powerline'
cask 'font-fira-sans'
cask 'font-fontawesome'
cask 'font-hack'
cask 'font-hermit'
cask 'font-inconsolata'
cask 'font-inconsolata-dz-for-powerline'
cask 'font-inconsolata-for-powerline'
cask 'font-inconsolata-g-for-powerline'
cask 'font-inconsolata-lgc'
cask 'font-inconsolata-dz'
cask 'font-input'
cask 'font-inter-ui'
cask 'font-jaapokki'
cask 'font-karla'
cask 'font-league-gothic'
cask 'font-league-script'
cask 'font-liberation-sans'
cask 'font-liberation-mono-for-powerline'
cask 'font-meddon'
cask 'font-menlo-for-powerline'
cask 'font-merriweather'
cask 'font-meslo-lg'
cask 'font-meslo-for-powerline'
cask 'font-monoid'
cask 'font-montserrat'
cask 'font-open-sans'
cask 'font-open-sans-condensed'
cask 'font-poppins'
cask 'font-raleway'
cask 'font-roboto'
cask 'font-roboto-slab'
cask 'font-rokkitt'
# cask 'font-sauce-code-powerline'
cask 'font-sinkin-sans'
cask 'font-source-code-pro'
cask 'font-source-sans-pro'
cask 'font-source-serif-pro'
cask 'font-space-mono'
cask 'font-spacemono-nerd-font'
cask 'font-spacemono-nerd-font-mono'
cask 'font-terminus'
cask 'font-ubuntu'
cask 'font-ubuntu-mono-derivative-powerline'
cask 'font-work-sans'

# --- MAINTENANCE ---

# Homebrew Brewfile manager
# tap 'rcmdnk/file'
# brew 'brew-file'

# Cakebrew GUI Homebrew manager
cask 'cakebrew'

# --- OPTIONAL ---
# https://github.com/EricChiang/pup
# brew 'https://raw.githubusercontent.com/EricChiang/pup/master/pup.rb'

# https://github.com/redspread/spread
# tap 'redspread/spread'
# brew 'spread'
