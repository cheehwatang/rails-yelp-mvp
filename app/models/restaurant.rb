class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = %w(Chinese Italian Japanese French Belgian).freeze

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
