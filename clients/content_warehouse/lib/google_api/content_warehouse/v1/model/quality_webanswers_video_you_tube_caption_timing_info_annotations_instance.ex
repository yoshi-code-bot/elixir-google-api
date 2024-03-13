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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityWebanswersVideoYouTubeCaptionTimingInfoAnnotationsInstance do
  @moduledoc """
  Byte-offset and timing information in videos. In CompositeDoc, we will store the instance per sentence.

  ## Attributes

  *   `begin` (*type:* `integer()`, *default:* `nil`) - Byte offsets in HTML. begin is inclusive and end is exclusive.
  *   `end` (*type:* `integer()`, *default:* `nil`) - 
  *   `videoBeginMs` (*type:* `integer()`, *default:* `nil`) - 
  *   `videoEndMs` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :begin => integer() | nil,
          :end => integer() | nil,
          :videoBeginMs => integer() | nil,
          :videoEndMs => integer() | nil
        }

  field(:begin)
  field(:end)
  field(:videoBeginMs)
  field(:videoEndMs)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.QualityWebanswersVideoYouTubeCaptionTimingInfoAnnotationsInstance do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityWebanswersVideoYouTubeCaptionTimingInfoAnnotationsInstance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.QualityWebanswersVideoYouTubeCaptionTimingInfoAnnotationsInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
