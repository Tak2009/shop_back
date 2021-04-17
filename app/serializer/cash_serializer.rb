class BicycleSerializer < ActiveModel::Serializer
  attributes :id, :bitype, :qty, :uprice, :ucost, :created_at, :updated_at
end
