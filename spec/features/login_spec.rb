require 'spec_helper'

describe 'ユーザがログインする' do
  context 'トップページでtwitterにログインをクリック' do
    context 'かつログインに成功したとき' do
      before do
        visit root_path
        click_link 'Twitterでログイン'
      end

      it 'トップページに遷移している' do
        expect(page.current_path).to eq root_path
      end

      it 'ログインしましたと表示されること' do
        expect(page).to have_content 'ログインしました'
      end

    end

  end

end
