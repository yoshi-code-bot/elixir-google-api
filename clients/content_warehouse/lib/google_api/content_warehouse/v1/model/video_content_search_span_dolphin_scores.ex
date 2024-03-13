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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScores do
  @moduledoc """


  ## Attributes

  *   `spanCandidate` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanCandidate.t)`, *default:* `nil`) - The span candidates extracted from the list of span tokens. Each token is added to a span if its score is above a certain threshold.
  *   `spanToken` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanToken.t)`, *default:* `nil`) - The token-score pairs for the passage.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :spanCandidate =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanCandidate.t()
            )
            | nil,
          :spanToken =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanToken.t()
            )
            | nil
        }

  field(:spanCandidate,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanCandidate,
    type: :list
  )

  field(:spanToken,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanToken,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScores do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScores.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScores do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
