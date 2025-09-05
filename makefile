.PHONY: clean startup

base_dir=concepts
advanced_dir=interactive

build_dir=build
compile_command=gcc $^ -lX11 -o $@


all: window attributes atoms properties selections

window: $(base_dir)/window.c
	$(compile_command)

attributes: $(base_dir)/info.c
	$(compile_command)

atoms: $(base_dir)/atoms.c
	$(compile_command)

properties: $(base_dir)/properties.c
	$(compile_command)

graphics-context: $(base_dir)/graphics_context.c
	$(compile_command)


startup:
	echo hi
	[ ! -d $(build_dir) ] && mkdir -p $(build_dir)

#Everyone depends on startup rule
$(build_dir)/%: startup

clean:
	rm -r $(build_dir)
