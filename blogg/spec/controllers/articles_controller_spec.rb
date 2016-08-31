require 'rails_helper'

RSpec.describe 'Articlescontroller', type: :controller  do
describe 'index' do
  it 'shows all the articles as @articles' do
    article =Article.create(:title => "sathish", :text => "nfihffe" )
    #get :index, params: {:title => "sathish", :text => "nfihffe"}
    expect(assigns(:articles)).to  eq([article])

  end
  #it 'expect the index template'
  #expect(response).to render_template("index")
 # end


end
end