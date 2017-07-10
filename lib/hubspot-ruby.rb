require 'active_support'
require 'active_support/core_ext'
require 'httparty'
require_relative 'hubspot/exceptions'
require_relative 'hubspot/properties'
require_relative 'hubspot/company'
require_relative 'hubspot/company_properties'
require_relative 'hubspot/config'
require_relative 'hubspot/connection'
require_relative 'hubspot/contact'
require_relative 'hubspot/contact_properties'
require_relative 'hubspot/contact_list'
require_relative 'hubspot/form'
require_relative 'hubspot/blog'
require_relative 'hubspot/topic'
require_relative 'hubspot/deal'
require_relative 'hubspot/deal_pipeline'
require_relative 'hubspot/deal_properties'
require_relative 'hubspot/owner'
require_relative 'hubspot/engagement'
require_relative 'hubspot/subscription'
require_relative 'hubspot/oauth'
require_relative 'hubspot/timeline'

module Hubspot
  def self.configure(config={})
    Hubspot::Config.configure(config)
  end

  require 'hubspot/railtie' if defined?(Rails)
end
