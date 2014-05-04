PRGNAME = libtnt
OUTFILE = $(PRGNAME).a
LIBFILE = $(OUTFILE)

#������涨�����еı����Ͷ���,���Լ�����
include ../Makefile.macros

# ALL_CPP_FILES += $(wildcard *.cpp )
IGNORE_DIRS := conf test unit_test detail

ALL_DIRS = $(shell ls -l --time-style=long-iso | grep ^d | awk '{print $$8}')
SUB_DIRS := $(filter-out ${IGNORE_DIRS}, $(ALL_DIRS))

ALL_CPP_FILES += $(wildcard *.cpp )
ALL_CPP_FILES += $(foreach sub_dir, ${SUB_DIRS}, $(wildcard ${sub_dir}/*.cpp))

CPP_FILE := ${ALL_CPP_FILES}

INC_ALL += -I./


#�������ı�Mafile�Ĺ�����������ط��������Լ��Ķ���.

#��������������еĹ���,�������Լ�����
include ../Makefile.rule

