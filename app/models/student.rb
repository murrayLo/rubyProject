class Student < ApplicationRecord
    validates :fname, presence: true
    validates :sname, presence: true
    validates :course, presence: true

    has_one :courses

    #Search Function
    def self.search(search)
        if search
            where(["fname LIKE ?","%#{search}%"])
        else
            all
        end
    end
end
