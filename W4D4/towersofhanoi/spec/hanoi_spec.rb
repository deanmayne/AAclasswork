require_relative "../lib/hanoi.rb"
describe Game do
    subject(:towers) {Game.new}

    describe '#move' do
        it 'it should move a disk from one stack to another.' do
            expect{towers.move([0, 1])}.not_to raise_error 
        end 
    end


    describe "#won?" do
        it "should have two empty arrays in order" do
            towers.move([0, 1])
            towers.move([0, 1])
            towers.move([0, 1])
            expect(towers.won?).to be(true)
        end
    end

    describe "#input" do
    subject(:response) {input}
       it 'should return array of two numbers' do
        expect(response).to be_a(Array)
       end
       it 'should return two integers' do 
        expect(response.length).to eq(2) 
       end

       it 'should return integers' do
        expect{response.all?{|ele| ele.is_a?(Integer)}}.to be(true)
       end
    end

end