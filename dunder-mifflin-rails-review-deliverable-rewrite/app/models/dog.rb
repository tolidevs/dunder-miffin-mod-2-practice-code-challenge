class Dog < ApplicationRecord
    has_many :employees

    # accepts_nested_attributes_for :employees

    def up_for_adoption
        Employee.all.find{ |e| e.dog == self } ? false : true
    end

    def self.dogs_up_for_adoption
        Dog.all.select { |dog| dog.up_for_adoption == true }
    end
end
