class FeedSettingsController < ApplicationController
  before_action :set_feed_setting, only: [:show, :edit, :update, :destroy]

  # GET /feed_settings
  # GET /feed_settings.json
  def index
    @feed_settings = FeedSetting.all
  end

  # GET /feed_settings/1
  # GET /feed_settings/1.json
  def show
  end

  # GET /feed_settings/new
  def new
    @feed_setting = FeedSetting.new
  end

  # GET /feed_settings/1/edit
  def edit
  end

  # POST /feed_settings
  # POST /feed_settings.json
  def create
    @feed_setting = FeedSetting.new(feed_setting_params)

    respond_to do |format|
      if @feed_setting.save
        format.html { redirect_to @feed_setting, notice: 'Feed setting was successfully created.' }
        format.json { render :show, status: :created, location: @feed_setting }
      else
        format.html { render :new }
        format.json { render json: @feed_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feed_settings/1
  # PATCH/PUT /feed_settings/1.json
  def update
    respond_to do |format|
      if @feed_setting.update(feed_setting_params)
        format.html { redirect_to @feed_setting, notice: 'Feed setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @feed_setting }
      else
        format.html { render :edit }
        format.json { render json: @feed_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feed_settings/1
  # DELETE /feed_settings/1.json
  def destroy
    @feed_setting.destroy
    respond_to do |format|
      format.html { redirect_to feed_settings_url, notice: 'Feed setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed_setting
      @feed_setting = FeedSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feed_setting_params
      params.require(:feed_setting).permit(:title, :link, :language, :copyright, :subtitle, :author, :summary, :description, :owner_name, :owner_mail, :image, :category, :keywords)
    end
end
