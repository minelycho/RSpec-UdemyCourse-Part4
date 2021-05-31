RSpec.describe 'raise_error mathcer' do 

	def some_method
		x
	end

	class CustomError < StandardError; end

	it 'can chek for a specific error being raised' do 
		expect { some_method }.to raise_error(NameError)
		expect { 10 / 0 }.to raise_error(ZeroDivisionError)
		#will not pass
		#expect { 10 / 0 }.to raise_error(NameError)
	end

	it 'can check for a user-created error' do 
		expect { raise CustomError}.to raise_error(CustomError)
	end

end