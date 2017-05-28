This repository contains the [jre8-jce](https://chocolatey.org/packages/jre8-jce) and [jdk8-jce](https://chocolatey.org/packages/jdk8-jce) chocolatey package sources for installing the [Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files](http://www.oracle.com/technetwork/java/javase/downloads/jce8-download-2133166.html) inside the existing JRE and JDK installation.

**CAVEAT:** you **MUST** re-install this package everytime you upgrade JRE or JDK.

## Development

Install `msys2` and inside it `make`.

Run `make` to create the chocolatey packages (`jre8-jce` and `jdk8-jce`).

Run `choco install -y -source $PWD -f jre8-jce` (or `jdk8-jce`) to install the package.

Run the following to publish the package to chocolatey.org, e.g.:

```powershell
choco apikey -k API-KEY -source https://chocolatey.org/
choco push jre8-jce.0.0.1.nupkg -source https://chocolatey.org/
```
