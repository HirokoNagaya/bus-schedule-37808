require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe 'チャットルーム作成' do
    context '新規作成できる場合' do
      it 'nameの値が存在すれば作成できる' do
        expect(@post).to be_valid
      end
    end
    context '新規作成できない場合' do
      it 'nameが空では作成できない' do
        @post.name = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Name can't be blank")
      end
    end
  end
end
