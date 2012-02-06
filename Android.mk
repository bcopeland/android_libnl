LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	lib/attr.c \
	lib/object.c \
	lib/route/qdisc_obj.c \
	lib/route/qdisc_api.c \
	lib/route/cls_api.c \
	lib/route/class.c \
	lib/route/link.c \
	lib/route/route.c \
	lib/route/cls_obj.c \
	lib/route/neightbl.c \
	lib/route/nexthop.c \
	lib/route/rtnl.c \
	lib/route/cls/fw.c \
	lib/route/cls/u32.c \
	lib/route/cls/police.c \
	lib/route/rule.c \
	lib/route/route_utils.c \
	lib/route/class_obj.c \
	lib/route/neigh.c \
	lib/route/link/api.c \
	lib/route/link/vlan.c \
	lib/route/addr.c \
	lib/route/classifier.c \
	lib/route/sch/cbq.c \
	lib/route/sch/blackhole.c \
	lib/route/sch/prio.c \
	lib/route/sch/dsmark.c \
	lib/route/sch/sfq.c \
	lib/route/sch/fifo.c \
	lib/route/sch/red.c \
	lib/route/sch/htb.c \
	lib/route/sch/tbf.c \
	lib/route/sch/netem.c \
	lib/route/tc.c \
	lib/route/qdisc.c \
	lib/route/route_obj.c \
	lib/route/class_api.c \
	lib/cache.c \
	lib/nl.c \
	lib/addr.c \
	lib/handlers.c \
	lib/family.c \
	lib/fib_lookup/lookup.c \
	lib/fib_lookup/request.c \
	lib/cache_mngr.c \
	lib/cache_mngt.c \
	lib/utils.c \
	lib/doc.c \
	lib/genl/mngt.c \
	lib/genl/ctrl.c \
	lib/genl/family.c \
	lib/genl/genl.c \
	lib/data.c \
	lib/socket.c \
	lib/msg.c

#	lib/netfilter/log.c \
#	lib/netfilter/ct.c \
#	lib/netfilter/nfnl.c \
#	lib/netfilter/ct_obj.c \
#	lib/netfilter/log_obj.c \

LOCAL_MODULE_TAGS := optional
LOCAL_NO_DEFAULT_COMPILER_FLAGS := true
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include \
	$(TARGET_PROJECT_INCLUDES) $(TARGET_C_INCLUDES)
LOCAL_CFLAGS := $(TARGET_GLOBAL_CFLAGS) $(PRIVATE_ARM_CFLAGS)
LOCAL_PRELINK_MODULE := false

LOCAL_MODULE:=libnl

include $(BUILD_SHARED_LIBRARY)
