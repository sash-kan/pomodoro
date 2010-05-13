# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit autotools gnome2 python

DESCRIPTION="A countdown timer applet for the GNOME Panel"
HOMEPAGE="http://timerapplet.sourceforge.net/"
SRC_URI="mirror://sourceforge/timerapplet/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	|| (
		( dev-lang/python:2.4 dev-python/elementtree )
		dev-lang/python:2.5
		dev-lang/python:2.6
	)
	dev-python/pygtk
	dev-python/notify-python
	dev-python/dbus-python"

DEPEND="${RDEPEND}
	dev-util/intltool
	gnome-base/gconf"

DOCS="AUTHORS ChangeLog NEWS README"

src_unpack() {
                unpack ${A}
                cd "${S}"
                epatch "${FILESDIR}/timer-applet_2.x.patch"
}


src_prepare() {
	eautoreconf
	ln -sf $(type -P true) "${S}/py-compile" || die
}

pkg_postinst() {
	python_mod_optimize "$(python_get_sitedir)"/timerapplet
}

pkg_postrm() {
	python_mod_cleanup "$(python_get_sitedir)"/timerapplet
}
