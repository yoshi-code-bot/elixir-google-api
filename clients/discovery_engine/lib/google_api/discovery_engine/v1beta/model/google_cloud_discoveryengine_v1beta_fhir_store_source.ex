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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaFhirStoreSource do
  @moduledoc """
  Cloud FhirStore source import data from.

  ## Attributes

  *   `fhirStore` (*type:* `String.t`, *default:* `nil`) - Required. The full resource name of the FHIR store to import data from, in the format of `projects/{project}/locations/{location}/datasets/{dataset}/fhirStores/{fhir_store}`.
  *   `gcsStagingDir` (*type:* `String.t`, *default:* `nil`) - Intermediate Cloud Storage directory used for the import with a length limit of 2,000 characters. Can be specified if one wants to have the FhirStore export to a specific Cloud Storage directory.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fhirStore => String.t() | nil,
          :gcsStagingDir => String.t() | nil
        }

  field(:fhirStore)
  field(:gcsStagingDir)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaFhirStoreSource do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaFhirStoreSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaFhirStoreSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end