design_concept:
	typst watch SA/design_concept/design_concept.typ --root SA

project_documentation:
	typst watch SA/project_documentation/project_documentation.typ --root SA

all:
	typst compile SA/design_concept/design_concept.typ --root SA
	typst compile SA/project_documentation/project_documentation.typ --root SA