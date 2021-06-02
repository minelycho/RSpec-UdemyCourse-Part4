class Actor
	def initialize(name)
		@name =name
	end	

	def ready?
		sleep(3)
		true
	end

	def act
		"I love you, baby"
	end

	def fall_off_ladder
		"Call my agent! No way!"
	end

	def light_on_fire
		false
	end
end

class Movie
	attr_reader :actor

	def initialize(actor)
		@actor = actor
	end

 	def start_shooting
 		if actor.ready?
 			actor.act
 			actor.fall_off_ladder
 			actor.light_on_fire
 		end
 	end
end

=begin
actor = Actor.new('Brad Pitt')
movie = Movie.new(actor)
movie.start_shooting 

=end

RSpec.describe Movie do 
	let(:stunman) { double("Mr. Danger", ready?: true, act: 'Any string at all',
		fall_off_ladder: "agent phone", light_on_fire: false)}
		subject { described_class.new(stunman)}

	describe '#start_shooting method' do 
		it 'expects an actor to do 3 actions' do 
			expect(stunman).to receive(:ready?)
			expect(stunman).to receive(:act)
			expect(stunman).to receive(:fall_off_ladder)
			expect(stunman).to receive(:light_on_fire)
			subject.start_shooting
		end
	end
end