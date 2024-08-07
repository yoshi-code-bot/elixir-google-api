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

defmodule GoogleApi.HealthCare.V1beta1.Model.ExplainDataAccessConsentInfo do
  @moduledoc """
  The enforcing consent's metadata.

  ## Attributes

  *   `cascadeOrigins` (*type:* `list(String.t)`, *default:* `nil`) - The compartment base resources that matched a cascading policy. Each resource has the following format: `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/{resource_type}/{resource_id}`
  *   `consentResource` (*type:* `String.t`, *default:* `nil`) - The resource name of this consent resource, in the format: `projects/{project_id}/locations/{location}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/Consent/{resource_id}`.
  *   `enforcementTime` (*type:* `DateTime.t`, *default:* `nil`) - Last enforcement timestamp of this consent resource.
  *   `matchingAccessorScopes` (*type:* `list(GoogleApi.HealthCare.V1beta1.Model.ConsentAccessorScope.t)`, *default:* `nil`) - A list of all the matching accessor scopes of this consent policy that enforced ExplainDataAccessConsentScope.accessor_scope.
  *   `patientConsentOwner` (*type:* `String.t`, *default:* `nil`) - The patient owning the consent (only applicable for patient consents), in the format: `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}/fhir/Patient/{patient_id}`
  *   `type` (*type:* `String.t`, *default:* `nil`) - The policy type of consent resource (e.g. PATIENT, ADMIN).
  *   `variants` (*type:* `list(String.t)`, *default:* `nil`) - The consent's variant combinations. A single consent may have multiple variants.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cascadeOrigins => list(String.t()) | nil,
          :consentResource => String.t() | nil,
          :enforcementTime => DateTime.t() | nil,
          :matchingAccessorScopes =>
            list(GoogleApi.HealthCare.V1beta1.Model.ConsentAccessorScope.t()) | nil,
          :patientConsentOwner => String.t() | nil,
          :type => String.t() | nil,
          :variants => list(String.t()) | nil
        }

  field(:cascadeOrigins, type: :list)
  field(:consentResource)
  field(:enforcementTime, as: DateTime)

  field(:matchingAccessorScopes,
    as: GoogleApi.HealthCare.V1beta1.Model.ConsentAccessorScope,
    type: :list
  )

  field(:patientConsentOwner)
  field(:type)
  field(:variants, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.ExplainDataAccessConsentInfo do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.ExplainDataAccessConsentInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.ExplainDataAccessConsentInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
