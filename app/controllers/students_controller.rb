class StudentsController < ApplicationController
    before_action :set_student, only: %i[show edit update destroy]
    def index
        @students=Student.all
        render json: @students
    end
    def new
        @student=Student.new
    end
    def create 
        @student=Student.new(student_params)
        if @student.save
            # redirect_to students_path, notice: 'Resource has been created successfully'
            render json: @student
        else
            render json: @student.errors
        end

    end
  
    def show
        render json: @student
    end
    def edit
    end
    def update
        if @student.update(student_params)
            render json: @student
        else
            render :edit
        end

    end
    def destroy
        @student.destroy
        redirect_to students_path, notice: 'Resource has been created successfully'
    end
     
    def my_action
        @student = Student.find_by(first_name: 'Ravi 1')
        render json: @student
    end    

    private
    def student_params
        params.require(:student).permit(:first_name, :last_name, :age_of_student, :date_of_birth, :local_addr, :permanent_addr, :alternate_contact)
    end
    def set_student
        @student=Student.find(params[:id])
    end
    
end
