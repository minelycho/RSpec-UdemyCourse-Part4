RSpec.describe Array do

	it 'checks the initial length of subject' do 
		puts subject
		puts subject.class
		expect(subject.length).to eq(0)
		subject.push("element1")
		expect(subject.length).to eq(1)
	end
end