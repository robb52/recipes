require 'test_helper'

class ChefsEditTest < ActionDispatch::IntegrationTest
 def setup
    @chef = Chef.create!(chefname: "rob", email: "rob@example.com",
                        password: "password", password_confirmation: "password")
  end

  test "reject an invalid edit" do
    sign_in_as(@chef, "password")
    get edit_chef_path(@chef)
    assert_template 'chefs/edit'
    patch chef_path(@chef), params: { chef: { chefname: " ", email: "rob@example.com " } }
    assert_template 'chefs/edit'
    assert_select 'h2.panel-title'
    assert_select 'div.panel-body'
  end

  test "accept vaild signup" do
    sign_in_as(@chef, "password") 
    get edit_chef_path(@chef)
    assert_template 'chefs/edit'
    patch chef_path(@chef), params: {chef: { chefname: "rob1 ", email: "rob1@example.com " } }
    assert_redirected_to @chef
    assert_not flash.empty?
    @chef.reload
    assert_match "rob1", @chef.chefname
    assert_match "rob1@example.com", @chef.email
  end
end
