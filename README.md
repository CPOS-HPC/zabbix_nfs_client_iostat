# Zabbix LLD Template for NFS client iostat statistics

![Docker stuff](https://img.shields.io/badge/%F0%9F%90%B3-useful%20stuff-lightgray)
![PizzaWare](https://img.shields.io/badge/%F0%9F%8D%95-PizzaWare-orange)
![Tea powered](https://img.shields.io/badge/%F0%9F%8D%B5-tea%20powered-yellowgreen)

This is a fork of https://github.com/pdacity/zabbix_nfs_client_iostat with bugfixes, additional metrics, and support for newer Zabbix version.

> Version 1.3 - (20240926)

for Zabbix 3.x, 5.x, 7.x

Zabbix 6.x is not tested, but should be compatible with 5.x template

zabbix-agent must be installed on the monitored node

nfs-utils packet MUST be installed

## Install

* copy `nfsio_perf.sh` and `nfsio_discovery.sh` into `/etc/zabbix/bin`
* copy `userparameter_nfsio.conf` into `/etc/zabbix/zabbix_agent.d`
* import Template
* restart zabbix_agent

## Files

* nfsio_discovery.sh - LLD for NFS mountpoints autodiscovery
* nfsio_perf.sh - collect metrics
* template_nfsio.xml - Zabbix template
* userparameter_nfsio.conf - Zabbix userparameters file

## References

* yumaojun03/zabbix_monitor - https://github.com/yumaojun03/zabbix_monitor
* pdacity/zabbix_nfs_client_iostat - https://github.com/pdacity/zabbix_nfs_client_iostat

## Version

* 1.0 - initial
* 1.1 - add "Read / Write kB/s", "Read / Write op/s" and "RPC request time" graphs into Template
* 1.2 - get statistics for the period and not from the beginning of measurements, tnx https://github.com/alkolexx
* 1.3 - add "queue, error, error_perc" metrics for both read & write side, add Zabbix 5.x & 7.x templates, fix bugs and typos
