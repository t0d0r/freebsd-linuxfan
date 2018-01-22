# New ports collection makefile for:   instant-linuxfan
# Date created:        30 August 2011
# Whom:                todor@linuxfan.org
#
# $FreeBSD$
#

PORTNAME=	linuxfan
PORTVERSION=	0.1b
PORTREVISION=	0
CATEGORIES=	misc
MASTER_SITES=	# Empty
DISTFILES=	# None

MAINTAINER=	todor@linuxfan.org
COMMENT=	Bundle package for installing typical set of packages for a linuxfan.org server

BUILD_DEPENDS=	${LOCALBASE}/sbin/dhcpd:${PORTSDIR}/net/isc-dhcp41-server \
		${LOCALBASE}/bin/rsync:${PORTSDIR}/net/rsync \
		${LOCALBASE}/bin/mutt:${PORTSDIR}/mail/mutt-lite \
		${LOCALBASE}/bin/mc:${PORTSDIR}/misc/mc-lite \
		${LOCALBASE}/bin/links:${PORTSDIR}/www/links1 \
		${LOCALBASE}/www/mediawiki:${PORTSDIR}/www/mediawiki \
		${LOCALBASE}/bin/screen:${PORTSDIR}/sysutils/screen \
		${LOCALBASE}/bin/mc:${PORTSDIR}/misc/mc-light \
		${LOCALBASE}/bin/tmux:${PORTSDIR}/sysutils/tmux \
		${LOCALBASE}/sbin/openvpn:${PORTSDIR}/security/openvpn \
		${LOCALBASE}/bin/nmap:${PORTSDIR}/security/nmap \
		${LOCALBASE}/bin/portsentry:${PORTSDIR}/security/portsentry \
		${LOCALBASE}/bin/git:${PORTSDIR}/devel/git \
		${LOCALBASE}/bin/hg:${PORTSDIR}/devel/mercurial \
		${LOCALBASE}/www/cgi-bin/cvsweb.cgi:${PORTSDIR}/devel/cvsweb \
		${LOCALBASE}/sbin/atalkd:${PORTSDIR}/net/netatalk \
		${LOCALBASE}/bin/mDNSBrowse:${PORTSDIR}/net/howl \
		${LOCALBASE}/bin/mDNSResponder:${PORTSDIR}/net/mDNSResponder \


WITHOUT_X11=	YES
WITH_PHP=	YES
BATCH=		YES
USE_APACHE=	22+
NO_BUILD=	yes

do-install:

.include <bsd.port.mk>

