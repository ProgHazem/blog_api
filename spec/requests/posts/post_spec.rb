require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe '#create' do
    context 'error scenario' do
      it 'Should create and return the post for a user with status error' do
        user1 = create(:complete_user)
        sign_in_as(user1)
        post '/posts', params: set_post, headers: response_headers
        expect(response).to have_http_status(422)
      end
    end
  end

  private

  def set_post
    { post: attributes_for(:post) }
    end
end
