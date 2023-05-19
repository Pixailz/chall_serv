## SERVING FILE

### HOWTO DL

1. With curl, recommended
> `curl http://<ip>:<port> --output <filename>`

1. With wget, the `--content-disposition` flag should be specified
> as specified [here](https://bugzilla.redhat.com/show_bug.cgi?id=239351)
> `wget --content-disposition http://<ip>:<port>`
