class Csvread
    #Attempt at a custom gem to import data from a CSV file
    require 'csv'

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Csvdata.create! row.to_hash
        end
    end
end