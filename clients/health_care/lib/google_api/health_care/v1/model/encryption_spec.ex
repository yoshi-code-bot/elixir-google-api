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

defmodule GoogleApi.HealthCare.V1.Model.EncryptionSpec do
  @moduledoc """
  Represents a customer-managed encryption key spec that can be applied to a resource.

  ## Attributes

  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of customer-managed encryption key that is used to secure a resource and its sub-resources. Only the key in the same location as this Dataset is allowed to be used for encryption. Format is: `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{key}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kmsKeyName => String.t() | nil
        }

  field(:kmsKeyName)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.EncryptionSpec do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.EncryptionSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.EncryptionSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
