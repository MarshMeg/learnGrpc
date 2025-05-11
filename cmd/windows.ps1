rm -r ./gen/*
protoc --go_out=gen --go-grpc_out=gen --proto_path=proto base.proto auth.proto
cp -r ./gen/github.com/MarshMeg/learnGrpc/gen/* ./gen/
rm -r ./gen/github.com