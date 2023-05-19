# BASH
SHELL				:= /usr/bin/bash			# set bash path
.SHELLFLAGS			:= -eu -o pipefail -c		# set bash strict mode

# Always use GNU Make.
ifeq ($(origin .RECIPEPREFIX), undefined)
  $(error This Make does not support .RECIPEPREFIX. Please use GNU Make 4.0 or later)
endif
## Use '>' to instead of tab.
.RECIPEPREFIX		= >

TAR_TEMPLATE		:= File	\
					   Exec	\
					   Both
# TAR_MISC			:= CanYouSeeMe
# TAR_PWN				:= PreciseHit
# TAR_RE				:= SortedFunction
# TAR_FORE			:=

DIR_TEMPLATE		:= Template
# DIR_MISC			:= Misc
# DIR_PWN				:= Pwn
# DIR_RE				:= Re
# DIR_FORE			:= Forensic

TAR_TEMPLATE		:= $(addprefix $(DIR_TEMPLATE)/,$(TAR_TEMPLATE))
# TAR_MISC			:= $(addprefix $(DIR_MISC)/,$(TAR_MISC))
# TAR_PWN				:= $(addprefix $(DIR_PWN)/,$(TAR_PWN))
# TAR_RE				:= $(addprefix $(DIR_RE)/,$(TAR_RE))
# TAR_FORE			:= $(addprefix $(DIR_FORE),$(TAR_FORE))

TARGET				:= $(TAR_TEMPLATE) # $(TAR_MISC) $(TAR_PWN) $(TAR_RE)

