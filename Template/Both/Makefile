CHALL_ID			:= 0001
CC					:= gcc
TARGET				:= prog
CFLAGS				:= -Wextra -Wall -fno-stack-protector

SRC_C				:= main.c

PRINTF				:= @printf
SERV				:= ../../serv
MKDIR				= \
[ -f "$(1)" ] && rm -f $(1) ; \
[ ! -d "$(1)" ] && mkdir -p $(1)

# BASH
SHELL				:= /usr/bin/bash			# set bash path
.SHELLFLAGS			:= -eu -o pipefail -c		# set bash strict mode

# Always use GNU Make.
ifeq ($(origin .RECIPEPREFIX), undefined)
  $(error This Make does not support .RECIPEPREFIX. Please use GNU Make 4.0 or later)
endif
## Use '>' to instead of tab.
.RECIPEPREFIX		= >

ifeq ($(DEBUG),1)
CFLAGS				+= -g3
endif

$(TARGET):
> $(CC) $(CFLAGS) $(SRC_C) -o $(TARGET)

clean:				kill
> rm -rf ./$(TARGET)

re:					clean $(TARGET)

run:				re $(TARGET)
> ./$(TARGET)

serv:			$(TARGET)
> sudo $(SERV) "serv" "exec" "$(CHALL_ID)" "0" "$(TARGET)"
> sudo $(SERV) "serv" "file" "$(CHALL_ID)" "1" "$(TARGET)"

kill:
> sudo $(SERV) "kill" "$(CHALL_ID)" "0"
> sudo $(SERV) "kill" "$(CHALL_ID)" "1"
