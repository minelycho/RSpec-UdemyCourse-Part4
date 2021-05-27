RSpec.describe 'nested hooks' do 
	#1
	before(:context) do
		puts 'OUTER Before context'
	end

	#2-5-8
	before(:example) do
		puts 'OUTER Before example'
	end

	#3
	it 'does basic math' do 
		expect(1 + 1).to eq(2)
	end

	context 'with condition A' do
		#4
		before(:context) do
			puts 'INNER Before context'
		end
    #6-9
		before(:example) do
			puts 'INNER Before example'
		end
		#7
		it "does some more basic math" do 
			expect(1 + 1).to eq(2)
		end
		#10
		it 'does substraction as well' do 
			expect(5 - 3).to eq(2)
		end
	end
end