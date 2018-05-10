mkdir -p /var/lib/dbus
/usr/bin/dbus-uuidgen --ensure

if [ -x /usr/bin/xmlcatalog ] ; then
	/usr/bin/xmlcatalog --noout --add "system" \
		"http://www.freedesktop.org/standards/dbus/1.0/busconfig.dtd" \
		/usr/share/xml/dbus-1/busconfig.dtd \
		/etc/xml/catalog
	/usr/bin/xmlcatalog --noout --add "system" \
		"http://www.freedesktop.org/standards/dbus/1.0/introspect.dtd" \
		/usr/share/xml/dbus-1/introspect.dtd \
		/etc/xml/catalog
fi
