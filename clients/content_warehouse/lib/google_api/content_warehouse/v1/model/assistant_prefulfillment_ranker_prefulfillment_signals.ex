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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantPrefulfillmentRankerPrefulfillmentSignals do
  @moduledoc """
  Signals to be used by the Prefulfillment Ranker. Derived from the ParsingSignals and GroundingSignals carried by the FunctionCall. LINT.IfChange Next ID: 69

  ## Attributes

  *   `generatedByLegacyAquaDomain` (*type:* `boolean()`, *default:* `nil`) - Whether or not the intent was generated by a legacy Aqua domain that PFR should care about.
  *   `isTvmIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a media object tvm intent.
  *   `predictedIntentConfidence` (*type:* `number()`, *default:* `nil`) - Intent confidence predicted by the AssistantVerticalClassifier QRewrite servlet.
  *   `numConstraintsSatisfied` (*type:* `float()`, *default:* `nil`) - Sum of the number of constraints satisfied for each variable. Depending on the match score for a constraint, this number can be fractional and is in the range [0, num_constraints]. Populated by the Grounding Box.
  *   `isFeasible` (*type:* `boolean()`, *default:* `nil`) - Feasibility of fulfilling the binding set. Eg: For PlayMedia, this is equivalent to playability. More details: go/hgr-feasibility-feature.
  *   `rankerName` (*type:* `String.t`, *default:* `nil`) - Used in HGR to modify the ranker based on input experimental flag and intent name.
  *   `verticalConfidenceScore` (*type:* `number()`, *default:* `nil`) - Horizontal feature that stores information about confidence scores for each resolution within the binding set.
  *   `numGroundedArgs` (*type:* `float()`, *default:* `nil`) - Number of grounded arguments the intent has, populated by the Grounding Box.
  *   `isValidSmarthomeIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a Smarthome-domain intent with valid device arguments.
  *   `dominant` (*type:* `boolean()`, *default:* `nil`) - Indicates interpretation dominance predicted by KScorer
  *   `maxHgrScoreAcrossBindingSets` (*type:* `float()`, *default:* `nil`) - The maximum score assigned by the Horizontal Grounding Ranker (HGR) across all of the intent's binding sets.
  *   `groundingProviderFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerGroundingProviderFeatures.t`, *default:* `nil`) - Grounding Provider related ranking features, including general Grounding Provider ranking features(shared among multiple GPs) and specific Grounding Provider ranking features(provided by a specific GP).
  *   `isNspIntent` (*type:* `boolean()`, *default:* `nil`) - Whether this interpretation was genearted by NSP.
  *   `kscorerRank` (*type:* `integer()`, *default:* `nil`) - The rank order of the interpretation as determined by kscorer. The kscorer-determined dominant interpretation, if any, gets a rank of 0. The remaining N interpretations get a rank of 1 through N.
  *   `nspRank` (*type:* `integer()`, *default:* `nil`) - Rank of the intent as reported by NSP.
  *   `isSageIntent` (*type:* `boolean()`, *default:* `nil`) - Whether this intent was generated by Sage.
  *   `intentNamePauis` (*type:* `number()`, *default:* `nil`) - Intent level Pauis User Interaction Score.
  *   `numGroundableArgs` (*type:* `float()`, *default:* `nil`) - Number of groundable arguments the intent has, populated by the Grounding Box.
  *   `isDummyIntent` (*type:* `boolean()`, *default:* `nil`) - 
  *   `isPlayGenericMusic` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a PlayGenericMusic-type intent.
  *   `intentName` (*type:* `String.t`, *default:* `nil`) - intent_name is used by PFR ensemble model. See go/pfr_ha_launch_doc
  *   `bindingSetInvalidReason` (*type:* `String.t`, *default:* `nil`) - BindingSet level invalid reason. This is only useful when the bindingset is invalid after running the horizontal check in HGR. More details: go/gb-infeasible.
  *   `isFullyGrounded` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is fully grounded.
  *   `usesGroundingBox` (*type:* `boolean()`, *default:* `nil`) - Whether the interpretation should run through grounding box or not.
  *   `deepMediaDominant` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is dominant according to NSP deep-media.
  *   `isHighConfidencePodcastIntent` (*type:* `boolean()`, *default:* `nil`) - Used for PFR manual rule to prefer high confidence podcast intent (e.g. topical, genre) over generic podcast intents.
  *   `subIntentType` (*type:* `String.t`, *default:* `nil`) - 
  *   `intentNameAuisScore` (*type:* `float()`, *default:* `nil`) - QUS intent-based ranking signals. Assistant User Interaction Score which is aggregated using intent name.
  *   `platinumSource` (*type:* `boolean()`, *default:* `nil`) - Whether the intent comes from the Sage IntentGenerator's "platinum" source, signifying high-confidence in quality.
  *   `numConstraints` (*type:* `float()`, *default:* `nil`) - Sum of the number of constraints used by the Grounding Box to ground each variable.
  *   `searchDispatch` (*type:* `String.t`, *default:* `nil`) - The determination made by the SearchDispatchingConfig as to whether and how this interpretation should be dispatched to Search.
  *   `isScoreBasedIntent` (*type:* `boolean()`, *default:* `nil`) - Whether this intent is a score-based intent, relying on PFR for scoring and pruning to the top intent.
  *   `fulfillableDominantMedia` (*type:* `boolean()`, *default:* `nil`) - Whether this is a fulfillable, dominant Media intent.
  *   `isPodcastIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a podcast intent.
  *   `intentType` (*type:* `String.t`, *default:* `nil`) - intent_type differentiates between intents that share the top level intent name. For eg: for TV_FALLBACK_SEARCH_INTENT, the top level intent name must be "Find_media" and the media_object argument within it must be of type "Media_unspecified".
  *   `numVariables` (*type:* `float()`, *default:* `nil`) - Signals as proposed in go/improved-grounding-signals. Number of arguments, possibly nested, that the Grounding Box tried to ground.
  *   `isPodcastGenericIntent` (*type:* `boolean()`, *default:* `nil`) - Used for PFR manual rule to prefer high confidence podcast intent (e.g. topical, genre) over generic podcast intents.
  *   `topHypothesisConfidence` (*type:* `number()`, *default:* `nil`) - Average of per-word confidence for top speech recognition hypothesis. The value is from RecognizerHypothesisLog: http://google3/logs/proto/speech/service/recognizer_log.proto?l=848&rcl=281400256
  *   `laaFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerLaaFeatures.t`, *default:* `nil`) - Learn and adapt(go/laa) related features. Design doc: go/laa-profile-signal-for-grounding.
  *   `isVideoIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a media object video intent.
  *   `bindingSetAuis` (*type:* `number()`, *default:* `nil`) - Assistant User Interaction Score for binding set.
  *   `pq2tVsAssistantIbstCosine` (*type:* `float()`, *default:* `nil`) - Cosine similarity between predicted query-to-term model and assistant intent-type-based salient terms. This is intended to be only used for ACE ranking and only populated for assistant traffic.
  *   `groundabilityScore` (*type:* `float()`, *default:* `nil`) - Grounding Signals. Score indicating how grounded the intent is, populated by the Grounding Box.
  *   `phase` (*type:* `String.t`, *default:* `nil`) - Query understanding phase the intent was produced in.
  *   `hasAnswerGroup` (*type:* `boolean()`, *default:* `nil`) - Whether the interpretation has a Search answer group object, signifying it came from Search resolution.
  *   `numAlternativeHypothesis` (*type:* `number()`, *default:* `nil`) - Number of alternative hypotheses from speech recognition(S3).
  *   `smarthomeIntentMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantPfrSmartHomeIntentMetadata.t`, *default:* `nil`) - SmartHome intent metadata used for the SmartHome business-rules twiddler.
  *   `tiebreakingMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantPfrTiebreakingMetadata.t`, *default:* `nil`) - 
  *   `maskCandidateLevelFeatures` (*type:* `boolean()`, *default:* `nil`) - This feature is always false / no-op in serving time. In training time, this feature may be set true on specific examples for weighted training where when this signal is true, only cross-intent level features are used for training and other candidate level features are masked (set as missing).
  *   `numVariablesGrounded` (*type:* `float()`, *default:* `nil`) - Number of arguments, possibly nested, that the Grounding Box was able to ground. This includes ambiguously grounded arguments.
  *   `inQueryMaxEffectiveArgSpanLength` (*type:* `number()`, *default:* `nil`) - This is a cross-intent feature which is calculated by iterating all intent candidates. This feature should be populated in post-IG stage (before GB).
  *   `intentNameAuisScoreExp` (*type:* `float()`, *default:* `nil`) - Assistant User Interaction Score which is aggregated using intent name from exp laelaps.
  *   `isSageDisabledIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is an intent marked disabled by the Sage IG.
  *   `isSageInNageIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is produced by the Sage IntentGenerator invoked by the NSP intent-generator (thus, Sage-in-NSP-invoking_Sage, or Sage-in-Nage).
  *   `calibratedParsingScore` (*type:* `float()`, *default:* `nil`) - A parsing score that is independently calibrated by each parser/IG.
  *   `bindingSetValidity` (*type:* `String.t`, *default:* `nil`) - BindingSet level validity. When one of the GPs returns invalid resolution, or the combined bindingset is invalid, this enum will indidate the validity. More details: go/gb-infeasible.
  *   `pq2tVsIbstCosine` (*type:* `float()`, *default:* `nil`) - Cosine similarity between predicted query-to-term model and intent-type-based salient terms. This is intended to be used as a backoff to pq2t_vs_qibst_cosine if it is missing.
  *   `parsingScoreMse8BucketId` (*type:* `integer()`, *default:* `nil`) - A ID corresponding to which bucket a given parsing score belongs in.
  *   `isMediaControlIntent` (*type:* `boolean()`, *default:* `nil`) - Whether the intent is a media control intent.
  *   `bindingSetPauis` (*type:* `number()`, *default:* `nil`) - Pauis score for the binding set
  *   `effectiveArgSpanLength` (*type:* `number()`, *default:* `nil`) - The total effective length of the spans for the arguments used to construct the parse. May include vertical specific adjustments. Eg: For the query [delete my 7 p.m. alarm called chicken] and intent Delete_alarm(alarm_object=RD(category=AlarmObject( label="chicken", trigger_time_datetime=<< 7 PM >>))), the effective argument span is "7 p.m." + "chicken" (total length of 13).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :generatedByLegacyAquaDomain => boolean() | nil,
          :isTvmIntent => boolean() | nil,
          :predictedIntentConfidence => number() | nil,
          :numConstraintsSatisfied => float() | nil,
          :isFeasible => boolean() | nil,
          :rankerName => String.t() | nil,
          :verticalConfidenceScore => number() | nil,
          :numGroundedArgs => float() | nil,
          :isValidSmarthomeIntent => boolean() | nil,
          :dominant => boolean() | nil,
          :maxHgrScoreAcrossBindingSets => float() | nil,
          :groundingProviderFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerGroundingProviderFeatures.t()
            | nil,
          :isNspIntent => boolean() | nil,
          :kscorerRank => integer() | nil,
          :nspRank => integer() | nil,
          :isSageIntent => boolean() | nil,
          :intentNamePauis => number() | nil,
          :numGroundableArgs => float() | nil,
          :isDummyIntent => boolean() | nil,
          :isPlayGenericMusic => boolean() | nil,
          :intentName => String.t() | nil,
          :bindingSetInvalidReason => String.t() | nil,
          :isFullyGrounded => boolean() | nil,
          :usesGroundingBox => boolean() | nil,
          :deepMediaDominant => boolean() | nil,
          :isHighConfidencePodcastIntent => boolean() | nil,
          :subIntentType => String.t() | nil,
          :intentNameAuisScore => float() | nil,
          :platinumSource => boolean() | nil,
          :numConstraints => float() | nil,
          :searchDispatch => String.t() | nil,
          :isScoreBasedIntent => boolean() | nil,
          :fulfillableDominantMedia => boolean() | nil,
          :isPodcastIntent => boolean() | nil,
          :intentType => String.t() | nil,
          :numVariables => float() | nil,
          :isPodcastGenericIntent => boolean() | nil,
          :topHypothesisConfidence => number() | nil,
          :laaFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerLaaFeatures.t() | nil,
          :isVideoIntent => boolean() | nil,
          :bindingSetAuis => number() | nil,
          :pq2tVsAssistantIbstCosine => float() | nil,
          :groundabilityScore => float() | nil,
          :phase => String.t() | nil,
          :hasAnswerGroup => boolean() | nil,
          :numAlternativeHypothesis => number() | nil,
          :smarthomeIntentMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantPfrSmartHomeIntentMetadata.t() | nil,
          :tiebreakingMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantPfrTiebreakingMetadata.t() | nil,
          :maskCandidateLevelFeatures => boolean() | nil,
          :numVariablesGrounded => float() | nil,
          :inQueryMaxEffectiveArgSpanLength => number() | nil,
          :intentNameAuisScoreExp => float() | nil,
          :isSageDisabledIntent => boolean() | nil,
          :isSageInNageIntent => boolean() | nil,
          :calibratedParsingScore => float() | nil,
          :bindingSetValidity => String.t() | nil,
          :pq2tVsIbstCosine => float() | nil,
          :parsingScoreMse8BucketId => integer() | nil,
          :isMediaControlIntent => boolean() | nil,
          :bindingSetPauis => number() | nil,
          :effectiveArgSpanLength => number() | nil
        }

  field(:generatedByLegacyAquaDomain)
  field(:isTvmIntent)
  field(:predictedIntentConfidence)
  field(:numConstraintsSatisfied)
  field(:isFeasible)
  field(:rankerName)
  field(:verticalConfidenceScore)
  field(:numGroundedArgs)
  field(:isValidSmarthomeIntent)
  field(:dominant)
  field(:maxHgrScoreAcrossBindingSets)

  field(:groundingProviderFeatures,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerGroundingProviderFeatures
  )

  field(:isNspIntent)
  field(:kscorerRank)
  field(:nspRank)
  field(:isSageIntent)
  field(:intentNamePauis)
  field(:numGroundableArgs)
  field(:isDummyIntent)
  field(:isPlayGenericMusic)
  field(:intentName)
  field(:bindingSetInvalidReason)
  field(:isFullyGrounded)
  field(:usesGroundingBox)
  field(:deepMediaDominant)
  field(:isHighConfidencePodcastIntent)
  field(:subIntentType)
  field(:intentNameAuisScore)
  field(:platinumSource)
  field(:numConstraints)
  field(:searchDispatch)
  field(:isScoreBasedIntent)
  field(:fulfillableDominantMedia)
  field(:isPodcastIntent)
  field(:intentType)
  field(:numVariables)
  field(:isPodcastGenericIntent)
  field(:topHypothesisConfidence)
  field(:laaFeatures, as: GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerLaaFeatures)
  field(:isVideoIntent)
  field(:bindingSetAuis)
  field(:pq2tVsAssistantIbstCosine)
  field(:groundabilityScore)
  field(:phase)
  field(:hasAnswerGroup)
  field(:numAlternativeHypothesis)

  field(:smarthomeIntentMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantPfrSmartHomeIntentMetadata
  )

  field(:tiebreakingMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantPfrTiebreakingMetadata
  )

  field(:maskCandidateLevelFeatures)
  field(:numVariablesGrounded)
  field(:inQueryMaxEffectiveArgSpanLength)
  field(:intentNameAuisScoreExp)
  field(:isSageDisabledIntent)
  field(:isSageInNageIntent)
  field(:calibratedParsingScore)
  field(:bindingSetValidity)
  field(:pq2tVsIbstCosine)
  field(:parsingScoreMse8BucketId)
  field(:isMediaControlIntent)
  field(:bindingSetPauis)
  field(:effectiveArgSpanLength)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantPrefulfillmentRankerPrefulfillmentSignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantPrefulfillmentRankerPrefulfillmentSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantPrefulfillmentRankerPrefulfillmentSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end