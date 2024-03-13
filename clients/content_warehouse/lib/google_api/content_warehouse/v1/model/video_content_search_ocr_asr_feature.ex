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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrAsrFeature do
  @moduledoc """


  ## Attributes

  *   `minCharEditDistance` (*type:* `integer()`, *default:* `nil`) - The minimum char edit distance between the normalized OCR text and candidate word strings taken from a time window around the OCR appearance.
  *   `minCharEditDistanceAsrText` (*type:* `String.t`, *default:* `nil`) - The matched ASR candidate for minimum char edit distance.
  *   `minCharEditDistancePercent` (*type:* `number()`, *default:* `nil`) - The min_char_edit_distance divided by the length of the OCR string.
  *   `ocrTextNormalizedForCharMatch` (*type:* `String.t`, *default:* `nil`) - The normalized OCR text which was used to match the candidate.
  *   `ocrTextNormalizedForCharMatchLength` (*type:* `integer()`, *default:* `nil`) - The length of the normalized OCR text.
  *   `pretriggerScore` (*type:* `number()`, *default:* `nil`) - The score from the pretrigger model.
  *   `wordOverlapAsrText` (*type:* `String.t`, *default:* `nil`) - The ASR text that was used for the word overlap calculation.
  *   `wordOverlapCount` (*type:* `integer()`, *default:* `nil`) - The number of words found both in the OCR text and the ASR in a time window around OCR appearance.
  *   `wordOverlapPercent` (*type:* `number()`, *default:* `nil`) - The word_overlap_count divided by the number of words in the OCR text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :minCharEditDistance => integer() | nil,
          :minCharEditDistanceAsrText => String.t() | nil,
          :minCharEditDistancePercent => number() | nil,
          :ocrTextNormalizedForCharMatch => String.t() | nil,
          :ocrTextNormalizedForCharMatchLength => integer() | nil,
          :pretriggerScore => number() | nil,
          :wordOverlapAsrText => String.t() | nil,
          :wordOverlapCount => integer() | nil,
          :wordOverlapPercent => number() | nil
        }

  field(:minCharEditDistance)
  field(:minCharEditDistanceAsrText)
  field(:minCharEditDistancePercent)
  field(:ocrTextNormalizedForCharMatch)
  field(:ocrTextNormalizedForCharMatchLength)
  field(:pretriggerScore)
  field(:wordOverlapAsrText)
  field(:wordOverlapCount)
  field(:wordOverlapPercent)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrAsrFeature do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrAsrFeature.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrAsrFeature do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
