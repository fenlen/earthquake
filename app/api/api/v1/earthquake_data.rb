module API
  module V1
    class EarthquakeData < Grape::API
      include V1::Defaults
      format 'json'
      resource :earthquake_data do
        desc 'Return all records in the earthquakes table'
        get "", root: :earthquake_data do
          EarthquakeDatum.all
        end
      end
    end
  end
end