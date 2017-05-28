VERSION=$(shell grep '<version>' jre8-jce.nuspec | sed -E 's,.+>(.+)<.+,\1,')

all: jre8-jce.$(VERSION).nupkg jdk8-jce.$(VERSION).nupkg

jre8-jce.$(VERSION).nupkg: tools/* jre8-jce.nuspec
	choco pack jre8-jce.nuspec

jdk8-jce.$(VERSION).nupkg: tools/* jdk8-jce.nuspec
	choco pack jdk8-jce.nuspec

jdk8-jce.nuspec: jre8-jce.nuspec
	sed 's,jre,jdk,' $< >$@

clean:
	rm -f jdk8-jce.nuspec *.nupkg

.PHONY: all clean
