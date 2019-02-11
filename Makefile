all:
	mkdir -p ~/.config/alacritty

	[ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/alacritty.yml ~/.config/alacritty/alacritty.yml
	[ -f ~/.gitignore ] || ln -s $(PWD)/gitignore ~/.gitignore

	# don't show last login message
	touch ~/.hushlogin

clean:
	rm -f ~/.config/alacritty/alacritty.yml
	rm -f ~/.gitignore

.PHONY: all
