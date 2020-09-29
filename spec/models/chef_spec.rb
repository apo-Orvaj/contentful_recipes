require 'rails_helper'

RSpec.describe Chef do
  describe 'chef' do
    it 'should be initialized with name' do
      chef = Chef.new('Chef AJ')

      expect(chef.name).to eq('Chef AJ')
    end
  end
end
