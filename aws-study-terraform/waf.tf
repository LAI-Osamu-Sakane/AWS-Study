resource "aws_wafv2_web_acl" "example" {
  name        = "managed-rule-example"
  description = "Example of a managed rule."
  scope       = "REGIONAL"

  default_action {
    allow {}
  }

  rule {
    name     = "AWS-study-rule"
    priority = 1

    override_action {
      count {}
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "SizeRestrictions_QUERYSTRING"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "SizeRestrictions_Cookie_HEADER"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "SizeRestrictions_BODY"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "SizeRestrictions_URIPATH"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "EC2MetaDataSSRF_BODY"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "EC2MetaDataSSRF_COOKIE"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "EC2MetaDataSSRF_URIPATH"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "EC2MetaDataSSRF_QUERYARGUMENTS"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "GenericLFI_QUERYARGUMENTS"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "GenericLFI_URIPATH"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "GenericLFI_BODY"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "RestrictedExtensions_URIPATH"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "RestrictedExtensions_QUERYARGUMENTS"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "GenericRFI_BODY"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "GenericRFI_URIPATH"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "CrossSiteScripting_COOKIE"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "CrossSiteScripting_QUERYARGUMENTS"
        }

        rule_action_override {
          action_to_use {
            count {}
          }
          name = "CrossSiteScripting_BODY"
        }

        rule_action_override {
          action_to_use {
            count {}
          }

          name = "CrossSiteScripting_URIPATH"
        }

        scope_down_statement {
          geo_match_statement {
            country_codes = ["JP"]
          }
        }
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "friendly-rule-metric-name"
      sampled_requests_enabled   = false
    }
  }

  #   tags = {
  #     Tag1 = "Value1"
  #     Tag2 = "Value2"
  #   }


  visibility_config {
    cloudwatch_metrics_enabled = false
    metric_name                = "friendly-metric-name"
    sampled_requests_enabled   = false
  }
}