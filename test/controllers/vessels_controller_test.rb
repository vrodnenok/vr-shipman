require 'test_helper'

class VesselsControllerTest < ActionController::TestCase
  setup do
    @vessel = vessels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vessels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vessel" do
    assert_difference('Vessel.count') do
      post :create, vessel: { comment: @vessel.comment, draft: @vessel.draft, dwcc: @vessel.dwcc, dwt: @vessel.dwt, fuel1_ip: @vessel.fuel1_ip, fuel1_uw: @vessel.fuel1_uw, fuel2_ip: @vessel.fuel2_ip, fuel2_uw: @vessel.fuel2_uw, fw_cons: @vessel.fw_cons, grt: @vessel.grt, hire: @vessel.hire, lo1_ip: @vessel.lo1_ip, lo1_uw: @vessel.lo1_uw, lo2_ip: @vessel.lo2_ip, lo2_uw: @vessel.lo2_uw, name: @vessel.name, nav_area: @vessel.nav_area, nrt: @vessel.nrt, office_exp: @vessel.office_exp, other_url: @vessel.other_url, pandi: @vessel.pandi, pic_url: @vessel.pic_url, salary: @vessel.salary, speed_ballast: @vessel.speed_ballast, speed_loaded: @vessel.speed_loaded, type: @vessel.type, volume: @vessel.volume, yob: @vessel.yob }
    end

    assert_redirected_to vessel_path(assigns(:vessel))
  end

  test "should show vessel" do
    get :show, id: @vessel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vessel
    assert_response :success
  end

  test "should update vessel" do
    patch :update, id: @vessel, vessel: { comment: @vessel.comment, draft: @vessel.draft, dwcc: @vessel.dwcc, dwt: @vessel.dwt, fuel1_ip: @vessel.fuel1_ip, fuel1_uw: @vessel.fuel1_uw, fuel2_ip: @vessel.fuel2_ip, fuel2_uw: @vessel.fuel2_uw, fw_cons: @vessel.fw_cons, grt: @vessel.grt, hire: @vessel.hire, lo1_ip: @vessel.lo1_ip, lo1_uw: @vessel.lo1_uw, lo2_ip: @vessel.lo2_ip, lo2_uw: @vessel.lo2_uw, name: @vessel.name, nav_area: @vessel.nav_area, nrt: @vessel.nrt, office_exp: @vessel.office_exp, other_url: @vessel.other_url, pandi: @vessel.pandi, pic_url: @vessel.pic_url, salary: @vessel.salary, speed_ballast: @vessel.speed_ballast, speed_loaded: @vessel.speed_loaded, type: @vessel.type, volume: @vessel.volume, yob: @vessel.yob }
    assert_redirected_to vessel_path(assigns(:vessel))
  end

  test "should destroy vessel" do
    assert_difference('Vessel.count', -1) do
      delete :destroy, id: @vessel
    end

    assert_redirected_to vessels_path
  end
end
