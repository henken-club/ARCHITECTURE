PLANTUML_JAR_URL = https://sourceforge.net/projects/plantuml/files/plantuml.jar/download

DIAGRAMS_SRC := $(wildcard diagrams/*.plantuml)
DIAGRAMS_OUT := $(addprefix dist/,$(notdir $(basename $(DIAGRAMS_SRC))))

render: $(DIAGRAMS_OUT)

dist/%: diagrams/%.plantuml
	plantuml $^ -output $(abspath dist/$(notdir $(basename $^))) -tpng

.PHONY: render
