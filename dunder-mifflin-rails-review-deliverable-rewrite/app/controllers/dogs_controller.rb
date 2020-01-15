class DogsController < ApplicationController
    
    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def up_for_adoption
        @dogs_for_adoption = Dog.dogs_up_for_adoption
    end

    def adopt_this_dog
        @dog = Dog.find(params[:id])
        @employees = Employee.all
    end

    def adoption
        @dog = Dog.find(params[:id])
        @employees = Employee.all
        employee = Employee.find(dog_params[:employee_ids])
        employee.dog = @dog
        employee.save
        redirect_to @dog
    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params)
        redirect_to @dog
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :age, :breed, :employee_ids)
    end
end
