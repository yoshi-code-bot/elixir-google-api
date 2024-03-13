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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderingOutputMetadata do
  @moduledoc """
  Small values from rendering output. It's stored as a column in alexandria document table. Next tag available: 30

  ## Attributes

  *   `configParams` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderRequestConfigConfigParams.t`, *default:* `nil`) - 
  *   `exceptions` (*type:* `String.t`, *default:* `nil`) - The exceptions observed during the rendering. In bit-field encoding of enum values of RenderResponse.RenderingException.
  *   `experimentalRenderTimeMsec` (*type:* `integer()`, *default:* `nil`) - Total GCU time for rendering the document in millisecond. This data is from render_stats.render_cost_mgcu in RenderResponse proto. Note that this is *experimental* field. Please check with rendering-infra@ if you want to use.
  *   `generationTimestamps` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentOutputGenerationTimestamps.t`, *default:* `nil`) - 
  *   `importance` (*type:* `integer()`, *default:* `nil`) - The importance value of the rendered document.
  *   `lastNewContentProbingTimestamp` (*type:* `integer()`, *default:* `nil`) - The timestamp of last new content probing.
  *   `newTokensPercentageAfterRendering` (*type:* `float()`, *default:* `nil`) - Percentage of new tokens in the rendered the document content.
  *   `numNewTokensFoundInRendering` (*type:* `integer()`, *default:* `nil`) - 
  *   `refresh` (*type:* `boolean()`, *default:* `nil`) - 
  *   `renderCacheStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderCacheStats.t`, *default:* `nil`) - A collection of fields to track stats on cache use in the Rendering microservice.
  *   `renderEngine` (*type:* `String.t`, *default:* `nil`) - 
  *   `renderEvent` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoRenderEvent.t)`, *default:* `nil`) - Different types of events which happened during rendering.
  *   `renderServerCl` (*type:* `String.t`, *default:* `nil`) - The CL from which the render engine was built.
  *   `renderTreeQualityScore` (*type:* `float()`, *default:* `nil`) - 
  *   `renderedSnapshotSignature` (*type:* `String.t`, *default:* `nil`) - Short signature (usually less than 1 KB) which captures a perceptual hash on the rendered image. This is used to determine whether successive renderings should be output. See the library in googlen/snapshot/shared/similarity.* for more info about how this value is interpreted and used.
  *   `renderedTimeUsec` (*type:* `String.t`, *default:* `nil`) - Current time in microseconds the document is going through rendering system. This field is set regardless of whether the document is being rendered or if we are skipping rendering by using a cache.
  *   `renderingFetchStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderingFetchStats.t`, *default:* `nil`) - 
  *   `selectionResult` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentSelectionResult.t`, *default:* `nil`) - The corpus selection result. Can be used for offline analysis.
  *   `snapshotQualityScore` (*type:* `float()`, *default:* `nil`) - These scores are copied from htmlrender_webkit_headless_proto.Document.
  *   `withMissingResources` (*type:* `boolean()`, *default:* `nil`) - True if there were any missing resources during the rendering.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configParams =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderRequestConfigConfigParams.t()
            | nil,
          :exceptions => String.t() | nil,
          :experimentalRenderTimeMsec => integer() | nil,
          :generationTimestamps =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentOutputGenerationTimestamps.t()
            | nil,
          :importance => integer() | nil,
          :lastNewContentProbingTimestamp => integer() | nil,
          :newTokensPercentageAfterRendering => float() | nil,
          :numNewTokensFoundInRendering => integer() | nil,
          :refresh => boolean() | nil,
          :renderCacheStats =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderCacheStats.t() | nil,
          :renderEngine => String.t() | nil,
          :renderEvent =>
            list(GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoRenderEvent.t())
            | nil,
          :renderServerCl => String.t() | nil,
          :renderTreeQualityScore => float() | nil,
          :renderedSnapshotSignature => String.t() | nil,
          :renderedTimeUsec => String.t() | nil,
          :renderingFetchStats =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderingFetchStats.t()
            | nil,
          :selectionResult =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentSelectionResult.t() | nil,
          :snapshotQualityScore => float() | nil,
          :withMissingResources => boolean() | nil
        }

  field(:configParams,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderRequestConfigConfigParams
  )

  field(:exceptions)
  field(:experimentalRenderTimeMsec)

  field(:generationTimestamps,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentOutputGenerationTimestamps
  )

  field(:importance)
  field(:lastNewContentProbingTimestamp)
  field(:newTokensPercentageAfterRendering)
  field(:numNewTokensFoundInRendering)
  field(:refresh)

  field(:renderCacheStats,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderCacheStats
  )

  field(:renderEngine)

  field(:renderEvent,
    as: GoogleApi.ContentWarehouse.V1.Model.HtmlrenderWebkitHeadlessProtoRenderEvent,
    type: :list
  )

  field(:renderServerCl)
  field(:renderTreeQualityScore)
  field(:renderedSnapshotSignature)
  field(:renderedTimeUsec)

  field(:renderingFetchStats,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderingFetchStats
  )

  field(:selectionResult,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentSelectionResult
  )

  field(:snapshotQualityScore)
  field(:withMissingResources)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderingOutputMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderingOutputMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingEmbeddedContentRenderingOutputMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
