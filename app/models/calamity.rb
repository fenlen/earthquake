class Calamity < ApplicationRecord
    ##
    # Abstract class from which all the earthquake/tsunami classes inherit
    ##
    self.abstract_class = true
    def self.filter(year, mag)
        ## 
        # Filter's the table base on the given parameters, if there are none shows the whole table
        ##
        if year and year != ""
            mag = mag.to_f
            year = year.to_i
            if year != ""
                dt = DateTime.new(year)
                beginningoy = dt.beginning_of_year
                endofy= dt.end_of_year
                if mag != ""
                    where("date >= ? and date <= ? and magnitude >= ?", beginningoy, endofy, mag)
                else
                    where("date >= ? and date <= ?", beginningoy, endofy)
                end
            end
        elsif mag and mag != "" 
            where("magnitude >= ?", mag)
        else
            all
        end
    end
end