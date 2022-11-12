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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3EvaluationCounters do
  @moduledoc """
  Evaluation counters for the documents that were used.

  ## Attributes

  *   `evaluatedDocumentsCount` (*type:* `integer()`, *default:* `nil`) - How many documents were used in the evaluation.
  *   `failedDocumentsCount` (*type:* `integer()`, *default:* `nil`) - How many documents were not included in the evaluation as Document AI failed to process them.
  *   `inputDocumentsCount` (*type:* `integer()`, *default:* `nil`) - How many documents were sent for evaluation.
  *   `invalidDocumentsCount` (*type:* `integer()`, *default:* `nil`) - How many documents were not included in the evaluation as they didn't pass validation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :evaluatedDocumentsCount => integer() | nil,
          :failedDocumentsCount => integer() | nil,
          :inputDocumentsCount => integer() | nil,
          :invalidDocumentsCount => integer() | nil
        }

  field(:evaluatedDocumentsCount)
  field(:failedDocumentsCount)
  field(:inputDocumentsCount)
  field(:invalidDocumentsCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3EvaluationCounters do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3EvaluationCounters.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3EvaluationCounters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
