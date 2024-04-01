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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRankingRecord do
  @moduledoc """
  Record message for RankService.Rank method.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - The content of the record. Empty by default. At least one of title or content should be set otherwise an INVALID_ARGUMENT error is thrown.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique ID to represent the record.
  *   `score` (*type:* `number()`, *default:* `nil`) - The score of this record based on the given query and selected model.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the record. Empty by default. At least one of title or content should be set otherwise an INVALID_ARGUMENT error is thrown.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t() | nil,
          :id => String.t() | nil,
          :score => number() | nil,
          :title => String.t() | nil
        }

  field(:content)
  field(:id)
  field(:score)
  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRankingRecord do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRankingRecord.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaRankingRecord do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end