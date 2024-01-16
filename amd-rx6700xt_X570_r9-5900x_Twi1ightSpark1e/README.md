# R9 5900X + RX6700XT single GPU passthrough

This setup uses Proxmox VE as a headless host for persistent containers (like HTTP server, backup server, many game servers, etc.) and passes through GPU, NVMe drive, all USB host controllers to virtual machine which used as a workstation. No hooks required because no DE/WM used on host system, so libvirt could just rebind all necessary devices by itself.

By default, virtual machine is configured to hide hypervisor to play various games with anticheats. This may decrease overall performance. You can make `hypervisor` feature `required` (in `cpu` section) in virtual machine configuration when hiding hypervisor is not necessary.

### IOMMU AVIC

This VM config enables AVIC. If your system does not support it - just disable it in `hyperv` section. When your hypervisor is not hidden, it is worth to change `pit` timer policy to `discard`. The reason this policy is not enabled by default is that I had terrible overall performance when hypervisor was hidden.
