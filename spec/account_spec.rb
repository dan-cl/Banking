require 'account'

describe Account do

  describe "#new" do
    # let (:time_now) {DateTime.now}
    # let (:deposit) {2000}
    subject(:account) {described_class.new}

    it "creates an Account object" do
      # allow(:gets).to receive(:chomp)

      expect(STDOUT).to receive(:puts).with("How much would you like to deposit?")
      expect(STDIN).to receive(:gets).and_return("2000")
      expect(subject).to be_an_instance_of Account
    end

    xit "populates the statement array with the opening entry" do
      allow(DateTime).to receive(:now).and_return(time_now)
      expect(subject.statement).to eq [[time_now, deposit, 0, deposit]]
    end

    xit "creates a balance of zero" do
      expect(subject.balance).to eq 2000
    end


  end
  # it {is_expected.to respond_to(:landed)}
  #
  # describe 'landed' do
  #   subject(:plane) { described_class.new}
  #   let(:airport) { double :airport }
  #
  #   it 'can confirm that it is in the air before landing' do
  #     expect(subject.landed).to eq false
  #   end
  #
  #   it 'can confirm that it has landed' do
  #     allow(airport).to receive(:land).and_return plane.landed = true
  #     airport.land(plane)
  #     expect(subject.landed).to eq true
  #   end
  #
  #   it 'can confirm it is in the air after taking off' do
  #     allow(airport).to receive(:takeoff).and_return plane.landed = false
  #     expect(subject.landed).to eq false
  #   end
  #
  # end
end
