waybar-dev:
	sh ./scripts/waybar-watch.sh

install-deps:
	yay -S --noconfirm --needed $(cat ./packages | tr '\n' ' ')

install:

clean:
	