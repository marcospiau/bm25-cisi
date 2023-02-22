# Define variables
DATA_DIR := data
RAW_DIR := $(DATA_DIR)/raw
TAR_FILE := $(RAW_DIR)/cisi.tar.gz
UNTAR_DIR := $(RAW_DIR)/cisi
GET_RAW_DATA := get_raw_data

# Define phony targets
.PHONY: $(GET_RAW_DATA) clean help

# Define targets and dependencies
$(GET_RAW_DATA): $(TAR_FILE)
	tar -C $(RAW_DIR) -zxvf $<

$(TAR_FILE):
	mkdir -p $(RAW_DIR)
	curl -o $@ http://ir.dcs.gla.ac.uk/resources/test_collections/cisi/cisi.tar.gz

clean:
	rm -rfv $(RAW_DIR)

help:
	@echo "Available targets:"
	@echo " $(GET_RAW_DATA)\tDownloads and unzips the CISI dataset to $(RAW_DIR)"
	@echo " clean\t\tRemoves the $(RAW_DIR) directory and all its contents"
