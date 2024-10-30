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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAreaSummary do
  @moduledoc """
  Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details. AI-generated summary of the area that the place is in.

  ## Attributes

  *   `contentBlocks` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContentBlock.t)`, *default:* `nil`) - Content blocks that compose the area summary. Each block has a separate topic about the area.
  *   `flagContentUri` (*type:* `String.t`, *default:* `nil`) - A link where users can flag a problem with the summary.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentBlocks =>
            list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContentBlock.t()) | nil,
          :flagContentUri => String.t() | nil
        }

  field(:contentBlocks, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1ContentBlock, type: :list)
  field(:flagContentUri)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAreaSummary do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAreaSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAreaSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
