class Bicycle < ApplicationRecord
    has_many :sales
    has_many :purchases
    has_many :salessimulations
    has_many :purchasessimulations
end
