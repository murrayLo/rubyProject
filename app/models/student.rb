class Student < ApplicationRecord
    validates :fname, presence: true
    validates :sname, presence: true
    validates :course, presence: true
end
