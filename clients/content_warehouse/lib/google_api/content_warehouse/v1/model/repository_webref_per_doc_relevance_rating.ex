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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPerDocRelevanceRating do
  @moduledoc """
  Per document ratings relevance ratings. Next id: 21.

  ## Attributes

  *   `contentRelevant` (*type:* `String.t`, *default:* `nil`) - 
  *   `displayString` (*type:* `String.t`, *default:* `nil`) - How this rating is displayed in the evals, pre-computed from the other fields.
  *   `furballUrl` (*type:* `String.t`, *default:* `nil`) - The url of the ewok task that resulted in this rating. Example: https://furball.corp.google.com/project/view-item?itemId=1&projectId=2
  *   `itemId` (*type:* `String.t`, *default:* `nil`) - 
  *   `pageIsAboutChain` (*type:* `String.t`, *default:* `nil`) - If the topic is about a business chain, whether the
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Metadata for task-level ratings. Not filled for aggregated doc-level ratings. 
  *   `raterCanUnderstandTopic` (*type:* `boolean()`, *default:* `nil`) - Whether rater can understand the topic.
  *   `taskDetails` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefTaskDetails.t`, *default:* `nil`) - 
  *   `taskId` (*type:* `String.t`, *default:* `nil`) - 
  *   `topicIsChain` (*type:* `String.t`, *default:* `nil`) - Whether the topic is about a business chain.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentRelevant => String.t() | nil,
          :displayString => String.t() | nil,
          :furballUrl => String.t() | nil,
          :itemId => String.t() | nil,
          :pageIsAboutChain => String.t() | nil,
          :projectId => String.t() | nil,
          :raterCanUnderstandTopic => boolean() | nil,
          :taskDetails =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefTaskDetails.t() | nil,
          :taskId => String.t() | nil,
          :topicIsChain => String.t() | nil
        }

  field(:contentRelevant)
  field(:displayString)
  field(:furballUrl)
  field(:itemId)
  field(:pageIsAboutChain)
  field(:projectId)
  field(:raterCanUnderstandTopic)
  field(:taskDetails, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefTaskDetails)
  field(:taskId)
  field(:topicIsChain)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPerDocRelevanceRating do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPerDocRelevanceRating.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPerDocRelevanceRating do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end