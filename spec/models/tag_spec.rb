require 'rails_helper'

RSpec.describe Tag do
  describe 'tag' do
    it 'should be initialized with name' do
      tag = Tag.new('vegan')

      expect(tag.name).to eq('vegan')
    end
  end
end
