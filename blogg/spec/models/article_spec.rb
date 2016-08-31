require 'rails_helper'
RSpec.describe 'Articles', type: :model  do
  describe 'Article' do
    it'should have title' do
      @article =Article.create(:title => "sathish" )
      expect(@article.title.length).to be >=5
    end
    it'should have text' do
      @article=Article.create(:text => "sa")
      expect(@article.text.length).to be >=1
    end
    it 'should have many comments' do
      @article=Article.create(:title => "sathish", :text => "fjf")
      @comment1=Comment.create(:commenter => "sat", :body => "f", article_id:@article.id)
      @comment2=Comment.create(:commenter => "kum", :body => "poo", article_id:@article.id)

    end

  end
end