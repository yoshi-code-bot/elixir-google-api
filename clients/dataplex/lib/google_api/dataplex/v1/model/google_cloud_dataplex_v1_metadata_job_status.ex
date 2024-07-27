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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobStatus do
  @moduledoc """
  Metadata job status.

  ## Attributes

  *   `completionPercent` (*type:* `integer()`, *default:* `nil`) - Output only. Progress tracking.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Output only. Message relating to the progression of a metadata job.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the metadata job.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the status was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completionPercent => integer() | nil,
          :message => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:completionPercent)
  field(:message)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobStatus do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1MetadataJobStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
