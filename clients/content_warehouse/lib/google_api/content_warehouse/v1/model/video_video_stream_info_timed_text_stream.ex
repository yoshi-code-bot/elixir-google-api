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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoTimedTextStream do
  @moduledoc """
  Timed text streams refer to the streams that are separated from audio and video streams. Closed caption streams embedded in video streams (e.g. MPEG-2 - Line 21) do not belong here.

  ## Attributes

  *   `codecId` (*type:* `String.t`, *default:* `nil`) - Codec information.
  *   `metadata` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoClipInfo.t)`, *default:* `nil`) - Metadata for the stream.
  *   `streamCodecTag` (*type:* `String.t`, *default:* `nil`) - 
  *   `streamIndex` (*type:* `String.t`, *default:* `nil`) - Index of the stream in the file. it is 0 based.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :codecId => String.t() | nil,
          :metadata => list(GoogleApi.ContentWarehouse.V1.Model.VideoClipInfo.t()) | nil,
          :streamCodecTag => String.t() | nil,
          :streamIndex => String.t() | nil
        }

  field(:codecId)
  field(:metadata, as: GoogleApi.ContentWarehouse.V1.Model.VideoClipInfo, type: :list)
  field(:streamCodecTag)
  field(:streamIndex)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoTimedTextStream do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoTimedTextStream.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoTimedTextStream do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
