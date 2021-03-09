# Ultroid - UserBot
# Copyright (C) 2020 TeamUltroid
#
# This file is a part of < https://github.com/TeamUltroid/Ultroid/ >
# PLease read the GNU Affero General Public License in
# <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

echo "
	┈┈┈╱▔▔▔▔▔▔╲┈╭━━━╮┈┈
        ┈┈▕┈╭━╮╭━╮┈▏┃BOO ┃┈┈
        ┈┈▕┈┃╭╯╰╮┃┈▏╰┳━━╯┈┈
        ┈┈▕┈╰╯╭╮╰╯┈▏┈┃┈┈┈┈┈
        ┈┈▕┈┈┈┃┃┈┈┈▏━╯┈┈┈┈┈
        ┈┈▕┈┈┈╰╯┈┈┈▏┈┈┈┈┈┈┈
        ┈┈▕╱╲╱╲╱╲╱╲▏┈┈┈┈┈┈┈

	    °•° Deployment Begins •°•
"
echo '
        •• Getting Packages and Installing
'

export DEBIAN_FRONTEND=noninteractive
export TZ=Asia/Kolkata
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

apt update && apt upgrade -y && apt install --no-install-recommends -y \
    debian-keyring \
    debian-archive-keyring \
    bash \
    curl \
    git \
    util-linux \
    libffi-dev \
    libjpeg-dev \
    libjpeg62-turbo-dev \
    libwebp-dev \
    linux-headers-amd64 \
    musl-dev \
    musl \
    neofetch \
    python3-lxml \
    postgresql \
    postgresql-client \
    libpq-dev \
    libcurl4-openssl-dev \
    libxml2-dev \
    libxslt1-dev \
    openssl \
    pv \
    jq \
    wget \
    python3-dev \
    libreadline-dev \
    libyaml-dev \
    zlib1g \
    ffmpeg \
    libssl-dev \
    libgconf-2-4 \
    libxi6 \
    zlib1g-dev \
    xvfb \
    unzip \
    make \
    libopus0 \
    libopus-dev \
    gcc \
    mediainfo \
    megatools

echo '
        •• Cloning Repository
'

git clone https://github.com/theshashankk/NaruToUseRBoT.git /root/TeamUltroid/


echo '
	•• Getting Libraries and Installing
'
pip install --upgrade pip setuptools wheel
pip install search-engine-parser==0.6.2
pip install -r /root/TeamUltroid/requirements.txt

echo "

			              ℕ
				      𝔸
			              ℝ
			              𝕌
			              𝕋    
                                      𝕆
			•°• Deployed Successfully °•°
		   •• Wait till python images are pushed
	   •• Give build logs in @narutosupport if build fails
"
