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

defmodule GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKeySet do
  @moduledoc """
  A bundle of PKIX public keys, used to authenticate attestation signatures. Generally, a signature is considered to be authenticated by a `PkixPublicKeySet` if any of the public keys verify it (i.e. it is an "OR" of the keys).

  ## Attributes

  *   `pkixPublicKeys` (*type:* `list(GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKey.t)`, *default:* `nil`) - Required. `pkix_public_keys` must have at least one entry.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pkixPublicKeys => list(GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKey.t()) | nil
        }

  field(:pkixPublicKeys, as: GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKey, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKeySet do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKeySet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKeySet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
