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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Review do
  @moduledoc """
  Information about a review of a place.

  ## Attributes

  *   `authorAttribution` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AuthorAttribution.t`, *default:* `nil`) - This review's author.
  *   `flagContentUri` (*type:* `String.t`, *default:* `nil`) - A link where users can flag a problem with the review.
  *   `googleMapsUri` (*type:* `String.t`, *default:* `nil`) - A link to show the review on Google Maps.
  *   `name` (*type:* `String.t`, *default:* `nil`) - A reference representing this place review which may be used to look up this place review again (also called the API "resource" name: `places/{place_id}/reviews/{review}`).
  *   `originalText` (*type:* `GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t`, *default:* `nil`) - The review text in its original language.
  *   `publishTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp for the review.
  *   `rating` (*type:* `float()`, *default:* `nil`) - A number between 1.0 and 5.0, also called the number of stars.
  *   `relativePublishTimeDescription` (*type:* `String.t`, *default:* `nil`) - A string of formatted recent time, expressing the review time relative to the current time in a form appropriate for the language and country.
  *   `text` (*type:* `GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t`, *default:* `nil`) - The localized text of the review.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorAttribution =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AuthorAttribution.t() | nil,
          :flagContentUri => String.t() | nil,
          :googleMapsUri => String.t() | nil,
          :name => String.t() | nil,
          :originalText => GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t() | nil,
          :publishTime => DateTime.t() | nil,
          :rating => float() | nil,
          :relativePublishTimeDescription => String.t() | nil,
          :text => GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t() | nil
        }

  field(:authorAttribution, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AuthorAttribution)
  field(:flagContentUri)
  field(:googleMapsUri)
  field(:name)
  field(:originalText, as: GoogleApi.Places.V1.Model.GoogleTypeLocalizedText)
  field(:publishTime, as: DateTime)
  field(:rating)
  field(:relativePublishTimeDescription)
  field(:text, as: GoogleApi.Places.V1.Model.GoogleTypeLocalizedText)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Review do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Review.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Review do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
