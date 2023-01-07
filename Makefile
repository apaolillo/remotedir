all: remotedir.deb

remotedir.deb: remotedir
	dpkg-deb --build remotedir

clean:
	rm -f *.deb
