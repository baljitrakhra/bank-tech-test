require 'transaction'

describe Transaction do
  context '#time' do
    it ' shows time of the transaction' do
      expect(subject.display).to eq "#{Time.new.strftime("%d/%m/%Y")} || || || "
    end
  end
end