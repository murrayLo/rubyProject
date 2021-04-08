class Course < ApplicationRecord
    validates :title, presence: true
    validates :subject1, presence: true
    validates :subject2, presence: true
    validates :subject3, presence: true
    validates :subject4, presence: true
    validates :department, presence: true

    has_many :subjects

    #Search Function
    def self.search(search)
        if search
            where(["title LIKE ?","%#{search}%"])
        else
            all
        end
    end
end
