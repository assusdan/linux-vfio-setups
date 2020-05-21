# linux-vfio-setups

*Below you may find English version.*

### Данный репозиторий содержит примеры конфигураций виртуалок с проброшенными в них видеокартами и другим устройствами.

Основные ресурсы:

ArchWiki - https://wiki.archlinux.org/index.php/PCI_passthrough_via_OVMF

VFIO Discussion and Support на Reddit - https://www.reddit.com/r/VFIO/wiki/index

Правила наполнения репозитория:
1) в вашем форке создается отдельный каталог с названием видеокарта-чипсет-CPU-никнейм (например, gtx1070-X370-r7-1700-assusdan)
2) в него кладется описание железа системы по шаблону hardware.txt
3) в него кладется описание софта системы по примеру software.txt
4) в него же помещаются все файлы, которые вы считаете нужными (желательно все необходимые для работы сетапа конфигурационные файлы)
5) открывается Pull Request в этот репозиторий

Либо:

5) вы собираете файлы в zip архив и присылаете их в Issue.

---

### This repo contains examples of VM setups with GPU or any other PCIe devices passthrough.

General resources:

ArchWiki - https://wiki.archlinux.org/index.php/PCI_passthrough_via_OVMF

VFIO Discussion and Support on Reddit - https://www.reddit.com/r/VFIO/wiki/index

Configs submit guideline:
1) Fork the repo and create GPU-Chipset-CPU-nickname catalog
2) Add hardware.txt file with your hardware description (check examples!)
3) Add software.txt file with your software description (check examples!)
4) Add all other configs you think are required (or useful)
5) Submit Pull Request to the repo

OR

5) Submit .zip file as Issue

