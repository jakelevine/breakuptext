require 'twilio-ruby'

class SendTextController < ApplicationController

	def index

	end
	def home

		twilio_sid = ENV['TWILIO_SID']
		twilio_token = ENV['TWILIO_TOKEN']


		number_to_send_to = params[:number_to_send_to]
		person = params[:person]
		
		gender = params[:gender]
		importance = params[:importance]
		reason = params[:reason]
		style = params[:style]

		
	

		girlfriend_bear = ", the time we spent together was awesome. You're funny and pretty and you deserve a great guy. Unfortunately, I cant be that guy for you. Remember when you asked what I was doing this weekend and I acted kinda weird? It's because I was going hunting with some of my friends and I didn't know how you felt about hunting, you seem like the kind of sweet girl who loves animals. Anyways, I don't know how I feel about hunting anymore either. I kinda got myself in a bad situation while out camping. I guess you could say I'm in the belly of the beast. The bear to be exact. I got eaten by a bear. It's not too bad, just dark. Pretty quiet. Oh and my cell phone battery is going to die soon so don't text back. Good luck with life!"
		person_girlfriend_bear = person+girlfriend_bear

		send_array = person_girlfriend_bear.scan(/.{1,160}/)


		@client = Twilio::REST::Client.new twilio_sid, twilio_token

		
		#render :json => send_array

		send_array.each do |text|
			@client.account.sms.messages.create(
			:from => '+15082732622',
			:to => number_to_send_to,
			:body => text
			)
			sleep(1)
		end

	end

end
