require 'rails_helper'

RSpec.describe Result do
  let(:model) { double('TestModel') }
  let(:subject) { Result.new(model) }

  context 'no errors on the model' do
    before do
      allow(model).to receive_message_chain(:errors, :full_messages).and_return([])
    end

    it 'returns the model' do
      expect(subject.model).to eql model
    end

    it 'returns true for \'success?\' if action was successful' do
      expect(subject.success?).to be true
    end

    it 'returns an empty array for errors if there are none' do
      expect(subject.errors).to eql []
    end
  end

  context 'errors on the model' do
    before do
      allow(model).to receive_message_chain(:errors, :full_messages).and_return(['errors be present'])
    end

    it 'returns false for \'success?\' if action was unsuccessful' do
      expect(subject.success?).to be false
    end

    it 'returns an empty array for errors if there are none' do
      expect(subject.errors).to eql ['errors be present']
    end
  end
end
