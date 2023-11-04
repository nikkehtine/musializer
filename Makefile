BUILD_FLAGS = -v
OUTPUT_NAME = musializer
OUTPUT_DIR  = bin
SRC_PATH	= .

all: build

build:
	go build $(BUILD_FLAGS) -o $(OUTPUT_DIR)/$(OUTPUT_NAME) $(SRC_PATH)

run:
	$(OUTPUT_DIR)/$(OUTPUT_NAME)

cleanup:
	rm -rf $(OUTPUT_DIR)
