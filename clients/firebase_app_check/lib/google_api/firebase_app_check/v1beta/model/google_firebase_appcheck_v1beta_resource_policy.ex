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

defmodule GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaResourcePolicy do
  @moduledoc """
  App Check enforcement policy for a specific resource of a Google service supported by App Check. Note that this policy will override the service-level configuration.

  ## Attributes

  *   `enforcementMode` (*type:* `String.t`, *default:* `nil`) - Required. The App Check enforcement mode for this resource. This will override the EnforcementMode setting on the parent service.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding. This etag is strongly validated as defined by RFC 7232.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Identifier. The relative name of the resource policy object, in the format: ``` projects/{project_number}/services/{service_id}/resourcePolicies/{resource_policy_id} ``` Note that the `service_id` element must be a supported service ID. Currently, the following service IDs are supported: * `oauth2.googleapis.com` (Google Identity for iOS) `resource_policy_id` is a system-generated UID.
  *   `targetResource` (*type:* `String.t`, *default:* `nil`) - Required. Service specific name of the resource object to which this policy applies, in the format: * **iOS OAuth clients** (Google Identity for iOS): `//oauth2.googleapis.com/projects/{project_number}/oauthClients/{oauth_client_id}` Note that the resource must belong to the service specified in the `name` and be from the same project as this policy, but the resource is allowed to be missing at the time of creation of this policy; in that case, we make a best-effort attempt at respecting this policy, but it may not have any effect until the resource is fully created.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this resource policy configuration object was most recently updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enforcementMode => String.t() | nil,
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :targetResource => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:enforcementMode)
  field(:etag)
  field(:name)
  field(:targetResource)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaResourcePolicy do
  def decode(value, options) do
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaResourcePolicy.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaResourcePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
