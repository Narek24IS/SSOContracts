default:
	make generate

generate:
	export PATH=$PATH:$HOME/go/bin
	protoc -I proto proto/sso/*.proto \
					--go_out=/home/hikinari/GolandProjects/SSOContracts/gen/go \
					--go_opt=paths=source_relative \
					--go-grpc_out=/home/hikinari/GolandProjects/SSOContracts/gen/go \
					--go-grpc_opt=paths=source_relative
