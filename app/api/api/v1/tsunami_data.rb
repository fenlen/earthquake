module API
  module V1
    class TsunamiData < Grape::API
      include V1::Defaults
      format 'json'
      resource :tsunami_data do
        desc 'Return all records in tsunami table'
        get "", root: :tsunami_data do
          Tsunami.all
        end
      end
    end
  end
end