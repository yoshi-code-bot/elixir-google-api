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

defmodule GoogleApi.DisplayVideo.V3.Model.FirstAndThirdPartyAudienceTargetingSetting do
  @moduledoc """
  Details of first and third party audience targeting setting.

  ## Attributes

  *   `firstAndThirdPartyAudienceId` (*type:* `String.t`, *default:* `nil`) - Required. First and third party audience id of the first and third party audience targeting setting. This id is first_and_third_party_audience_id.
  *   `recency` (*type:* `String.t`, *default:* `nil`) - Optional. The recency of the first and third party audience targeting setting. Only applicable to first party audiences, otherwise will be ignored. For more info, refer to https://support.google.com/displayvideo/answer/2949947#recency When unspecified, no recency limit will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :firstAndThirdPartyAudienceId => String.t() | nil,
          :recency => String.t() | nil
        }

  field(:firstAndThirdPartyAudienceId)
  field(:recency)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V3.Model.FirstAndThirdPartyAudienceTargetingSetting do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.FirstAndThirdPartyAudienceTargetingSetting.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V3.Model.FirstAndThirdPartyAudienceTargetingSetting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
