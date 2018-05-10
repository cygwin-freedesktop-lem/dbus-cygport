if /usr/bin/cygrunsrv -Q messagebus &>/dev/null
then
	/usr/bin/cygrunsrv -E messagebus
fi

if [ -x /usr/bin/xmlcatalog ] ; then
	/usr/bin/xmlcatalog --noout --del \
		/usr/share/xml/dbus-1/busconfig.dtd \
		/etc/xml/catalog
	/usr/bin/xmlcatalog --noout --del \
		/usr/share/xml/dbus-1/introspect.dtd \
		/etc/xml/catalog
fi
