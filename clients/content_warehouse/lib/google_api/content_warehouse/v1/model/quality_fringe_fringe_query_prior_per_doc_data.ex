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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityFringeFringeQueryPriorPerDocData do
  @moduledoc """
  PerDocData for fringe-query-prior (built into the shards for eventual consumption at Fringe classification time). Not stored in DocJoins. NEXT ID: 13

  ## Attributes

  *   `encodedCalibratedFringeSitePriorScore` (*type:* `integer()`, *default:* `nil`) - 
  *   `encodedChardXlqHoaxPrediction` (*type:* `integer()`, *default:* `nil`) - An encoding of the Chard XLQ-hoax prediction in [0,1].
  *   `encodedChardXlqTranslatedPrediction` (*type:* `integer()`, *default:* `nil`) - An encoding of the Chard XLQ prediction on translated content in [0,1].
  *   `encodedChardXlqYmylPrediction` (*type:* `integer()`, *default:* `nil`) - An encoding of the Chard XLQ-YMYL prediction in [0,1].
  *   `encodedDocumentFringeVulnerability` (*type:* `integer()`, *default:* `nil`) - An estimate of the vulnerability of this doc to show fringe content, based on the context around the document. Can be interpreted as a 'safe' QScore threshold to use (see go/doc-fringe-vulnerability for more info). Encoded for compactness and to restrict visibility. Please contact fringe-ranking@ to get access to quality_fringe::DocumentFringeVulnerabilityEncoding to decode this field.
  *   `encodedEntityPriorScore` (*type:* `integer()`, *default:* `nil`) - Highest entity prior seen for document's Headline and SingleTopic entities (see go/topicality-score for definitions of entity topicalities). Represents probability that a query is fringe, given that the entity is in the result set with topicality >= Headline. Scores scaled to integers between 0 and 1000 for compactness. Scores must be interpreted through FringeQueryPriorEncoding::Decode API.
  *   `encodedFringePriorScore` (*type:* `integer()`, *default:* `nil`) - Probability that a query is fringe, given this document is in the result set. Scores scaled to integers between 0 and 1000 for compactness. Scores must be interpreted through FringeQueryPriorEncoding::Decode API.
  *   `encodedFringeSitePriorScore` (*type:* `integer()`, *default:* `nil`) - Probability that a query is fringe, given this document's site is in the result set. Scores scaled to integers between 0 and 1000 for compactness. Scores must be interpreted through FringeQueryPriorEncoding::Decode API.
  *   `encodedFringeSitePriorScoreForQfsTraining` (*type:* `integer()`, *default:* `nil`) - Probability that a query is fringe, given this document's site is in the result set. Does not use signals with a dependency on the QueryFringeScore of a document. Scores scaled to integers between 0 and 1000 for compactness. Scores must be interpreted through FringeQueryPriorEncoding::Decode API. Will NOT be present if the fringe_site_prior_score_for_qfs_training is not significantly different from the site_prior_score.
  *   `encodedPredictedXlqScoreAndConfidence` (*type:* `integer()`, *default:* `nil`) - A combined encoding of the pXLQ score in [0,1] and the confidence with which that score should be interpreted in [0,1].
  *   `encodedProximityScore` (*type:* `integer()`, *default:* `nil`) - A score in [0, 1] representing the similarity of this doc to known fringe-vulnerable 'seeds'. See go/fringe-proximity for more information. Encoded for compactness and to restrict visibility.
  *   `sensitiveEntitiesIndices` (*type:* `list(integer())`, *default:* `nil`) - Indices on the repository_webref::WebrefEntities::entity field of entities that represent a person or a group of people (aka sensitive entities).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encodedCalibratedFringeSitePriorScore => integer() | nil,
          :encodedChardXlqHoaxPrediction => integer() | nil,
          :encodedChardXlqTranslatedPrediction => integer() | nil,
          :encodedChardXlqYmylPrediction => integer() | nil,
          :encodedDocumentFringeVulnerability => integer() | nil,
          :encodedEntityPriorScore => integer() | nil,
          :encodedFringePriorScore => integer() | nil,
          :encodedFringeSitePriorScore => integer() | nil,
          :encodedFringeSitePriorScoreForQfsTraining => integer() | nil,
          :encodedPredictedXlqScoreAndConfidence => integer() | nil,
          :encodedProximityScore => integer() | nil,
          :sensitiveEntitiesIndices => list(integer()) | nil
        }

  field(:encodedCalibratedFringeSitePriorScore)
  field(:encodedChardXlqHoaxPrediction)
  field(:encodedChardXlqTranslatedPrediction)
  field(:encodedChardXlqYmylPrediction)
  field(:encodedDocumentFringeVulnerability)
  field(:encodedEntityPriorScore)
  field(:encodedFringePriorScore)
  field(:encodedFringeSitePriorScore)
  field(:encodedFringeSitePriorScoreForQfsTraining)
  field(:encodedPredictedXlqScoreAndConfidence)
  field(:encodedProximityScore)
  field(:sensitiveEntitiesIndices, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityFringeFringeQueryPriorPerDocData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityFringeFringeQueryPriorPerDocData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityFringeFringeQueryPriorPerDocData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end