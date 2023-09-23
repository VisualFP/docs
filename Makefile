design_concept:
	typst watch --root SA SA/design_concept/design_concept.typ

project_documentation:
	typst watch --root SA SA/project_documentation/project_documentation.typ

all:
	mkdir -p SA/out
	typst compile --root SA SA/design_concept/design_concept.typ SA/out/design_concept.pdf
	typst compile --root SA SA/project_documentation/project_documentation.typ SA/out/project_documentation.pdf