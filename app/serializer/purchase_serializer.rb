class SaleSerializer < ActiveModel::Serializer
  attributes :id, :date1, :date2, :bicyle_id, :qtybought, :valuebought, :finishdate, :created_at, :updated_at
end
