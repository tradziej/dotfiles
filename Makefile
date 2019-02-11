all:
	mkdir -p ~/.config/alacritty

	[ -f ~/.config/alacritty/alacritty.yml ] || ln -s $(PWD)/alacritty.yml ~/.config/alacritty/alacritty.yml
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.gitignore ] || ln -s $(PWD)/gitignore ~/.gitignore
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmuxconf ~/.tmux.conf

	# don't show last login message
	touch ~/.hushlogin

clean:
	rm -f ~/.config/alacritty/alacritty.yml
	rm -f ~/.gitconfig
	rm -f ~/.gitignore
	rm -f ~/.zshrc
	rm -f ~/.tmux.conf

.PHONY: all
