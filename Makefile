PROTO_DIR=proto
OUT_DIR=gen
PROTO_FILES=$(wildcard $(PROTO_DIR)/*.proto)

.PHONY: all proto clean

all: proto

proto:
	@mkdir $(OUT_DIR)
	protoc \
		--proto_path=$(PROTO_DIR) \
		--go_out=$(OUT_DIR) \
		--go-grpc_out=$(OUT_DIR) \
		$(PROTO_FILES)

clean:
	rm -rf $(OUT_DIR)
