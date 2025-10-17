#!/system/bin/sh
# Reinstate /system/bin/sh symlink after OrangeFox repack
if [ -d "$OUT/target/product/g4/recovery/root/system/bin" ]; then
  cd "$OUT/target/product/g4/recovery/root/system/bin" || exit 0
  rm -f sh
  ln -sf /sbin/sh sh
  echo "[fix_sh_symlink] Restored /system/bin/sh -> /sbin/sh"
fi
