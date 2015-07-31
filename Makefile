CC=gcc
CFLAGS=-Wall -g -lm

TARGET=bin/tsplay

INCLUDE= -I./inc
SOURCE=  \
	src/accessunit.c \
	src/bitdata.c \
	src/es.c \
	src/h222.c \
	src/h262.c \
	src/misc.c \
	src/nalunit.c \
	src/pes.c \
	src/pidint.c \
	src/ps.c \
	src/reverse.c \
	src/ts.c \
	src/tsplay.c \
	src/tswrite.c

OBJPATH=./obj

default: $(TARGET)

DEPS=$(addprefix $(OBJPATH)/, $(patsubst %.c, %.d, $(filter %.c, $(SOURCE))))
OBJS=$(addprefix $(OBJPATH)/, $(addsuffix .o, $(basename $(SOURCE))))

-include $(DEPS)

$(OBJPATH)/%.o : %.c
	test -d $(dir $@) || mkdir -p $(dir $@)
	$(CC) $(CFLAGS) $(INCLUDE) -o $@ -c $<

$(TARGET): $(OBJS)
	test -d $(dir $@) || mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -o $@ $^
	@echo -e "\n<Tips> Build '$(TARGET)' success!\n"

clean:
	rm -rf $(OBJPATH) $(TARGET)
	@echo -e "\n<Tips> clean complete!\n"