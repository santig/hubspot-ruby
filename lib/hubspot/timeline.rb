module Hubspot
  #
  # HubSpot Timeline API
  #
  # {https://developers.hubspot.com/docs/methods/timeline/timeline-overview}
  #
  class Timeline
    CREATE_OR_UPDATE_PATH        = '/integrations/v1/:application_id/timeline/event'
    GET_EVENT_TYPES_PATH         = '/integrations/v1/:application_id/timeline/event-types?userId=:user_id'

    class << self
      # PATH /integrations/v1/:application‐id/timeline/event
      # API endpoint: https://developers.hubspot.com/docs/methods/timeline/create-or-update-event
      def create_or_update(email, params={})
        response = Hubspot::Connection.post_json(CREATE_OR_UPDATE_PATH, params: { contact_email: email }, body: post_data )
        contact = find_by_id(response['vid'])
        contact.is_new = response['isNew']
        contact


      end

      # PATH /integrations/v1/:application-id/timeline/event-types
      # API endpoint: https://developers.hubspot.com/docs/methods/timeline/get-event-types
      def get_event_types(hubspot_app_id, user_id)
        Hubspot::Connection.get_json(GET_EVENT_TYPES_PATH, application_id: hubspot_app_id, user_id: user_id )
      end
    end
  end
end
