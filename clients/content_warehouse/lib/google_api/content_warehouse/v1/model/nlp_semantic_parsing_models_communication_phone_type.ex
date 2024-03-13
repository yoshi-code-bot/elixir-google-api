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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsCommunicationPhoneType do
  @moduledoc """
  The type of contact (mobile, home, work, etc). NOTE: Unfortunately the name of this message is a misnomer. Contact type would be a better name.

  ## Attributes

  *   `evalData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t`, *default:* `nil`) - Required, but should only be used inside Aqua and must not be used by outside clients!!
  *   `isAnnotatedFromText` (*type:* `boolean()`, *default:* `nil`) - Whether the annotation is from $Text.
  *   `normalizedText` (*type:* `String.t`, *default:* `nil`) - Normalized (canonicalized) text, e.g. "mobile".
  *   `originalText` (*type:* `String.t`, *default:* `nil`) - Original text in query, e.g. "cell".
  *   `rawText` (*type:* `String.t`, *default:* `nil`) - DEPRECATED. Used original_text instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :evalData =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t() | nil,
          :isAnnotatedFromText => boolean() | nil,
          :normalizedText => String.t() | nil,
          :originalText => String.t() | nil,
          :rawText => String.t() | nil
        }

  field(:evalData, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData)
  field(:isAnnotatedFromText)
  field(:normalizedText)
  field(:originalText)
  field(:rawText)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsCommunicationPhoneType do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsCommunicationPhoneType.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsCommunicationPhoneType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
