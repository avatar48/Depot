module CurrentStore
  extend ActiveSupport::Concern

  private

    def set_store 
    	if session[:count].nil?

    		session[:count] = 0
    	end
    		session[:count] += 1
    end
end