PRABHU =

ifneq (,$(PRABHU))
    WINPTY := winpty
else
    WINPTY :=
endif


OS := $(shell uname)

print-winpty:
		@echo PRABHU : $(PRABHU)
		@echo WINPTY : $(WINPTY)

print-findstring:
		@echo $(findstring MINGW,$(OS))