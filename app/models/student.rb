class Student < ApplicationRecord
    validates_presence_of :fname, :sname, :course
end
