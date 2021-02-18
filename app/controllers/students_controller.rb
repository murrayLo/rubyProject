class StudentsController < ApplicationController

    before_action :get_student, only: [:show, :edit, :update, :destroy]

    #List of all students
    def index
        @students = Student.all
    end

    #View a student by id
    def show
        
    end

    #New student
    def new
        @student = Student.new
    end

    #Create new student
    def create
        @student = Student.new(student_params)
        if @student.save
            redirect_to @student, notice: "Student Enrolled Successfully"
        else
            redirect_to new_student_path, notice: "Enrollment Failed. Please Try Again"
        end
    end

    #Edit existing students details
    def edit
       
    end

    #Update the student with edited details
    def update
        if @student.update(student_params)
            redirect_to @student, notice: "Student Details Updated"
        else
            redirect_to edit_student_path(@student), notice: "Edit Details Failed. Please Try Again"
        end
    end

    #Delete a student
    def destroy
        @student.destroy
        redirect_to students_url, notice: "Student Deleted"
    end

    private

    #Method to find student by ID, used by show, edit, update and destroy methods
    def get_student
        @student = Student.find(params[:id])
    end

    #Define parameters associated with a Student 
    def student_params
        params.require(:student).permit(:fname, :sname, :course)
    end

end