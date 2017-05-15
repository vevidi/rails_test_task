class FeedbackFormsController < ApplicationController
  before_action :set_feedback_form, only: [:show, :edit, :update, :destroy]

  # GET /feedback_forms
  def index
    @feedback_forms = FeedbackForm.all
  end

  # GET /feedback_forms/1
  def show
  end

  # GET /feedback_forms/new
  def new
    @feedback_form = FeedbackForm.new
  end

  # GET /feedback_forms/1/edit
  def edit
  end

  # POST /feedback_forms
  def create
    @feedback_form = FeedbackForm.new(feedback_form_params)

    respond_to do |format|
      if @feedback_form.save
        format.html {redirect_to @feedback_form, notice: "Мы ждем Вас: #{@feedback_form.appointment_date}"}
      else
        format.html {render :new}
      end
    end
  end

  # PATCH/PUT /feedback_forms/1
  def update
    respond_to do |format|
      if @feedback_form.update(feedback_form_params)
        format.html {redirect_to @feedback_form, notice: 'Feedback form was successfully updated.'}
      else
        format.html {render :edit}
      end
    end
  end

  # DELETE /feedback_forms/1
  def destroy
    @feedback_form.destroy
    respond_to do |format|
      format.html {redirect_to feedback_forms_url, notice: 'Feedback form was successfully destroyed.'}
    end
  end

  def feedback_form_attachment
    feedback_form = FeedbackForm.find_by_attachment(params[:attachment_id])
    send_data feedback_form.attachment.file.read, filename: feedback_form.file_name
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_feedback_form
    @feedback_form = FeedbackForm.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def feedback_form_params
    params[:feedback_form][:file_name] = params[:feedback_form][:attachment].original_filename if params[:feedback_form][:attachment]
    params.require(:feedback_form).permit(:age, :name, :attachment, :attachment_cache, :file_name, :appointment_date)
  end
end
