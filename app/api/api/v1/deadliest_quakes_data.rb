module API
  module V1
    class DeadliestQuakesData < Grape::API
      include V1::Defaults
      format 'json'
      resource :deadliest_quakes_data do
        desc 'Return all record in the deadliest quakes table'
        get "", root: :deadliest_quakes_data do
          DeadlyQuake.all
        end
        get "/:id", root: :deadliest_quakes_data do
          DeadlyQuake.find(params[:id])
        end
      end
    end
  end
end