class SocialCallbackController < ApplicationController
  include Rpx
  skip_before_action :verify_authenticity_token, only: :engage, if: :json_request?

  def social
    user_token = params[:token]
    api_caller = RpxHelper.new(Rails.application.secrets.janrain_api_key,
     'https://rpxnow.com', 'realmName')
     @user = api_caller.auth_info(user_token)
  end


  def json_request?
    request.format.json?
  end
end
