class ReportOrdersByUsersController < ApplicationController
  before_action :set_report_orders_by_user, only: [:show, :edit, :update, :destroy]

  # GET /report_orders_by_users
  # GET /report_orders_by_users.json
  def index
    @report_orders_by_users = ReportOrdersByUser.all
  end

  # GET /report_orders_by_users/1
  # GET /report_orders_by_users/1.json
  def show
    @report = @report_orders_by_user.gen_report.each(:as => :hash)

  respond_to do |format|
    format.html
    format.pdf do
      pdf = ReportOrdersByUsers.new(@report, view_context)
      send_data pdf.render, filename: "report_orders_by_users.pdf",
                            type: "application/pdf",
                            disposition: "inline"
    end
  end

  end

  # GET /report_orders_by_users/new
  def new
    @report_orders_by_user = ReportOrdersByUser.new
  end

  # GET /report_orders_by_users/1/edit
  def edit
  end

  # POST /report_orders_by_users
  # POST /report_orders_by_users.json
  def create
    @report_orders_by_user = ReportOrdersByUser.new(report_orders_by_user_params)

    respond_to do |format|
      if @report_orders_by_user.save
        format.html { redirect_to @report_orders_by_user, notice: 'Report orders by user was successfully created.' }
        format.json { render :show, status: :created, location: @report_orders_by_user }
      else
        format.html { render :new }
        format.json { render json: @report_orders_by_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_orders_by_users/1
  # PATCH/PUT /report_orders_by_users/1.json
  def update
    respond_to do |format|
      if @report_orders_by_user.update(report_orders_by_user_params)
        format.html { redirect_to @report_orders_by_user, notice: 'Report orders by user was successfully updated.' }
        format.json { render :show, status: :ok, location: @report_orders_by_user }
      else
        format.html { render :edit }
        format.json { render json: @report_orders_by_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_orders_by_users/1
  # DELETE /report_orders_by_users/1.json
  def destroy
    @report_orders_by_user.destroy
    respond_to do |format|
      format.html { redirect_to report_orders_by_users_url, notice: 'Report orders by user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_orders_by_user
      @report_orders_by_user = ReportOrdersByUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_orders_by_user_params
      params.require(:report_orders_by_user).permit(:date_start, :date_end, :file_path)
    end
end
