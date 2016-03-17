class SocialCallbackController < ApplicationController
  include Rpx
  skip_before_action :verify_authenticity_token, only: :engage, if: :json_request?

  def social
  end

  def json_request?
  request.format.json?
end
end
