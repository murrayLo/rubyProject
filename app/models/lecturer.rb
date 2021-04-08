class Lecturer < ApplicationRecord
   
    validates :title, presence: true
    validates :fname, presence: true
    validates :sname, presence: true
    validates :subject, presence: true

    # has_many :lecturesubject
    # has_many :subject, :through => :lecturesubject

    #Search Function
    def self.search(search)
        if search
            where(["fname LIKE ?","%#{search}%"])
        else
            all
        end
    end
end
