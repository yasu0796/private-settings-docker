# Splunk

## Link

- [splunk/splunk - Docker Image | Docker Hub](https://hub.docker.com/r/splunk/splunk)
- [Welcome to the Docker-Splunk documentation! | docker-splunk](https://splunk.github.io/docker-splunk/)
- [Advanced | docker-splunk](https://splunk.github.io/docker-splunk/ADVANCED)
- https://github.com/splunk/splunk-ansible/blob/master/docs/ADVANCED.md

## Environment

Only AMD64

9.3+ may not support emulation AMD64

- [Deprecated and removed in version 9.3 - Splunk Documentation](https://docs.splunk.com/Documentation/Splunk/9.3.0/ReleaseNotes/Deprecatedfeatures#Deprecated_CPU_architectures)

> ### Deprecated CPU architectures
> Splunk software requires a CPU processor that supports the x86-64-v2 (Intel/AMD) or NEON (ARM) architecture. Most modern processors manufactured after 2008 include this support. Support for the use of processors that do not meet this requirement is deprecated in Splunk Enterprise 9.3.
> 
> Support for the use of processors that do not meet this requirement will be removed in the next major or minor version of Splunk Enterprise after version 9.3.
> 
> This CPU requirement and the notice of deprecation does not apply to the Universal Forwarder package.

### MongoDB

- [System requirements for use of Splunk Enterprise on-premises | Splunk Enterprise](https://help.splunk.com/en/splunk-enterprise/get-started/install-and-upgrade/10.4/plan-your-splunk-enterprise-installation/system-requirements-for-use-of-splunk-enterprise-on-premises)

Ubuntu 26.04 (Kernel 7.0) is not yet supported.

> MongoDB cannot start: Linux kernel versions 6.19 and newer has a known incompatibility with this version of MongoDB. See https://jira.mongodb.org/browse/SERVER-121912 for more information. 
