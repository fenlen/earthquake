module API
    module V1
        module Defaults
            extend ActiveSupport::Concern

            included do
                prefix "api"
                version "v1", using: :path
                default_format :json
                format :json
            #     formatter :json,
            #         Grape::Formatter::ActiveModelSerializers

            #     def logger
            #         Rails.logger
            #     end

            # rescue_from ActiveRecord::RecordNotFound do |e|
            #    error_response(message: e.message, status: 404)
            # end

            # rescue_from ActiveRecord::RecordInvalid do |e|
            #     error_response(message: e.message, status: 402)
            # end
        end
    end
end
end