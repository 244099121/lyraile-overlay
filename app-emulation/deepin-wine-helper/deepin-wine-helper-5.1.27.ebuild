# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker

DESCRIPTION="Deepin Version of Wine"
HOMEPAGE="https://www.deepin.org"

SRC_URI="${COMMON_URI}/${PN}/${PN}_${PV}-1_i386.deb"


LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	app-emulation/deepin-wine5
	app-arch/p7zip"

S=${WORKDIR}

src_unpack() {
	unpack_deb ${FILESDIR}/${PN}_${PV}-1_i386.deb
}

src_install() {
	insinto /
	doins -r opt

	fperms 755 -R /opt/deepinwine/tools/
}
