.PHONY: clean run

SOURCE_FILES=*.v

processors_test: $(addprefix src/, $(SOURCE_FILES))
	iverilog $^ -o processors_test

clean:
	rm processors_test

run: processors_test
	./processors_test