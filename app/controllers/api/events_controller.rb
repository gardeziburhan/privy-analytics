module Api
  class EventsController < ApplicationController
    # skip_before_action :verify_authenticity_token

    def create
      site = Site.find_by(api_key: params[:api_key])
      return head :unauthorized unless site

      site.events.create!(
        event_type: params[:event_type] || "pageview",
        path: params[:path] || request.path,
        referrer: params[:referrer] || request.referer,
        user_agent: request.user_agent,
        ip_hash: Digest::SHA256.hexdigest(request.remote_ip),
        data: params[:data] || {},
        country: request.location.try(:country)
      )
      head :ok
    rescue => e
      Rails.logger.error(e)
      head :unprocessable_entity
    end
  end
end
