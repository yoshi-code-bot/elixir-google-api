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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingVideosAsrTranscriptRepairAnnotation do
  @moduledoc """
  This proto captures the output of analyses that ran on Automatic Speech Recogntion produced by the recognizer.

  ## Attributes

  *   `gibberishResult` (*type:* `String.t`, *default:* `nil`) - 
  *   `numGibberishSegments` (*type:* `integer()`, *default:* `nil`) - The number of the above segments that were classified as gibberish.
  *   `numSegmentsClassified` (*type:* `integer()`, *default:* `nil`) - The number of ASR segments that were sent for classification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gibberishResult => String.t() | nil,
          :numGibberishSegments => integer() | nil,
          :numSegmentsClassified => integer() | nil
        }

  field(:gibberishResult)
  field(:numGibberishSegments)
  field(:numSegmentsClassified)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingVideosAsrTranscriptRepairAnnotation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingVideosAsrTranscriptRepairAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingVideosAsrTranscriptRepairAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
