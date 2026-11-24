# DevStack

- [DevStack — DevStack documentation](https://docs.openstack.org/devstack/latest/)
- [openstack/devstack: System for quickly installing an OpenStack cloud from upstream git for testing and development. - devstack - OpenDev: Free Software Needs Free Tools](https://opendev.org/openstack/devstack)

## How to use

```bash
sudo -u stack ./stack.sh
```

### Add components

Only Keystone is currently enabled.

Please modify local.conf as needed.

### Change version

By default, the development version will be installed. If you want to change this, edit the compose.yaml or Dockerfile.

- [Branches - devstack - OpenDev: Free Software Needs Free Tools](https://opendev.org/openstack/devstack/branches)

CentOS Stream 10 was first included in Tested Runtimes as of the 2025.2 release.

- [Tested Runtimes for 2025.2 (Flamingo) — OpenStack Technical Committee Governance Documents](https://governance.openstack.org/tc/reference/runtimes/2025.2.html)
