class ApplicationController < ActionController::API
    include DeviseTokenAuth::Concerns::SetUserByToken

    def render_success(message, data, status)
      render json: { messge: message, data: data }, status: status
    end

    def render_error(error, status)
      render json: {errors: error }, status: status
    end
end
