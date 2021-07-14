#!/usr/bin/env bash
# actualizar el sistema completamente
echo mejorar y actualizar el sistema
sudo apt-get update
sudo apt-get -y upgrade
# instalar node.js para ejecutar comandos js al utilizar Rails
echo instalando node.js para ejecutar JS y Git
sudo apt-get install -y nodejs
sudo apt-get install -y git
# instalar RVM
echo instalando RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm
rvm requirements
# instalar Ruby y establecer 2.3.1 como predeterminada
echo instalando Ruby
rvm install 3.0.2
rvm use 3.0.2 --default
# instalar Bundler y Rails
echo instalando Bundler and Rails
gem install bundler --no-ri --no-rdoc
gem install rails -v 4.2.7 --no-ri --no-rdoc
# instalar postgres y sus dependencais
echo instalando psql y sus dependencias
sudo apt-get install -y postgresql postgresql-contrib libpq-dev