class DevschoolsController < ApplicationController

  def index
   @devschools = DevSchool.all

    @markers = @devschools.geocoded.map do |devschool|
      {
        lat: devschool.latitude,
        lng: devschool.longitude,
        info_window: render_to_string(partial: "info_window", locals: { devschool: devschool })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end
end
