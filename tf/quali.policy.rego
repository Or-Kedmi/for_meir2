package quali.policy

import input

default region_is_allowed = false

region_is_allowed {
    input.resource_changes[_].name != "my_sg"
}

region_is_allowed {
	region:= input.configuration.provider_config.aws.expressions.region.constant_value
	allowed_regions:= {"eu-west-1", "eu-west-2"}	
	allowed_regions[region]
}
