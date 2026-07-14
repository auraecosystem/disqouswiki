choco install -y php composer
git clone https://gerrit.wikimedia.org/r/mediawiki/core.git mediawiki 
git clone https://gerrit.wikimedia.org/r/mediawiki/skins/Vector.git mediawiki/skins/Vector
cd mediawiki
composer mw-install:sqlite
sudo apt install php php-intl php-mbstring php-xml php-apcu php-curl php-sqlite3 composer
sudo pacman -S php composer
sudo dnf install php composer
git clone https://gerrit.wikimedia.org/r/mediawiki/core.git mediawiki 
git clone https://gerrit.wikimedia.org/r/mediawiki/skins/Vector.git mediawiki/skins/Vector
cd mediawiki
composer update
composer mw-install:sqlite
brew install php@8.5 composer
brew link --overwrite php@8.5
