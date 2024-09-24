# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Places.V1.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Places.V1.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      "https://www.googleapis.com/auth/cloud-platform",

      # Private Service: https://www.googleapis.com/auth/maps-platform.places
      "https://www.googleapis.com/auth/maps-platform.places",

      # Private Service: https://www.googleapis.com/auth/maps-platform.places.autocomplete
      "https://www.googleapis.com/auth/maps-platform.places.autocomplete",

      # Private Service: https://www.googleapis.com/auth/maps-platform.places.details
      "https://www.googleapis.com/auth/maps-platform.places.details",

      # Private Service: https://www.googleapis.com/auth/maps-platform.places.getphotomedia
      "https://www.googleapis.com/auth/maps-platform.places.getphotomedia",

      # Private Service: https://www.googleapis.com/auth/maps-platform.places.nearbysearch
      "https://www.googleapis.com/auth/maps-platform.places.nearbysearch",

      # Private Service: https://www.googleapis.com/auth/maps-platform.places.textsearch
      "https://www.googleapis.com/auth/maps-platform.places.textsearch"
    ],
    otp_app: :google_api_places,
    base_url: "https://places.googleapis.com/"
end
