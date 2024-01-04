# frozen_string_literal: true

json.array! @artist_statuses, partial: "artist_statuses/artist_status", as: :artist_status
