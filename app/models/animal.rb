class Animal < ApplicationRecord
  validates :name, :fake_scientific_name, :description, presence: true
end
