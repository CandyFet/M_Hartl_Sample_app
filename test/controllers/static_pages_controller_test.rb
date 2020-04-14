# frozen_string_literal: true

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end

  test 'should get root' do
    get root_path
    assert_response :success
  end

  test 'should get help' do
    get help_path
    assert_response :success
  end

  test 'should get about' do
    get about_path
    assert_response :success
  end

  test 'should get contact' do
    get contact_path
    assert_response :success
  end

  test 'layouts content' do
    get root_path
    assert_select 'title', full_title('Home')
    get contact_path
    assert_select 'title', full_title('Contact')
    get about_path
    assert_select 'title', full_title('About')
    get help_path
    assert_select 'title', full_title('Help')
    get signup_path
    assert_select 'title', full_title('Sign up')
  end
end
