SHELL:=/bin/bash

install-cli:
	wget -c https://downloads.nightvision.net/binaries/latest/nightvision_latest_linux_amd64.tar.gz -O - | tar -xz; sudo mv nightvision /usr/local/bin/
	python -m pip install semgrep --user
