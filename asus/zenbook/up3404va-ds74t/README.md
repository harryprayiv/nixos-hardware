# Asus Zenbook Flip 14

This is tested on an [up3404va-ds74t](https://www.asus.com/us/laptops/for-home/zenbook/zenbook-14-flip-oled-up3404/).

## Tested Hardware

```bash
lspci -nn
0000:00:00.0 Host bridge [0600]: Intel Corporation Raptor Lake-P/U 4p+8e cores Host Bridge/DRAM Controller [8086:a707]
0000:00:02.0 VGA compatible controller [0300]: Intel Corporation Raptor Lake-P [Iris Xe Graphics] [8086:a7a0] (rev 04)
0000:00:04.0 Signal processing controller [1180]: Intel Corporation Raptor Lake Dynamic Platform and Thermal Framework Processor Participant [8086:a71d]
0000:00:06.0 System peripheral [0880]: Intel Corporation RST VMD Managed Controller [8086:09ab]
0000:00:07.0 PCI bridge [0604]: Intel Corporation Raptor Lake-P Thunderbolt 4 PCI Express Root Port #0 [8086:a76e]
0000:00:07.2 PCI bridge [0604]: Intel Corporation Raptor Lake-P Thunderbolt 4 PCI Express Root Port #2 [8086:a72f]
0000:00:08.0 System peripheral [0880]: Intel Corporation GNA Scoring Accelerator module [8086:a74f]
0000:00:0a.0 Signal processing controller [1180]: Intel Corporation Raptor Lake Crashlog and Telemetry [8086:a77d] (rev 01)
0000:00:0d.0 USB controller [0c03]: Intel Corporation Raptor Lake-P Thunderbolt 4 USB Controller [8086:a71e]
0000:00:0d.2 USB controller [0c03]: Intel Corporation Raptor Lake-P Thunderbolt 4 NHI #0 [8086:a73e]
0000:00:0d.3 USB controller [0c03]: Intel Corporation Raptor Lake-P Thunderbolt 4 NHI #1 [8086:a76d]
0000:00:0e.0 RAID bus controller [0104]: Intel Corporation Volume Management Device NVMe RAID Controller Intel Corporation [8086:a77f]
0000:00:12.0 Serial controller [0700]: Intel Corporation Alder Lake-P Integrated Sensor Hub [8086:51fc] (rev 01)
0000:00:14.0 USB controller [0c03]: Intel Corporation Alder Lake PCH USB 3.2 xHCI Host Controller [8086:51ed] (rev 01)
0000:00:14.2 RAM memory [0500]: Intel Corporation Alder Lake PCH Shared SRAM [8086:51ef] (rev 01)
0000:00:14.3 Network controller [0280]: Intel Corporation Raptor Lake PCH CNVi WiFi [8086:51f1] (rev 01)
0000:00:15.0 Serial bus controller [0c80]: Intel Corporation Alder Lake PCH Serial IO I2C Controller #0 [8086:51e8] (rev 01)
0000:00:15.1 Serial bus controller [0c80]: Intel Corporation Alder Lake PCH Serial IO I2C Controller #1 [8086:51e9] (rev 01)
0000:00:16.0 Communication controller [0780]: Intel Corporation Alder Lake PCH HECI Controller [8086:51e0] (rev 01)
0000:00:1f.0 ISA bridge [0601]: Intel Corporation Raptor Lake LPC/eSPI Controller [8086:519d] (rev 01)
0000:00:1f.3 Multimedia audio controller [0401]: Intel Corporation Raptor Lake-P/U/H cAVS [8086:51ca] (rev 01)
0000:00:1f.4 SMBus [0c05]: Intel Corporation Alder Lake PCH-P SMBus Host Controller [8086:51a3] (rev 01)
0000:00:1f.5 Serial bus controller [0c80]: Intel Corporation Alder Lake-P PCH SPI Controller [8086:51a4] (rev 01)
10000:e0:06.0 PCI bridge [0604]: Intel Corporation Raptor Lake PCIe 4.0 Graphics Port [8086:a74d]
10000:e1:00.0 Non-Volatile memory controller [0108]: Sandisk Corp WD Black SN770 / PC SN740 256GB / PC SN560 (DRAM-less) NVMe SSD [15b7:5017] (rev 01)
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
