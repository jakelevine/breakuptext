require 'twilio-ruby'

class SendTextController < ApplicationController

	def index

	end
	def home
		number_to_send_to = params[:number_to_send_to]
		person = params[:person]

		twilio_sid = "ACc210fffa64dd46a4fbf69ae1d85a1db9"
		twilio_token = "ca78df3d8fdf2928e60dce6d87ded6eb"
		twilio_phone_number = "5082732622"

		@client = Twilio::REST::Client.new twilio_sid, twilio_token

		@client.account.sms.messages.create(
		:from => '+15082732622',
		:to => number_to_send_to,
		:body => "Hey "+person+", this is a breakup text. Sorry, it's just not working out! - Jake @ Breakuptext"
		)
	end

end
