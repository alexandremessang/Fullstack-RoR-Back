module Overrides
    class TokenValidationsController < DeviseTokenAuth::TokenValidationController
        def validate_token
            if @resource
                render json: {
                    success: true
                }, status: 200
            else 
                render json: {
                    success: false,
                    error: ['token not valid']
                }, status: 401
            end
        end
    end
end