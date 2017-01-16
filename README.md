# Example Wildfly Builder Image for OpenShift

This repository contains a sample Dockerfile for a builder
image which can be used as a drop-in replacement of the
[openshift/wildfly-101-centos7](https://github.com/openshift-s2i/s2i-wildfly).

The difference between `openshift/wildfly-100-centos7` and this
image is that the result will be capable of optionally starting a
[Thermostat](http://icedtea.classpath.org/thermostat/) agent within
a deployment.

See [Thermostat on OpenShift Usage][https://github.com/jerboaa/thermostat-openshift]
for details as to how to use the built image.

## Usage

In order to build the Wildfly Builder image on a properly subscribed
RHEL machine execute the following:

   $ docker build -f Dockerfile.rhel7 -t openshift/wildfly-101-rhel7 .

The resulting image can then be used to build your Wildfly app:

   $ s2i build 

## Enabling the Thermostat Agent

<!-- TODO -->

Example Wildfly OpenShift builder image based on the thermostat-agent-container
