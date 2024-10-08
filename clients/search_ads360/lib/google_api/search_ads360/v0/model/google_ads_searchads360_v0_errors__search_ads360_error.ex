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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Error do
  @moduledoc """
  Search Ads 360-specific error.

  ## Attributes

  *   `details` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_ErrorDetails.t`, *default:* `nil`) - Additional error details, which are returned by certain error codes. Most error codes do not include details.
  *   `errorCode` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_ErrorCode.t`, *default:* `nil`) - An enum value that indicates which error occurred.
  *   `location` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_ErrorLocation.t`, *default:* `nil`) - Describes the part of the request proto that caused the error.
  *   `message` (*type:* `String.t`, *default:* `nil`) - A human-readable description of the error.
  *   `trigger` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value.t`, *default:* `nil`) - The value that triggered the error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :details =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_ErrorDetails.t() | nil,
          :errorCode =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_ErrorCode.t() | nil,
          :location =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_ErrorLocation.t() | nil,
          :message => String.t() | nil,
          :trigger =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value.t() | nil
        }

  field(:details, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_ErrorDetails)
  field(:errorCode, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_ErrorCode)

  field(:location, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_ErrorLocation)

  field(:message)
  field(:trigger, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_Value)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Error do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Error.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Errors_SearchAds360Error do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
