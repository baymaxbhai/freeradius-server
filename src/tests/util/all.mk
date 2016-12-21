SUBMAKEFILES := ring_buffer_test.mk message_set_test.mk atomic_queue_test.mk control_test.mk

#
#  These require pthread.
#
ifneq "$(findstring thread,${CFLAGS})" ""
SUBMAKEFILES += channel_test.mk worker_test.mk radius_test.mk
endif
