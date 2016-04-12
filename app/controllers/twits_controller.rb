class TwitsController < ApplicationController


  def index
    @twits = Twit.paginate(:page => params[:page], :per_page => 25)
    render template: "/twits/index.html.erb"
  end

  def show
    twit = set_twit

      if twit
        @twit = twit
        render template: 'twits/show.html.erb'
      else
        render_not_found
      end
  end

  # def new
  #   @twit = Twit.new
  # end
  #
  # def edit
  # end
  #
  # def create
  #   @twit = twit.new(twit_params)
  #
  #   respond_to do |format|
  #     if @twit.save
  #       format.html { redirect_to @twit, notice: 'Twit was successfully created.'}
  #       format.json { render :show, status: :created, location: @twit }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @twit.errors, status: :cannot_process }
  #     end
  #   end
  # end
  #
  # def update
  #   respond_to do |format|
  #     if @twit.update(twit_params)
  #       format.html { redirect_to @twit, notice: 'Twit was successfully updated.'}
  #       format.json { render :show, status: :ok, :created, location: @twit }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @twit.errors, status: :cannot_process }
  #     end
  #   end
  # end
  #
  # def destroy
  #   @twit.destroy
  #   respond_to do |format|
  #     format.html { redirect_to twits_url, notice: 'Twit was successfully deleted'}
  #     format.json { head :no_content }
  #   end
  # end

  private

    def set_twit
      @twit = Twit.find(params[:id])
    end

    def twit_params
      params.require(:twit).permit(:entry, :user_id)
    end

    def render_not_found
      render template: "twits/not_found.html.erb"
    end
end
