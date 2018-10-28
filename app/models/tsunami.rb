class Tsunami < Calamity
    def self.filter(year, mag)
        ## 
        # Overrides Calamity.filter due to the tsunami table having a different column name for magnitude(Magnitude => Primary_Magnitude)
        ##
        if year and year != ""
            mag = mag.to_f
            year = year.to_i
            if year != ""
                dt = DateTime.new(year)
                beginningoy = dt.beginning_of_year
                endofy= dt.end_of_year
                if mag != ""
                    where("\"Date\" >= ? and \"Date\" <= ? and \"Primary_Magnitude\" >= ?", beginningoy, endofy, mag)
                else
                    where("\"Date\" >= ? and \"Date\" <= ?", beginningoy, endofy)
                end
            end
        elsif mag and mag != "" 
            where("\"Primary_Magnitude\" >= ?", mag)
        else
            all
        end
    end
end
