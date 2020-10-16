require "tdd.rb"

describe '#my_uniq' do 
    let(:array) {[1, 2, 1, 3, 3]}
    let(:uniq_array) {my_uniq(array.dup)}
    it 'it should remove duplicates from array' do
        expect(uniq_array).to eq([1, 2, 3])
    end
end

describe '#two_sum' do
    let(:array) {[-1, 0, 2, -2, 1]}
    let(:result) {two_sum(array.dup)} #.dup duplicate array but different id
    context "when multiple pairs, smaller index should come first"
    it "finds all pairs of positions where the elements at those positions sum to zero" do
        expect(result).to eq([[0, 4], [2, 3]])
    end
end

describe '#my_transpose' do
    it 'transposes on matrix' do
        array = [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
                ]
        expect(my_transpose(array)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
end

describe "#stock_picker" do
    let(:array) {[10,5,2,20,4]}
    let(:result) {stock_picker(array.dup)}
    it "output most profitable pair" do
        expect(result).to eq([2,3])
    end
end

