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

defmodule GoogleApi.DisplayVideo.V3.Model.ContentOutstreamPositionAssignedTargetingOptionDetails do
  @moduledoc """
  Assigned content outstream position targeting option details. This will be populated in the content_outstream_position_details field when targeting_type is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.

  ## Attributes

  *   `adType` (*type:* `String.t`, *default:* `nil`) - Output only. The ad type to target. Only applicable to insertion order targeting and new line items supporting the specified ad type will inherit this targeting option by default. Possible values are: * `AD_TYPE_DISPLAY`, the setting will be inherited by new line item when line_item_type is `LINE_ITEM_TYPE_DISPLAY_DEFAULT`. * `AD_TYPE_VIDEO`, the setting will be inherited by new line item when line_item_type is `LINE_ITEM_TYPE_VIDEO_DEFAULT`.
  *   `contentOutstreamPosition` (*type:* `String.t`, *default:* `nil`) - Required. The content outstream position.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adType => String.t() | nil,
          :contentOutstreamPosition => String.t() | nil
        }

  field(:adType)
  field(:contentOutstreamPosition)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V3.Model.ContentOutstreamPositionAssignedTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.ContentOutstreamPositionAssignedTargetingOptionDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V3.Model.ContentOutstreamPositionAssignedTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end