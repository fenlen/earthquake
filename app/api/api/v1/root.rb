module API
    module V1
        class Root < Grape::API
            mount API::V1::EarthquakeData
            mount API::V1::TsunamiData
            mount API::V1::DeadliestQuakesData
        end
    end
end