class IndexController < ActionController::Base

  def index
    render :index
  end

  def login_teacher
    @teacher = Teacher.first
    session[:user_id] = @teacher.id
    redirect_to user_path(@teacher)
  end

  def login_student
    @student = Student.first
    session[:user_id] = @student.id
    redirect_to user_path(@student)
  end
end
