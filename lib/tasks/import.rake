require 'csv'
namespace :import do

    desc "import course fee's from CSV"
    task fees: :environment do
        feefile = File.join Rails.root, "fees.csv"
        CSV.foreach(feefile, headers: true) do |row|
    
        end
    end
end