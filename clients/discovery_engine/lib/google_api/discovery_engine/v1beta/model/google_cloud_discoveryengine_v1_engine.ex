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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1Engine do
  @moduledoc """
  Metadata that describes the training and serving parameters of an Engine.

  ## Attributes

  *   `chatEngineConfig` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineChatEngineConfig.t`, *default:* `nil`) - Configurations for the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  *   `chatEngineMetadata` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineChatEngineMetadata.t`, *default:* `nil`) - Output only. Additional information of the Chat Engine. Only applicable if solution_type is SOLUTION_TYPE_CHAT.
  *   `commonConfig` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineCommonConfig.t`, *default:* `nil`) - Common config spec that specifies the metadata of the engine.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp the Recommendation Engine was created at.
  *   `dataStoreIds` (*type:* `list(String.t)`, *default:* `nil`) - The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple DataStores in the same Collection can be associated here. Note that when used in CreateEngineRequest, one DataStore id must be provided as the system will use it for necessary initializations.
  *   `disableAnalytics` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to disable analytics for searches performed on this engine.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the engine. Should be human readable. UTF-8 encoded string with limit of 1024 characters.
  *   `industryVertical` (*type:* `String.t`, *default:* `nil`) - The industry vertical that the engine registers. The restriction of the Engine industry vertical is based on DataStore: Vertical on Engine has to match vertical of the DataStore linked to the engine.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The fully qualified resource name of the engine. This field must be a UTF-8 encoded string with a length limit of 1024 characters. Format: `projects/{project}/locations/{location}/collections/{collection}/engines/{engine}` engine should be 1-63 characters, and valid characters are /a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
  *   `searchEngineConfig` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineSearchEngineConfig.t`, *default:* `nil`) - Configurations for the Search Engine. Only applicable if solution_type is SOLUTION_TYPE_SEARCH.
  *   `solutionType` (*type:* `String.t`, *default:* `nil`) - Required. The solutions of the engine.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp the Recommendation Engine was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chatEngineConfig =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineChatEngineConfig.t()
            | nil,
          :chatEngineMetadata =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineChatEngineMetadata.t()
            | nil,
          :commonConfig =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineCommonConfig.t()
            | nil,
          :createTime => DateTime.t() | nil,
          :dataStoreIds => list(String.t()) | nil,
          :disableAnalytics => boolean() | nil,
          :displayName => String.t() | nil,
          :industryVertical => String.t() | nil,
          :name => String.t() | nil,
          :searchEngineConfig =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineSearchEngineConfig.t()
            | nil,
          :solutionType => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:chatEngineConfig,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineChatEngineConfig
  )

  field(:chatEngineMetadata,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineChatEngineMetadata
  )

  field(:commonConfig,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineCommonConfig
  )

  field(:createTime, as: DateTime)
  field(:dataStoreIds, type: :list)
  field(:disableAnalytics)
  field(:displayName)
  field(:industryVertical)
  field(:name)

  field(:searchEngineConfig,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1EngineSearchEngineConfig
  )

  field(:solutionType)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1Engine do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1Engine.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1Engine do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
