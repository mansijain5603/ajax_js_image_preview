class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
 
  def show
    @student = Student.find(params[:id])
  end
 
  def new
    @student = Student.new
  end
 
  def create
    @student = Student.new(student_params)
    respond_to do |format|
      if @student.save
        format.js      
        #redirect_to @student #can write format.html 
      else
        render 'new'
      end
    end
  end

  def edit
    @student = Student.find(params[:id])
  end
 
  def update
    @student = Student.find(params[:id])
    @student.update(images: params[:file])  
    respond_to do |format|
     format.js
    end  
    # if @student.update(student_params)
    #   redirect_to @student
    # else
    #   render 'edit'
    # end
  end
 
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
 
    redirect_to students_path
  end
 
  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :gender, :age, :house_no, :street, 
        :city, :state , :country, :pincode, images:[])
    end
end
