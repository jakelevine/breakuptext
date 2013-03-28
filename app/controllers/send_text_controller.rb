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
		fromname = params[:from_name]
		

		boyfriend_serious_notinterested = "Hi "+person+", I know you expected to make it to our next anniversary. Maybe beyond, who knows? There was that one night we named our maybe-babies. That was cute. You're cute. But it's over between us. We've drifted apart. It's not just your impotency, it really isn't. And no, this isn't about that guy at work. It's us. Ever hear the song Cape Canaveral by Conor Oberst? Of course you haven't, that was one of our issues. Anyways, we're like that. A poltergeist love. And I need an exorcism. -"+fromname+" (sent via http://breakuptext.me)"
		boyfriend_serious_foundsomeoneelse = person+", you were right all along. I never could lie to you, you see everything. I've had a crush on that girl from work for a long time. Remember all those questions you asked me about those tweets he and I sent to each other about the Game of Thrones premiere and the time he texted me that he wouldn't be in the 9am meeting because of a dentist appointment? Just like you suspected, they were coded messages of our love. I'm sorry I didn't tell you sooner, truthfully I wanted to wait until after the fifth anniversary of your hamster's passing. I know how much Rascal meant to you. Much love, hopefully you see this is for the best. -"+fromname+" (sent via http://breakuptext.me)"
		boyfriend_serious_eatenbybear = "My dear "+person+", I know you've been wondering where I've been. I don't know how to tell you this, but you know how Sara always acts like an idiot when wasted? Well, on our camping trip we saw a bear and she antagonized it. I know you hate when Sara acts like that. Well, I do as well. Because that bear unhinged his jaw and shoved me into his stomach. So yeah, I'm stuck in a bear. Somewhere upstate, it doesn't feel like this guy moves a lot, I'd ask you to come find me and cut me out but maybe this is for the best, you know? We were fighting all the time, I hated my job, my parents are still upset I didn't become a lawyer...as I sit in this dark acid hole, I can't think of enough reasons to punch my way out. So remember me fondly, make it sound like I died a hero. Love you. -"+fromname+" (sent via http://breakuptext.me)"
	
		boyfriend_okcupid_notinterested = person+" - I knew I'd like you from the moment I read your profile. Likes 'any kind of music but country'? A passion for 'living life to the fullest'? My kind of man. But then we met in person. You used an old photo for your profile, didn't you? I don't mean to be rude, you're just a touch larger than the photo. It's my fault, I should never trust bathroom selfies. Conversation went about as well as it would on a first date. But the stuff about your roommate's cat? Kinda weird. And I know you bluffed when you tried to claim you got into Yale but decided to go to University of Wisconsin instead. What I'm trying to say is it's probably best if we don't continue. -"+fromname+" (sent via http://breakuptext.me)"
		boyfriend_okcupid_foundsomeoneelse = person+", there's plenty of fish in the sea, huh?  I know it's a cliche but there's truth in it. You never know who is coming up around the bend. See, after the last time we met up, I ran into my college professor. She was my favorite, just the smartest woman you've ever heard talk about the history of the French revolution. Anyways, it turns out she recently divorced, her husband left her for a library sciences professor. Long story short, we're in love. I know it seems sudden but life is sudden like that, you know? Anyways, best of luck finding your fish. "+fromname+" (sent via http://breakuptext.me)"
		boyfriend_okcupid_eatenbybear = person+", the time we spent together was awesome. You're funny and pretty and you deserve a great guy. Unfortunately, I cant be that guy for you. Remember when you asked what I was doing this weekend and I acted kinda weird? It's because I was going hunting with some of my friends and I didn't know how you felt about hunting, you seem like the kind of sweet girl who loves animals. Anyways, I don't know how I feel about hunting anymore either. I kinda got myself in a bad situation while out camping. I guess you could say I'm in the belly of the beast. The bear to be exact. I got eaten by a bear. It's not too bad, just dark. Pretty quiet. Oh and my cell phone battery is going to die soon so don't text back. Good luck with life! -"+fromname+" (sent via http://breakuptext.me)"
	
		girlfriend_serious_notinterested = "Hi "+person+", I know you expected to make it to our next anniversary. Maybe beyond, who knows? There was that one night we named our maybe-babies. That was cute. You're cute. But it's over between us. We've drifted apart. It's not just your lack of sex drive, it really isn't. And no, this isn't about that girl at work. It's us. Ever hear the song Cape Canaveral by Conor Oberst? Of course you haven't, that was one of our issues. Anyways, we're like that. A poltergeist love. And I need an exorcism. -"+fromname+" (sent via http://breakuptext.me)"
		girlfriend_serious_foundsomeoneelse = person+", you were right all along. I never could lie to you, you see everything. I've had a crush on that guy from work for a long time. Remember all those questions you asked me about those tweets he and I sent to each other about the Game of Thrones premiere and the time he texted me that he wouldn't be in the 9am meeting because of a dentist appointment? Just like you suspected, they were coded messages of our love. I'm sorry I didn't tell you sooner, truthfully I wanted to wait until after the fifth anniversary of your hamster's passing. I know how much Rascal meant to you. Much love, hopefully you see this is for the best. -"+fromname+" (sent via http://breakuptext.me)"
		girlfriend_serious_eatenbybear = "My dear "+person+", I know you've been wondering where I've been. I don't know how to tell you this, but you know how Jimmy always acts like an idiot when wasted? Well, on our camping trip we saw a bear and he antagonized it. I know you hate when Jimmy acts like that. Well, I do as well. Because that bear unhinged his jaw and shoved me into his stomach. So yeah, I'm stuck in a bear. Somewhere upstate, it doesn't feel like this guy moves a lot, I'd ask you to come find me and cut me out but maybe this is for the best, you know? We were fighting all the time, I hated my job, my parents are still upset I didn't become a lawyer...as I sit in this dark acid hole, I can't think of enough reasons to punch my way out. So remember me fondly, make it sound like I died a hero. Love you. -"+fromname+" (sent via http://breakuptext.me)"
	
		girlfriend_okcupid_notinterested = person+" - I knew I'd like you from the moment I read your profile. Likes 'any kind of music but country'? A passion for 'living life to the fullest'? My kind of woman. But then we met in person. You used an old photo for your profile, didn't you? I don't mean to be rude, you're just a touch larger than the photo. It's my fault, I should never trust bathroom selfies. Conversation went about as well as it would on a first date. But the stuff about your roommate's cat? Kinda weird. And I know you bluffed when you tried to claim you got into Yale but decided to go to University of Wisconsin instead. What I'm trying to say is it's probably best if we don't continue. -"+fromname+" (sent via http://breakuptext.me)"
		girlfriend_okcupid_foundsomeoneelse = person+", there's plenty of fish in the sea, huh?  I know it's a cliche but there's truth in it. You never know who is coming up around the bend. See, after the last time we met up, I ran into my college professor. She was my favorite, just the smartest woman you've ever heard talk about the history of the French revolution. Anyways, it turns out she recently divorced, her husband left her for a library sciences professor. Long story short, we're in love. I know it seems sudden but life is sudden like that, you know? Anyways, best of luck finding your fish. -"+fromname+" (sent via http://breakuptext.me)"
		girlfriend_okcupid_eatenbybear = person+", the time we spent together was awesome. You're funny and pretty and you deserve a great guy. Unfortunately, I cant be that guy for you. Remember when you asked what I was doing this weekend and I acted kinda weird? It's because I was going hunting with some of my friends and I didn't know how you felt about hunting, you seem like the kind of sweet girl who loves animals. Anyways, I don't know how I feel about hunting anymore either. I kinda got myself in a bad situation while out camping. I guess you could say I'm in the belly of the beast. The bear to be exact. I got eaten by a bear. It's not too bad, just dark. Pretty quiet. Oh and my cell phone battery is going to die soon so don't text back. Good luck with life! -"+fromname+" (sent via http://breakuptext.me)"


		text_array = 
			[
				[
					[
						boyfriend_serious_notinterested,
						boyfriend_serious_foundsomeoneelse,
						boyfriend_serious_eatenbybear,					
					],
					[
						boyfriend_okcupid_notinterested,
						boyfriend_okcupid_foundsomeoneelse,
						boyfriend_okcupid_eatenbybear,
					],
				],
				[

					[
						girlfriend_serious_notinterested,
						girlfriend_serious_foundsomeoneelse,
						girlfriend_serious_eatenbybear,
					
					],
					[
						girlfriend_okcupid_notinterested,
						girlfriend_okcupid_foundsomeoneelse,
						girlfriend_okcupid_eatenbybear,
					],
				],
			]



		final_array = text_array[0][0][0]
		send_array = final_array.scan(/.{1,160}/)


	#	@client = Twilio::REST::Client.new twilio_sid, twilio_token

		
		#render :json => text_array[0][0][0]

	#	send_array.each do |text|
	#		@client.account.sms.messages.create(
	#		:from => '+15082732622',
	#		:to => number_to_send_to,
	#		:body => text
	#		)
	#		sleep(1)
		#end

	end

end
