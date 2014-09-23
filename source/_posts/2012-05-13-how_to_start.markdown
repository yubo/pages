---
layout: post
title: "How to start Octopress"
date: 2012-05-12 22:43:39 +0800
comments: true
categories:
---

### how to begin
	git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
	git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
	mkdir ~/git
	git clone  git@github.com:yubo/yubo.github.io.git ~/git/yubo.github.io
	cd ~/git/yubo.github.io
	git checkout -b source origin/source
	rake setup_github_pages

### how to post
	rake generate	# build static web
	rake preview    # preview url  http://localhost:4000
	rake deploy		# deploy to yubo.github.io

### Don't forget to commit the source for your blog.
	cd ~/git/yubo.github.io
	git add .
	git commit -m 'your message'
	git push origin source

