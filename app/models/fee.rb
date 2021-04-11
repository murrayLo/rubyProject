class Fee < ApplicationRecord
    #require 'csvread'
    require 'csv'

    def self.import(file)
        #feefile = File.join Rails.root, "fees.csv"
        CSV.foreach(file.path, headers: true) do |row|
            Fee.create! row.to_hash
        end
    end
end
