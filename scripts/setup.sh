#!/bin/sh
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
mkdir ~/git
git clone  git@github.com:yubo/yubo.github.io.git ~/git/yubo.github.io
cd ~/git/yubo.github.io
git checkout -b source origin/source
bash
rbenv install 1.9.3-p547
cd ~/git/yubo.github.io
gem install bundler
rbenv rehash
bundler install
rbenv rehash
rake setup_github_pages
