### how to begin
	git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
	git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
	mkdir ~/git
	git clone  git@github.com:yubo/yubo.github.io.git ~/git/yubo.github.io
	cd ~/git/yubo.github.io
	git checkout -b source origin/source
	cd ~/git/yubo.github.io/source/_posts


### how to post
	rake generate	// build static web
	rake preview    // preview url  http://localhost:4000
	rake deploy		// deploy to yubo.github.io

