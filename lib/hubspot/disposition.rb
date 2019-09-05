require 'hubspot/utils'

module Hubspot
  #
  # HubSpot Engagements API
  #
  # {http://developers.hubspot.com/docs/methods/engagements/create_engagement}
  #
  class Disposition
    DISPOSITIONS_PATH = '/calling/v1/dispositions'

    def self.find
      dispositions = []
      begin
        dispositions = Hubspot::Connection.get_json(DISPOSITIONS_PATH, {})
      rescue => e
        raise e unless e.message =~ /not found/
      end
      dispositions
    end

  end

end
