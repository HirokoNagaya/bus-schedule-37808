require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end  
  describe 'メッセージ投稿' do
    context 'メッセージが投稿できる場合' do
      it 'contentが存在していれば保存できる' do
        expect(@message).to be_valid
      end
    end
    context 'メッセージが投稿できない場合' do
      it 'contentが空では保存できない' do
        @message.content = ''
        @message.valid?
        expect(@message.errors.full_messages).to include("Content can't be blank")        
      end
      it 'postが紐付いていないと保存できない' do
        @message.post = nil
        @message.valid?
        expect(@message.errors.full_messages).to include('Post must exist')
      end
      it 'userが紐付いていないと保存できない' do
        @message.user = nil
        @message.valid?
        expect(@message.errors.full_messages).to include('User must exist')
      end
    end
  end
end