PLANTUML_JAR_URL = https://sourceforge.net/projects/plantuml/files/plantuml.jar/download

DIAGRAMS_SRC := $(wildcard diagrams/*.plantuml diagrams/*.puml)
DIAGRAMS_OUT := $(abspath dist)

png:
	plantuml $(DIAGRAMS_SRC) -o $(DIAGRAMS_OUT) -tpng

svg:
	plantuml $(DIAGRAMS_SRC) -o $(DIAGRAMS_OUT) -tsvg

.PHONY: png svg
