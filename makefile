.PHONY: clean

#TODO: Make selections.c to work

BASE_DIR=concepts
ADVANCED_DIR=interactive

BUILD_DIR=build
COMPILE_COMMAND = [ ! -d $(BUILD_DIR) ] && mkdir $(BUILD_DIR); \
									gcc $^ -lX11 -o $(BUILD_DIR)/$@

#TODO: make a general rule that compiles all separated executables
EXECUTABLES = window attributes atoms properties graphics-context


all: $(EXECUTABLES)

window: $(BASE_DIR)/window.c
	$(COMPILE_COMMAND)

attributes: $(BASE_DIR)/attributes.c
	$(COMPILE_COMMAND)

atoms: $(BASE_DIR)/atoms.c
	$(COMPILE_COMMAND)

properties: $(BASE_DIR)/properties.c
	$(COMPILE_COMMAND)

graphics-context: $(BASE_DIR)/graphics_context.c
	$(COMPILE_COMMAND)


clean:
	rm -r $(BUILD_DIR)
