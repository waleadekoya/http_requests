all: test vet build

test:
	go test ./..
vet:
	go vet ./..
#fmt:
#	go list -f '{{.Dir}}' ./... | grep -v /vendor/ | xargs -L1 gofmt -l
#	test -z $$(go listr -f  {{.Dir}}' ./... | grep -v /vendor/ | xargs -L1 go)
#lint:
#	go list ./.. | grep -v /vendor/ | xargs -L1 golint -set_exit_status
build:
	go build -o bin/ ./cmd/api

