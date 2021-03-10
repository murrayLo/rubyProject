class Lecturer < ApplicationRecord
    validates :title, presence: true
    validates :fname, presence: true
    validates :sname, presence: true
    validates :subject, presence: true
end
