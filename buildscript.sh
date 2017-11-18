#build-script for mac

#xcode CLI
#xcode-select --install;

#homebrew
echo "installing home brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

echo "installing cakebrew and taps"
brew install Caskroom/cask/cakebrew;
brew tap caskroom/cask;
brew install caskroom/cask/brew-cask;
brew tap caskroom/versions;
brew cask install cakebrew;

#apps
echo "installing node"
brew install node;
echo "installing java"
brew cask install java;
java -version
javac -version

echo "installing iTerm2"
brew cask install iterm2;
echo "installing zsh-completions"
brew install zsh zsh-completions;

echo "installing git & setting up config"
brew install git;
git --version;

read "Enter Git Global username" username
read "Enter Git Global email" email
git config --global user.name $username;
git config --global user.email $email;

echo "installing openssl"
brew install openssl;
echo "installing maven"
brew install maven;
echo "installing gradle"
brew install gradle;
echo "installing wget"
brew install wget;
echo "installing jenv & config"
brew install jenv;
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc;
echo 'eval "$(jenv init -)"' >> ~/.zshrc;

#utils
echo "installing dotnet"
brew cask install dotnet;
echo "installing parallels"
brew cask install parallels;
echo "installing silverlight"
brew cask install silverlight;
echo "installing virtualbox"
brew cask install virtualbox;
echo "installing steam"
brew cask install steam;
echo "installing sourcetree"
brew cask install sourcetree;
echo "installing firefox"
brew cask install firefox;
echo "installing Chrome"
brew cask install google-chrome;
echo "installing adobe reader"
brew cask install adobe-reader;
echo "installing skitch"
brew cask install skitch;
echo "installing cyberduck"
brew cask install cyberduck;
echo "installing the-unarchiver"
brew cask install the-unarchiver;
echo "installing aerial"
brew cask install aerial;
echo "installing alfred"
brew cask install alfred;
echo "installing appcleaner"
brew cask install appcleaner;
echo "installing vlc"
brew cask install vlc;
echo "installing flux"
brew cask install flux;
echo "installing postman"
brew cask install postman;
echo "installing evernote"
brew cask install evernote;
echo "installing staruml"
brew cask install staruml;
echo "installing jetbrains-toolbox"
brew cask install jetbrains-toolbox;
echo "installing slack"
brew cask install slack;
echo "installing skype"
brew cask install skype;
echo "installing sourcetree"
brew cask install sourcetree;
echo "installing whatsapp"
brew cask install whatsapp;
echo "installing rider"
brew cask install rider;
echo "installing amazon-music"
brew cask install amazon-music;
echo "installing datagrip"
brew cask install datagrip;
echo "installing visual-studio"
brew cask install visual-studio;
echo "installing macdown"
brew cask install macdown;
echo "installing mysqlworkbench"
brew cask install mysqlworkbench;
echo "installing skype-for-business"
brew cask install skype-for-business;
echo "installing microsoft-office"
brew cask install microsoft-office;
echo "installing dashlane"
brew cask install dashlane;
echo "installing tunnelblick"
brew cask install tunnelblick;
echo "installing citrix-receiver"
brew cask install citrix-receiver;
echo "installing atom"
brew cask install atom;
echo "installing visual-studio-code"
brew cask install visual-studio-code;
echo "installing sublime-text"
brew cask install sublime-text;
echo "installing webstorm"
brew cask install webstorm;
echo "installing eclipse-ide"
brew cask install eclipse-ide;
echo "installing intellij-idea-ce"
brew cask install intellij-idea-ce;
echo "installing android-studio"
brew cask install android-studio;
echo "installing gulp"
brew cask install gulp;
echo "installing xamarin-studio"
brew cask install xamarin-studio;
echo "installing docker"
brew install docker;
echo "installing kitematic"
brew cask install kitematic;

# Link Cask Apps to Alfred
echo "installing Link Cask Apps to Alfred"
brew cask alfred link

# cleanup
echo "Cleaning Up Home brew"
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*