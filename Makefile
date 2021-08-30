PLANTUML_JAR_URL = https://sourceforge.net/projects/plantuml/files/plantuml.jar/download

DIAGRAMS_SRC := $(wildcard diagrams/*.plantuml)
DIAGRAMS_OUT := $(addprefix dist/diagrams/,$(notdir $(basename $(DIAGRAMS_SRC))))

diagrams: $(DIAGRAMS_OUT)

dist/diagrams/%: diagrams/%.plantuml
	plantuml $^ -output $(abspath dist/diagrams/$(notdir $(basename $^))) -tpng

.PHONY: diagrams
