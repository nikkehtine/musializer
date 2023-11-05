BUILD_FLAGS = -v
SRC_PATH	= .
OUTPUT_DIR  = bin
OUTPUT_NAME = musializer

ifeq ($(shell uname), Windows_NT)
	OUTPUT_NAME := $(OUTPUT_NAME).exe
endif

all: build

build:
	go build $(BUILD_FLAGS) -o $(OUTPUT_DIR)/$(OUTPUT_NAME) $(SRC_PATH)

run:
	$(OUTPUT_DIR)/$(OUTPUT_NAME)

cleanup:
	rm -rf $(OUTPUT_DIR)
