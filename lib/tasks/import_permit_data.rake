require 'csv'

namespace :import_from_csv do

  desc "Import Permits from csv file"
  task :import_permits => [:environment] do

    file = "/Users/roberttaraya/Desktop/permit_sample_data.csv"

    CSV.foreach(file, headers: true, header_converters: :symbol) do |data_row|
      data_attrs = data_row.to_hash
      permit = Permit.where(data_attrs).first_or_create
    end
  end
end
