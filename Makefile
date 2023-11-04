BUILD_FLAGS = -v
SRC_PATH	= .
OUTPUT_DIR  = bin
OUTPUT_NAME = musializer

ifeq ($(shell uname), Windows_NT)
	OUTPUT_FILE = $(OUTPUT_DIR)/$(OUTPUT_NAME).exe
else
	OUTPUT_FILE = $(OUTPUT_DIR)/$(OUTPUT_NAME)
endif

all: build

build:
	go build $(BUILD_FLAGS) -o $(OUTPUT_FILE) $(SRC_PATH)

run:
	$(OUTPUT_FILE)

cleanup:
	rm -rf $(OUTPUT_DIR)
