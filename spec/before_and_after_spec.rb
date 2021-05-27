RSpec.describe 'before and after hooks' do 
	#for all in the test
	before(:context) do 
		puts 'Before context'
	end

	after(:context) do 
		puts 'Before context'
	end

	#for each test
	before(:example) do
		puts 'Before example'
	end

	after(:example) do
		puts 'Afer example'
	end

	it 'it jus a random example'do
		expect(5 * 4).to eq(20)
	end

		it 'it jus another random example'do
		expect(3 - 2).to eq(1)
	end
end