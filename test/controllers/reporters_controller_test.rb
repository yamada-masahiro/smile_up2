require "test_helper"

class ReportersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporter = reporters(:one)
  end

  test "should get index" do
    get reporters_url
    assert_response :success
  end

  test "should get new" do
    get new_reporter_url
    assert_response :success
  end

  test "should create reporter" do
    assert_difference("Reporter.count") do
      post reporters_url, params: { reporter: { desirability: @reporter.desirability, furigana: @reporter.furigana, independent: @reporter.independent, medium_id: @reporter.medium_id, name: @reporter.name, portrait_copyright: @reporter.portrait_copyright, portrait_source: @reporter.portrait_source } }
    end

    assert_redirected_to reporter_url(Reporter.last)
  end

  test "should show reporter" do
    get reporter_url(@reporter)
    assert_response :success
  end

  test "should get edit" do
    get edit_reporter_url(@reporter)
    assert_response :success
  end

  test "should update reporter" do
    patch reporter_url(@reporter), params: { reporter: { desirability: @reporter.desirability, furigana: @reporter.furigana, independent: @reporter.independent, medium_id: @reporter.medium_id, name: @reporter.name, portrait_copyright: @reporter.portrait_copyright, portrait_source: @reporter.portrait_source } }
    assert_redirected_to reporter_url(@reporter)
  end

  test "should destroy reporter" do
    assert_difference("Reporter.count", -1) do
      delete reporter_url(@reporter)
    end

    assert_redirected_to reporters_url
  end
end
