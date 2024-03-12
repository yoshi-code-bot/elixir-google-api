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

defmodule GoogleApi.HealthCare.V1.Model.FhirStoreMetrics do
  @moduledoc """
  List of metrics for a given FHIR store.

  ## Attributes

  *   `metrics` (*type:* `list(GoogleApi.HealthCare.V1.Model.FhirStoreMetric.t)`, *default:* `nil`) - List of FhirStoreMetric by resource type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the FHIR store to get metrics for, in the format `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metrics => list(GoogleApi.HealthCare.V1.Model.FhirStoreMetric.t()) | nil,
          :name => String.t() | nil
        }

  field(:metrics, as: GoogleApi.HealthCare.V1.Model.FhirStoreMetric, type: :list)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.FhirStoreMetrics do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.FhirStoreMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.FhirStoreMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end