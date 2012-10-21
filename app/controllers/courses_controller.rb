class CoursesController  < ValidateLoginController
  protect_from_forgery
  def show
    @course = Course.find params[:course_id]
    if not @course
      flash[:warning] = "Could not find the corresponding course due to the following errors:\n" + errors_string(@course)
      redirect_to semester_index
    end
  end

  def index
    #redirect to the semester homepage
    if params[:semester_id]
      redirect_to semester_show params[:semester_id] # semester page
    else
      redirect_to semester_index
    end
  end

  def new
    @semester = Semester.find params[:semester_id]
  end

  def create
    @course = Course.new(params[:course])
    if not @course
      flash[:warning] = "Unable to create a new course due to the following errors:\n" + errors_string(@course)
      redirect "new"
    end
    @semester = Semester.find params[:semester_id]
  end

  def edit
    @course = Course.find params[:course_id]
    @semester = Semester.find params[:semester_id]
  end

  def update
    @course = Course.find params[:course_id]
    @semester = Semester.find params[:semester_id]
    #not sure what to call update_attributes with
    @course.update_attributes!(params[:course_id])
    flash[:notice] = "#{@course.name} #{@semester.name} was successfully updated."
    redirect_to semester_index #semester page
  end

  def destroy
    @course = Course.find(params[:course_id])
    @course.destroy
    redirect_to semester_index #semester page
  end

  private
  def errors_string(course)
    error_messages = ""
    course.errors.each_full{|attr,msg| error_messages += "#{attr} - #{msg}\n"}
    return error_messages
  end


end
