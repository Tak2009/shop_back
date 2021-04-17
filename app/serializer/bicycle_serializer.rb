class CashSerializer < ActiveModel::Serializer
  attributes :id, :date, :bal, :created_at, :updated_at
end
