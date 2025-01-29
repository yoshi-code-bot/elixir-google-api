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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig do
  @moduledoc """
  Config to data store for `HEALTHCARE_FHIR` vertical.

  ## Attributes

  *   `enableConfigurableSchema` (*type:* `boolean()`, *default:* `nil`) - Whether to enable configurable schema for `HEALTHCARE_FHIR` vertical. If set to `true`, the predefined healthcare fhir schema can be extended for more customized searching and filtering.
  *   `enableStaticIndexingForBatchIngestion` (*type:* `boolean()`, *default:* `nil`) - Whether to enable static indexing for `HEALTHCARE_FHIR` batch ingestion. If set to `true`, the batch ingestion will be processed in a static indexing mode which is slower but more capable of handling larger volume.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableConfigurableSchema => boolean() | nil,
          :enableStaticIndexingForBatchIngestion => boolean() | nil
        }

  field(:enableConfigurableSchema)
  field(:enableStaticIndexingForBatchIngestion)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
