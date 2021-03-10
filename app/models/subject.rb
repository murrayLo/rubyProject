class Subject < ApplicationRecord
    validates :title, presence: true
    validates :lecturer, presence: true
end
