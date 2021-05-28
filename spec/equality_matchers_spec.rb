RSpec.describe 'equality matchers' do 
	let(:a){ 3.0 }
	let(:b){ 3 }

	describe 'eq matcher' do 
		it 'test for value and ignores type' do
			expect(a).to eq(3)
			expect(b).to eq(3.0)
			expect(a).to eq(b)
		end
	end

	describe 'eql matcher' do
		it 'test for value, including same type' do 
			expect(a).not_to eql(3)
			expect(b).not_to eql(3.0)
			expect(a).not_to eql(b)
		end
	end

	describe 'equal and be matcher' do 
		let(:c) { [1, 2, 3] }
		let(:d) { [1, 2, 3] }
		let(:e) { c }

		it 'cares about object identity' do
			#eq values
			expect(c).to eq(d)
			#eql values and types
			expect(c).to eql(d)
			#be an alias of equal
			expect(c).to equal(e)
			expect(c).to be(e)

			expect(c).not_to be(d)
			expect(c).not_to be([1, 2, 3])
		end
	end
end