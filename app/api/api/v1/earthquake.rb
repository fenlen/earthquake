module API
    module V1
        class Earthquake < Grape::API
            include V1::Defaults
            format 'json'
            resource :earthquake do
                desc 'Return earthquakes'
                get "", root: :earthquake do
                    Tsunami.all
                end
            end
        end
    end
end