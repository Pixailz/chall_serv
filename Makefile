include config.mk

FOR_ALL_TARGET		= \
for target in $(TARGET); do \
	make --no-print-directory -C "$${target}" "$(1)"; \
done

.PHONY:				$(TARGET) serv

$(TARGET):			serv


serv:
> $(call FOR_ALL_TARGET,serv)

kill:
> $(call FOR_ALL_TARGET,kill)

clean:
> $(call FOR_ALL_TARGET,clean)
> sudo find ./log -type f ! -name "main.log" -delete

re:					clean serv
