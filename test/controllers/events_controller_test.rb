require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { city: @event.city, country: @event.country, date: @event.date, desc: @event.desc, distance: @event.distance, event_type: @event.event_type, name: @event.name, number: @event.number, string: @event.string, time: @event.time } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { city: @event.city, country: @event.country, date: @event.date, desc: @event.desc, distance: @event.distance, event_type: @event.event_type, name: @event.name, number: @event.number, string: @event.string, time: @event.time } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
