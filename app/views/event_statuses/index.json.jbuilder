# frozen_string_literal: true

json.array! @event_statuses, partial: "event_statuses/event_status", as: :event_status
