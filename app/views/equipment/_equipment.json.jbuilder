json.extract! equipment, :id, :name, :kindof, :serial, :os, :udid, :location, :status, :created_at, :updated_at
json.url equipment_url(equipment, format: :json)