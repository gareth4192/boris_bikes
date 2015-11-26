require 'bike'

describe Bike do

it {is_expected.to respond_to :working?}

it 'can be reported broken' do
  subject.report
  expect(subject.working).to eq false
end

end

#it "should respond to method working?" do
#expect(subject).to respond_to :working?
