class StudentController < ApplicationController
	
	def index
		@students = Student.all
	end

	def new
		@student = Student.new
  end

  def create
    @student = Student.new('name' => params[:student][:name],
      	              'age' => params[:student][:age],
      	              'gender' => params[:student][:gender],
      	              'password' => params[:student][:password],
      	             'address' => params[:student][:address],
      	             'phoneno' => params[:student][:phoneno],
      	             'accept' => params[:student][:accept]) 
    if(@student.save == true)
      redirect_to "/"
    else
      render :new 
    end
  end

    def show
    @student = Student.find(params[:id])   
  end
  
  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to "/"   
  end
   
end
