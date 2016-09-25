cmd_arch/arm64/crypto/aes-ce-ccm-core.o :=   /home/kevin/aarch64-linux-android-4.9/bin/aarch64-linux-android-gcc -Wp,-MD,arch/arm64/crypto/.aes-ce-ccm-core.o.d  -nostdinc -isystem /home/kevin/aarch64-linux-android-4.9/bin/../lib/gcc/aarch64-linux-android/4.9.x/include -I/home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include -Iarch/arm64/include/generated  -Iinclude -I/home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/uapi -Iarch/arm64/include/generated/uapi -I/home/kevin/Downloads/mates/11/kernel/kernel/include/uapi -Iinclude/generated/uapi -include /home/kevin/Downloads/mates/11/kernel/kernel/include/linux/kconfig.h -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/ -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/config/product/hi3635_udp/config -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/platform/hi3630 -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/platform/hi3630/soc -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/config/product/hi3635_udp/include_gu -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/config/nvim/include/gu -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/../../external/efipartition -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/drv -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/drv/acore -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/drv/common -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/nv/tl/drv -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/nv/tl/oam -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/nv/tl/lps -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/phy/lphy -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/audiodsp/custom/hi6402_hifi/include/med -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/taf -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/modem/drv/common/include -D__KERNEL__ -mlittle-endian  -D__ASSEMBLY__ -gdwarf-2         -DBSP_CORE_APP -DBSP_COMPILE_ALLY -c -o arch/arm64/crypto/aes-ce-ccm-core.o arch/arm64/crypto/aes-ce-ccm-core.S

source_arch/arm64/crypto/aes-ce-ccm-core.o := arch/arm64/crypto/aes-ce-ccm-core.S

deps_arch/arm64/crypto/aes-ce-ccm-core.o := \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/asm/linkage.h \

arch/arm64/crypto/aes-ce-ccm-core.o: $(deps_arch/arm64/crypto/aes-ce-ccm-core.o)

$(deps_arch/arm64/crypto/aes-ce-ccm-core.o):
