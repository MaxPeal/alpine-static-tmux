IMAGE:=alpine-static
TAR:=tar
OUT:=out
DOCKER:=sudo docker
.PHONY: docker all
.DEFAULT:

TARGETS:=tmux-static
ALLTARGETS:=$(TARGETS) $(GHCTARGETS)

all: $(ALLTARGETS)


upx: $(UPXS)

$(OUT):
	install -dm755 $@

dist: $(TARGETS) static.tar.xz

docker:
	$(DOCKER) build -t $(IMAGE) .

$(TARGETS): docker $(OUT)
	$(DOCKER) run -a stdout $(IMAGE) /bin/tar -cf - /usr/local/bin/$@ | $(TAR) xf - --strip-components=2 -C $(OUT)
	
clean:
	-rm $(ALLTARGETS)

dockerclean:
	$(DOCKER) rmi -f $(IMAGE):latest
