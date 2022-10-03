require 'rails_helper'

RSpec.describe Destination, type: :model do
  before do
    @destination = FactoryBot.build(:destination)
  end

  describe '運行先の記録' do
    context '運行先の記録ができる場合' do
      it "user, month, long_distance, middle_distance, short_distance の値が存在すれば作成できる" do
        expect(@destination).to be_valid
      end
    end
    context '運行先の記録ができない場合' do
      it 'userが空では作成できない' do
        @destination.user = ''
        @destination.valid?
        expect(@destination.errors.full_messages).to include("User can't be blank")
      end

      it 'monthが空では作成できない' do
        @destination.month = ''
        @destination.valid?
        expect(@destination.errors.full_messages).to include("Month can't be blank")
      end
    end
  end

end
