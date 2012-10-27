name "default"
description "Default recipes we want to use on all systems"

run_list(
	"recipe[nginx]"
)