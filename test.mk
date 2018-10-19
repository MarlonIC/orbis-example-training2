A := $(B)
B := "kak"
TEST := 'hi'

GIT_REPOSITORY_REMOTE_SSH = "git@github.com:MarlonIC/orbis-training-project.git"

run:
	bash ./x.sh
run2:
	@echo ${A}
run3:
	@echo $(strip $(GIT_REPOSITORY_REMOTE_SSH))