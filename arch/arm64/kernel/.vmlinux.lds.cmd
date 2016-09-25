cmd_arch/arm64/kernel/vmlinux.lds :=   /home/kevin/aarch64-linux-android-4.9/bin/aarch64-linux-android-gcc -E -Wp,-MD,arch/arm64/kernel/.vmlinux.lds.d  -nostdinc -isystem /home/kevin/aarch64-linux-android-4.9/bin/../lib/gcc/aarch64-linux-android/4.9.x/include -I/home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include -Iarch/arm64/include/generated  -Iinclude -I/home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/uapi -Iarch/arm64/include/generated/uapi -I/home/kevin/Downloads/mates/11/kernel/kernel/include/uapi -Iinclude/generated/uapi -include /home/kevin/Downloads/mates/11/kernel/kernel/include/linux/kconfig.h -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/ -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/config/product/hi3635_udp/config -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/platform/hi3630 -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/platform/hi3630/soc -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/config/product/hi3635_udp/include_gu -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/config/nvim/include/gu -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/../../external/efipartition -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/drv -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/drv/acore -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/drv/common -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/nv/tl/drv -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/nv/tl/oam -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/nv/tl/lps -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/phy/lphy -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/audiodsp/custom/hi6402_hifi/include/med -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/include/taf -I/home/kevin/Downloads/mates/11/kernel/kernel/../kernel/drivers/vendor/hisi/modem/drv/common/include -D__KERNEL__ -mlittle-endian    -DTEXT_OFFSET=0x0680000 -P -C -Uarm64 -D__ASSEMBLY__ -DLINKER_SCRIPT -o arch/arm64/kernel/vmlinux.lds arch/arm64/kernel/vmlinux.lds.S

source_arch/arm64/kernel/vmlinux.lds := arch/arm64/kernel/vmlinux.lds.S

deps_arch/arm64/kernel/vmlinux.lds := \
    $(wildcard include/config/debug/align/rodata.h) \
  include/asm-generic/vmlinux.lds.h \
    $(wildcard include/config/hotplug.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/syscalls.h) \
    $(wildcard include/config/clksrc/of.h) \
    $(wildcard include/config/irqchip.h) \
    $(wildcard include/config/common/clk.h) \
    $(wildcard include/config/of/reserved/mem.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/pm/trace.h) \
    $(wildcard include/config/blk/dev/initrd.h) \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/asm/thread_info.h \
    $(wildcard include/config/arm64/64k/pages.h) \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/asm/memory.h \
    $(wildcard include/config/compat.h) \
  /home/kevin/Downloads/mates/11/kernel/kernel/include/uapi/linux/const.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  arch/arm64/include/generated/asm/types.h \
  /home/kevin/Downloads/mates/11/kernel/kernel/include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  /home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  arch/arm64/include/generated/asm/sizes.h \
  include/asm-generic/sizes.h \
  include/linux/sizes.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/asm/page.h \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  include/asm-generic/getorder.h \
  /home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/asm/pgtable.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/transparent/hugepage.h) \
  /home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/asm/proc-fns.h \
  /home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/asm/pgtable-hwdef.h \
  /home/kevin/Downloads/mates/11/kernel/kernel/arch/arm64/include/asm/pgtable-3level-hwdef.h \

arch/arm64/kernel/vmlinux.lds: $(deps_arch/arm64/kernel/vmlinux.lds)

$(deps_arch/arm64/kernel/vmlinux.lds):
