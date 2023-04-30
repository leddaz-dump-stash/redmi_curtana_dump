#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:134217728:f35d62de805a9949ff6ca3765528ed9d734c330e; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:134217728:6df914da8f43a067d25904054c94be7c823d4818 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:134217728:f35d62de805a9949ff6ca3765528ed9d734c330e && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
