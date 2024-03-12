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

defmodule GoogleApi.BinaryAuthorization.V1.Model.SigstoreAuthority do
  @moduledoc """
  A Sigstore authority, used to verify signatures that are created by Sigstore. An authority is analogous to an attestation authenticator, verifying that a signature is valid or invalid.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A user-provided name for this `SigstoreAuthority`. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  *   `publicKeySet` (*type:* `GoogleApi.BinaryAuthorization.V1.Model.SigstorePublicKeySet.t`, *default:* `nil`) - Required. A simple set of public keys. A signature is considered valid if any keys in the set validate the signature.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :publicKeySet => GoogleApi.BinaryAuthorization.V1.Model.SigstorePublicKeySet.t() | nil
        }

  field(:displayName)
  field(:publicKeySet, as: GoogleApi.BinaryAuthorization.V1.Model.SigstorePublicKeySet)
end

defimpl Poison.Decoder, for: GoogleApi.BinaryAuthorization.V1.Model.SigstoreAuthority do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.SigstoreAuthority.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BinaryAuthorization.V1.Model.SigstoreAuthority do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
