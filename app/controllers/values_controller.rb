class ValuesController < ApplicationController
  before_action :set_value, only: [:show, :edit, :update, :destroy]

  def index
    @values = Value.all
  end

  def show
  end

  def new
    @value = Value.new
  end

  def edit
  end

  def create
    @value = Value.new(value_params)

    respond_to do |format|
      if @value.save
        format.html { redirect_to @value, notice: 'Value was successfully created.' }
        format.json { render :show, status: :created, location: @value }
      else
        format.html { render :new }
        format.json { render json: @value.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @value.update(value_params)
        format.html { redirect_to @value, notice: 'Value was successfully updated.' }
        format.json { render :show, status: :ok, location: @value }
      else
        format.html { render :edit }
        format.json { render json: @value.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @value.destroy
    respond_to do |format|
      format.html { redirect_to values_url, notice: 'Value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_value
      @value = Value.find(params[:id])
    end

    def value_params
      # params.require(:value).permit(:user_id, :image_id, :value)
      params.fetch(:value, {})
    end
end
