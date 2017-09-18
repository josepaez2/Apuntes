Testing

1)	When a test is especially short or simple compared to the application
 		code it tests, lean toward writing the test first.
2)	When the desired behavior isn’t yet crystal clear, lean toward writing
 		the application code first, then write a test to codify the result.
3)	Because security is a top priority, err on the side of writing tests
 		of the security model first.
4)	Whenever a bug is found, write a test to reproduce it and protect against
 		regressions, then write the application code to fix it.
5)	Lean against writing tests for code (such as detailed HTML structure)
 		likely to change in the future.
6)	Write tests before refactoring code, focusing on testing error-prone
 		code that’s especially likely to break.

 		
In practice, the guidelines above mean that we’ll usually write controller
and model tests first and integration tests (which test functionality across
models, views, and controllers) second.

Unit test / Model test   50%
	métodos dentro del modelo 
Functional test / controller test 40%
Integration test / system test 10%

Testers:
minitest
rspec
DSL
Domain Specific Language

require 'test_helper'

class MicropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micropost = microposts(:one)
  end

  test "should get index" do
    get microposts_url
    assert_response :success
  end

  test "should get new" do
    get new_micropost_url
    assert_response :success
  end

  test "should create micropost" do
    assert_difference('Micropost.count') do
      post microposts_url, params: { micropost: { content: @micropost.content, user_id: @micropost.user_id } }
    end

    assert_redirected_to micropost_url(Micropost.last)
  end

  test "should show micropost" do
    get micropost_url(@micropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_micropost_url(@micropost)
    assert_response :success
  end

  test "should update micropost" do
    patch micropost_url(@micropost), params: { micropost: { content: @micropost.content, user_id: @micropost.user_id } }
    assert_redirected_to micropost_url(@micropost)
  end

  test "should destroy micropost" do
    assert_difference('Micropost.count', -1) do
      delete micropost_url(@micropost)
    end

    assert_redirected_to microposts_url
  end
end

  test 'should not save article without title' do
    article = Article.new
    assert_not article.save
  end

#fixtures

  # Ejemplos de asserts disponibles(todo esto viene de minitest)
  # assert
  # assert_not
  # assert_equal
  # assert_not_equal
  # assert_same
  # assert_not_same
  # assert_nil
  # assert_match
  # assert_includes

  # Estos vienen de rails
  # assert_difference
  # assert_no_difference
  # assert_nothing_raised
  # ..otros

  # assert_select

rails test
rails test/models/article_test.rb

Fails
No hay errores PERO el resultado no es el esperado

Errors
Se totea y no corre se debe resolver para que corra


  # Se llama siempre antes de una prueba
  setup do
    @article = articles(:one)
  end

  # Se llama siempre al final de una prueba
  teardown do
   # when controller is using cache it may be a good idea to reset it afterwards
   Rails.cache.clear
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: {
       article: {
          body: @article.body,
         title: @article.title
        } 
      }
    end

    assert_equal 'Article was successfully created.', flash[:notice]
    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { body: 'body nuevo', title: 'nuevo' } }

    update_article = Article.find(@article.id)
    assert_not_equal update_article.title, @article.title
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end



-------------------------------------------------------------------
----------------------------     GUARD    -------------------------
-------------------------------------------------------------------
test_helper.rb

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

$ bundle exec guard init

 A custom Guardfile.
# Defines the matching rules for Guard.
guard :minitest, spring: "bin/rails test", all_on_start: false do
  watch(%r{^test/(.*)/?(.*)_test\.rb$})
  watch('test/test_helper.rb') { 'test' }
  watch('config/routes.rb')    { integration_tests }
  watch(%r{^app/models/(.*?)\.rb$}) do |matches|
    "test/models/#{matches[1]}_test.rb"
  end
  watch(%r{^app/controllers/(.*?)_controller\.rb$}) do |matches|
    resource_tests(matches[1])
  end
  watch(%r{^app/views/([^/]*?)/.*\.html\.erb$}) do |matches|
    ["test/controllers/#{matches[1]}_controller_test.rb"] +
    integration_tests(matches[1])
  end
  watch(%r{^app/helpers/(.*?)_helper\.rb$}) do |matches|
    integration_tests(matches[1])
  end
  watch('app/views/layouts/application.html.erb') do
    'test/integration/site_layout_test.rb'
  end
  watch('app/helpers/sessions_helper.rb') do
    integration_tests << 'test/helpers/sessions_helper_test.rb'
  end
  watch('app/controllers/sessions_controller.rb') do
    ['test/controllers/sessions_controller_test.rb',
     'test/integration/users_login_test.rb']
  end
  watch('app/controllers/account_activations_controller.rb') do
    'test/integration/users_signup_test.rb'
  end
  watch(%r{app/views/users/*}) do
    resource_tests('users') +
    ['test/integration/microposts_interface_test.rb']
  end
end

# Returns the integration tests corresponding to the given resource.
def integration_tests(resource = :all)
  if resource == :all
    Dir["test/integration/*"]
  else
    Dir["test/integration/#{resource}_*.rb"]
  end
end

# Returns the controller tests corresponding to the given resource.
def controller_test(resource)
  "test/controllers/#{resource}_controller_test.rb"
end

# Returns all tests for the given resource.
def resource_tests(resource)
  integration_tests(resource) << controller_test(resource)
end

-------------------------------------------------------------------
----------------------------   INTEGRATION   ----------------------
-------------------------------------------------------------------
rails generate integration_test site_layout

require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
end

rails test:integration
rails test:models

Table 5.2: Some uses of assert_select.
Code                                        # Matching HTML
assert_select "div"                         # <div>foobar</div>
assert_select "div", "foobar"               #<div>foobar</div>
assert_select "div.nav"                     # <div class="nav">foobar</div>
assert_select "div#profile"                 # <div id="profile">foobar</div>
assert_select "div[name=yo]"                # <div name="yo">hey</div>
assert_select "a[href=?]", ’/’, count: 1    # <a href="/">foo</a>
assert_select "a[href=?]", ’/’, text: "foo" # <a href="/">foo</a>



