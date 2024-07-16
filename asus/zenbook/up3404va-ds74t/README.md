# Asus Zenbook Flip 14

This is tested on an [up3404va-ds74t](https://www.asus.com/us/laptops/for-home/zenbook/zenbook-14-flip-oled-up3404/).

## Tested Hardware

```bash
lspci -nn

```

## Updating Firmware

First enable `fwupd` in your config

```nix
services.fwupd.enable = true;
```

Then run

```bash
 $ fwupdmgr update
```
