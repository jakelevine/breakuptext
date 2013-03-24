require 'twilio-ruby'

class SendTextController < ApplicationController

	def index

	end
	def home
		number_to_send_to = params[:number_to_send_to]
		person = params[:person]

		twilio_sid = ENV['TWILIO_SID']
		twilio_token = ENV['TWILIO_TOKEN']


		@client = Twilio::REST::Client.new twilio_sid, twilio_token

		@client.account.sms.messages.create(
		:from => '+15082732622',
		:to => number_to_send_to,
		:body => "Hey "+person+", this is a breakup text. Sorry, it's just not working out! - Jake @ Breakuptext"
		)
	end

end
