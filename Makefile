MKDIR_P = mkdir -p
OUT_DIR=build/output

all: directories docs

.PHONY: directories
directories: ${OUT_DIR}

${OUT_DIR}:
	${MKDIR_P} ${OUT_DIR}

.PHONY: docs
docs:
	@docker run -v $$PWD/:/docs pandoc/latex -f markdown /docs/README.md -o /docs/${OUT_DIR}/README.pdf
