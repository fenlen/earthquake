module API
    module V1
        class Root < Grape::API
            mount API::V1::Earthquake
            # mount API::V1::Tests
        end
    end
end