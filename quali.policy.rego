package quali.policy

import input

default region_is_allowed = false

region_is_allowed {
    input.blueprint_name != "policy_sample"
}

region_is_allowed {
	allowed_regions:= {"eu-west-1", "eu-west-2"}
	allowed_regions[input.region]
}
