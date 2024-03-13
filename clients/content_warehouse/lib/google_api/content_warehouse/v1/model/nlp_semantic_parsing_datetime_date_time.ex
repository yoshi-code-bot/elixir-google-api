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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime do
  @moduledoc """
  The top-level DATE/TIME representation. It can represent either (1) one or multiple Date/Time ranges, or (2) one or multiple of Date/Time points, or (3) a recurrent date/time expression. Next available ID: 12. Only one of |range|, |point| and |recurrent| will be set: |range| contains a list of resolved Date/Time ranges. |point| contains a list of resolved Date/Time points. |recurrent| contains the representation for periodical dates/times. |range| and |point| are repeated to accommodate the need when the date/time expression under one non-terminal is resolved to a list of correct values. For example, "Mondays in April, 2014" may have 4 correct dates.

  ## Attributes

  *   `compositionElement` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t`, *default:* `nil`) - For temporal expressions that consist of components with different types, the elements in the composition are nested according to the order they should be grounded/resolved. For example, "tomorrow at 8am" has a relative component [tomorrow] and an absolute datetime component [8am] so the annotation will be represented in the following way, indicating that the relative datetime for tomorrow should be grounded first, and then resolve the actual 8am point for that given date: point { hour: 8 hour_state: UNAMBIGUOUS properties { time_format: AM_PM_TOKEN } } composition_element { relative { fetched { ordinal: 1 target { unit: DAY } base_type: CURRENT_DATETIME } } grounding_stage: UNGROUNDED } grounding_stage: UNGROUNDED_COMPOSITION The composition_element field will be populated only when the grounding_stage is set to UNGROUNDED_COMPOSITION and it will hold the nested DateTime value for the rest the compositional expression. More details in: go/datetime-resolution-decoupling.
  *   `deleted7` (*type:* `boolean()`, *default:* `nil`) - Deprecated fields. Do NOT use.
  *   `deleted8` (*type:* `boolean()`, *default:* `nil`) - 
  *   `evalData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t`, *default:* `nil`) - This field of the DateTime message should not in general be used by outside clients of the grammar. It is intended to be used internally in Aqua for evaluation purposes. The rationale is that token counts depend on the particular tokenization used in Aqua which may be different from the one used by the client and may change from time to time. Outside clients should not create a dependency on the current tokenization used in Aqua.
  *   `groundingStage` (*type:* `String.t`, *default:* `nil`) - 
  *   `point` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime.t)`, *default:* `nil`) - 
  *   `properties` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeResolutionProperties.t`, *default:* `nil`) - 
  *   `range` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange.t)`, *default:* `nil`) - Note that there is a difference between this scenario and an ambiguous date/time expression. The latter is resolved to multiple proto messages, not multiple values within one proto message. To be concrete, consider "Monday" in "Monday football". It is ambiguous and can be reasonably resolved to "Monday last week," "Monday this week" and "Monday next week." The 3 values are represented as 3 separate DateTime messages, not 3 values within one DateTime message.
  *   `recurrent` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRecurrent.t`, *default:* `nil`) - 
  *   `relative` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime.t`, *default:* `nil`) - 
  *   `span` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeSpan.t`, *default:* `nil`) - See comments of Span.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compositionElement =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t() | nil,
          :deleted7 => boolean() | nil,
          :deleted8 => boolean() | nil,
          :evalData =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t() | nil,
          :groundingStage => String.t() | nil,
          :point =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime.t()
            )
            | nil,
          :properties =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeResolutionProperties.t()
            | nil,
          :range =>
            list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange.t()) | nil,
          :recurrent =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRecurrent.t() | nil,
          :relative =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime.t()
            | nil,
          :span => GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeSpan.t() | nil
        }

  field(:compositionElement,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime
  )

  field(:deleted7)
  field(:deleted8)
  field(:evalData, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData)
  field(:groundingStage)

  field(:point,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeAbsoluteDateTime,
    type: :list
  )

  field(:properties,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeResolutionProperties
  )

  field(:range,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRange,
    type: :list
  )

  field(:recurrent, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRecurrent)

  field(:relative,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeRelativeDateTime
  )

  field(:span, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeSpan)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end