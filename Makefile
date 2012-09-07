LUGGAGE=luggage.make
include ${LUGGAGE}

REVERSE_DOMAIN=us.hancox
TITLE=apple-logo-changer

PAYLOAD=pack-efilogo-apple.png \
				pack-efilogo-apple@2x.png \
				pack-efilogo-appleLinen.png \
				pack-efilogo-appleLinen@2x.png

DESTDIR=/System/Library/PrivateFrameworks/LoginUIKit.framework/Versions/A/Frameworks/LoginUICore.framework/Versions/A/Resources

pack-efilogo-%: %
	@sudo mkdir -p ${WORK_D}/${DESTDIR}
	@sudo ${INSTALL} -m 744 -g wheel -o root $< ${WORK_D}/${DESTDIR}
