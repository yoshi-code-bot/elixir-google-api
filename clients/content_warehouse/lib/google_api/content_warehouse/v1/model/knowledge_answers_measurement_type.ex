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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMeasurementType do
  @moduledoc """
  A MeasurementType configures a value that consists of a measurement. The expected value should have a number and a mid representing the unit. Note: this is currently only used for attribute answer value types. Configuration intent slot as measurement is yet to be supported (or instead we should universally use SemanticType).

  ## Attributes

  *   `componentSpecificContracts` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts.t`, *default:* `nil`) - Contains data about the contracts that this ValueType level is available for. For more information see go/contract-based-conformance.
  *   `remodelings` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpMeaningMeaningRemodelings.t`, *default:* `nil`) - Contains data about current schema remodelings at this ValueType level. For more information see go/meaning-remodeling-framework.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :componentSpecificContracts =>
            GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts.t() | nil,
          :remodelings =>
            GoogleApi.ContentWarehouse.V1.Model.NlpMeaningMeaningRemodelings.t() | nil
        }

  field(:componentSpecificContracts,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpMeaningComponentSpecificContracts
  )

  field(:remodelings, as: GoogleApi.ContentWarehouse.V1.Model.NlpMeaningMeaningRemodelings)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMeasurementType do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMeasurementType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMeasurementType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
