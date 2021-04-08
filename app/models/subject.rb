class Subject < ApplicationRecord

    validates :title, presence: true
    validates :lecturer, presence: true

    # has_one :lecturesubject
    # has_one :lecturer, :through => :lecturesubject

    #Search Function
    def self.search(search)
        if search
            where(["title LIKE ?","%#{search}%"])
        else
            all
        end
    end
end