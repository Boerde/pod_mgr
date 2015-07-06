require 'test_helper'

class FeedSettingsControllerTest < ActionController::TestCase
  setup do
    @feed_setting = feed_settings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feed_settings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feed_setting" do
    assert_difference('FeedSetting.count') do
      post :create, feed_setting: { author: @feed_setting.author, category: @feed_setting.category, copyright: @feed_setting.copyright, description: @feed_setting.description, image: @feed_setting.image, keywords: @feed_setting.keywords, language: @feed_setting.language, link: @feed_setting.link, owner_mail: @feed_setting.owner_mail, owner_name: @feed_setting.owner_name, subtitle: @feed_setting.subtitle, summary: @feed_setting.summary, title: @feed_setting.title }
    end

    assert_redirected_to feed_setting_path(assigns(:feed_setting))
  end

  test "should show feed_setting" do
    get :show, id: @feed_setting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feed_setting
    assert_response :success
  end

  test "should update feed_setting" do
    patch :update, id: @feed_setting, feed_setting: { author: @feed_setting.author, category: @feed_setting.category, copyright: @feed_setting.copyright, description: @feed_setting.description, image: @feed_setting.image, keywords: @feed_setting.keywords, language: @feed_setting.language, link: @feed_setting.link, owner_mail: @feed_setting.owner_mail, owner_name: @feed_setting.owner_name, subtitle: @feed_setting.subtitle, summary: @feed_setting.summary, title: @feed_setting.title }
    assert_redirected_to feed_setting_path(assigns(:feed_setting))
  end

  test "should destroy feed_setting" do
    assert_difference('FeedSetting.count', -1) do
      delete :destroy, id: @feed_setting
    end

    assert_redirected_to feed_settings_path
  end
end
