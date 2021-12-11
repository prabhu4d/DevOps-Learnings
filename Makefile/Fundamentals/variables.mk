
# Automatic Variables
all: a1 a2
		@echo "Hello"

a1 a2:
		@echo $@

print: $(wildcard *.c)
		ls -la  $?


# Variables
# simple assignment
# it only executed once when variable is created
simple_time := $(shell date)

# recursive assignment
# it is executed whenever it is called
recursive_time = $(shell date)

print-date:
		@echo "Simple Time"
		@echo $(simple_time)
		@$(shell sleep 1)
		@echo $(simple_time)
		@$(shell sleep 1)
		@echo $(simple_time)
		@echo "Recursive Time"
		@$(shell sleep 1)
		@echo $(recursive_time)
		@$(shell sleep 1)
		@echo $(recursive_time)
		@$(shell sleep 1)
		@echo $(recursive_time)
		@$(shell sleep 1)

.PHONY: hello.c

hello.c:
		@echo "I call file hello.c"

file.c:
		@echo "file.c is not included in .PHONY so this echo command will not work"

# Conditional Assignment
# if FILES is not assigned then assign file.c to FILES
FILES ?= file.c
# if FILES is not assigned then assign file.cpp to FILES
FILES ?= file.cpp
CWD = $(shell pwd)

print-file:
		@echo $(FILES)
		@echo $(CWD)

EDX_SERVICES ?= \
course-authoring+credentials+discovery+ecommerce+edx_notes_api+forum+frontend-app-learning+frontend-app-library-authoring+frontend-app-payment+frontend-app-publisher+gradebook+lms+lms_watcher+program-console+registrar+registrar-worker+studio+studio_watcher+xqueue+xqueue_consumer

EDX_SERVICES_LIST := $(subst +, ,$(EDX_SERVICES))

edx:
		@echo $(subst +, , HELLO+WORLD)