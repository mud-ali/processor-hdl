.PHONY: clean run

SOURCE_FILES=testbench.v halfadder.v fulladder.v

processors_test: $(SOURCE_FILES)
	iverilog $(SOURCE_FILES) -o processors_test

clean:
	rm processors_test

run: processors_test
	./processors_test