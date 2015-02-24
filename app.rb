require 'sinatra'
require 'holidapi'

class HolidayApp < Sinatra::Base

	get '/' do
		if params['which_country'] != nil
		  @currents = HolidApi.get(country: params['which_country'], year: params['which_year'], month: params['which_month'])
		else
		  @currents = []
		end
		erb :index1
	end

end