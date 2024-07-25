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

defmodule GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesRequest do
  @moduledoc """
  Request message for the BatchUpdateResourcePolicies method.

  ## Attributes

  *   `requests` (*type:* `list(GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaUpdateResourcePolicyRequest.t)`, *default:* `nil`) - Required. The request messages specifying the ResourcePolicy objects to update. A maximum of 100 objects can be updated in a batch.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Optional. A comma-separated list of names of fields in the ResourcePolicy objects to update. Example: `enforcement_mode`. If this field is present, the `update_mask` field in the UpdateResourcePolicyRequest messages must all match this field, or the entire batch fails and no updates will be committed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requests =>
            list(
              GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaUpdateResourcePolicyRequest.t()
            )
            | nil,
          :updateMask => String.t() | nil
        }

  field(:requests,
    as:
      GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaUpdateResourcePolicyRequest,
    type: :list
  )

  field(:updateMask)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesRequest do
  def decode(value, options) do
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaBatchUpdateResourcePoliciesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
