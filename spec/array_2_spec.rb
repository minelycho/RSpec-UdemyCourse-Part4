RSpec.describe Array do
	subject(:sally) do 
		[1,2]
	end

	it "checks the length of the array" do 
		expect(subject.length).to eq(2)
		subject.pop
		expect(subject.length).to eq(1)
	end

	it "checks that sally is equal to the original array" do
		expect(sally).to eq([1,2])
	end	
end