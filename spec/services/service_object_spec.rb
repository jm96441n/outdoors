require 'rails_helper'

RSpec.describe ServiceObject, type: :service do
  let(:model) { double('TestModel') }
  let(:subject) { ServiceObject.new }

  it 'instantiates a new Result object' do
    allow(model).to receive_message_chain(:errors, :full_messages).and_return([])

    expect(subject.get_result(model)).to be_a Result
  end
end
