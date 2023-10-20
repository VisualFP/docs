design_concept:
	typst watch --root SA SA/design_concept/design_concept.typ

project_documentation:
	typst watch --root SA SA/project_documentation/project_documentation.typ

concept_questionnaire:
	typst watch --root SA --font-path SA/concept_questionnaire/static SA/concept_questionnaire/concept_questionnaire.typ

all:
	mkdir -p SA/out
	typst compile --root SA --font-path SA/design_concept/static SA/design_concept/design_concept.typ SA/out/design_concept.pdf
	typst compile --root SA SA/project_documentation/project_documentation.typ SA/out/project_documentation.pdf
	typst compile --root SA --font-path SA/concept_questionnaire/static SA/concept_questionnaire/concept_questionnaire.typ SA/out/concept_questionnaire.pdf