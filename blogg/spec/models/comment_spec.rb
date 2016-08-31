require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Comment' do
    it 'belongs to article' do

         @article = Article.create(:title => "qwerty" , :text => "sarhou")
         @comment= Comment.create( :commenter => "ewfrw", :body => "ewrf" , :article_id => @article.id )
         expect(@comment.article_id).to eq(@article.id)

     end
  end
end