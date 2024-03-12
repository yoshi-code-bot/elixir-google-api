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

defmodule GoogleApi.Content.V21.Model.GoogleAnalyticsLink do
  @moduledoc """
  "Google Analytics Link" sources can be used to get conversion data from an existing Google Analytics property into the linked Merchant Center account.

  ## Attributes

  *   `attributionSettings` (*type:* `GoogleApi.Content.V21.Model.AttributionSettings.t`, *default:* `nil`) - Output only. Attribution settings for the linked Google Analytics property.
  *   `propertyId` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. ID of the Google Analytics property the merchant is linked to.
  *   `propertyName` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the Google Analytics property the merchant is linked to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributionSettings => GoogleApi.Content.V21.Model.AttributionSettings.t() | nil,
          :propertyId => String.t() | nil,
          :propertyName => String.t() | nil
        }

  field(:attributionSettings, as: GoogleApi.Content.V21.Model.AttributionSettings)
  field(:propertyId)
  field(:propertyName)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.GoogleAnalyticsLink do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.GoogleAnalyticsLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.GoogleAnalyticsLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end