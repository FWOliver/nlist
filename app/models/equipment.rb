class Equipment < ActiveRecord::Base

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
      csv << column_names
      all.each do |equipment|
          csv << equipment.attributes.values_at(*column_names)
  end
end
end

def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    equipment = find_by_id(row["name"]) || new
    equipment.attributes = row.to_hash
    equipment.save!
  end
end

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |equipment|
      csv << equipment.attributes.values_at(*column_names)
    end
  end
end


end
