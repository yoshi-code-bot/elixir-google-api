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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchTextMatchInfo do
  @moduledoc """


  ## Attributes

  *   `durationToPredictedTimeMs` (*type:* `String.t`, *default:* `nil`) - The time gap of the matched_time_ms from the predicted timestamp of when this anchor should appear in the video.
  *   `matchScore` (*type:* `number()`, *default:* `nil`) - The float similarty score from the anchor label to matched_asr_text.
  *   `matchedAsrStartPos` (*type:* `integer()`, *default:* `nil`) - The start token offset from the beginning of ASR where matched_asr_text starts.
  *   `matchedAsrText` (*type:* `String.t`, *default:* `nil`) - The ASR text that was a candidate match for the list anchor.
  *   `matchedAsrTimeMs` (*type:* `String.t`, *default:* `nil`) - The timestamp of the matched ASR in the video in milliseconds.
  *   `matchedAsrTimeRatio` (*type:* `number()`, *default:* `nil`) - The ratio of the matched_asr_time_ms over the total duration of the video.
  *   `matchedAsrTokenCount` (*type:* `integer()`, *default:* `nil`) - The number of tokens in matched_asr_text
  *   `matchedDescriptionItemIndexRatio` (*type:* `number()`, *default:* `nil`) - The ratio of the video description item index this match corresponds to over the total number of list description items for the video.
  *   `matchedDescriptionText` (*type:* `String.t`, *default:* `nil`) - The video description text matched with the ASR that's used as the anchor label.
  *   `matchedDescriptionTokenCount` (*type:* `integer()`, *default:* `nil`) - The number of tokens in matched_description_text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :durationToPredictedTimeMs => String.t() | nil,
          :matchScore => number() | nil,
          :matchedAsrStartPos => integer() | nil,
          :matchedAsrText => String.t() | nil,
          :matchedAsrTimeMs => String.t() | nil,
          :matchedAsrTimeRatio => number() | nil,
          :matchedAsrTokenCount => integer() | nil,
          :matchedDescriptionItemIndexRatio => number() | nil,
          :matchedDescriptionText => String.t() | nil,
          :matchedDescriptionTokenCount => integer() | nil
        }

  field(:durationToPredictedTimeMs)
  field(:matchScore)
  field(:matchedAsrStartPos)
  field(:matchedAsrText)
  field(:matchedAsrTimeMs)
  field(:matchedAsrTimeRatio)
  field(:matchedAsrTokenCount)
  field(:matchedDescriptionItemIndexRatio)
  field(:matchedDescriptionText)
  field(:matchedDescriptionTokenCount)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchTextMatchInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchTextMatchInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchTextMatchInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
