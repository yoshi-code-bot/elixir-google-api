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

defmodule GoogleApi.BinaryAuthorization.V1.Model.AttestorPublicKey do
  @moduledoc """
  An attestor public key that will be used to verify attestations signed by this attestor.

  ## Attributes

  *   `asciiArmoredPgpPublicKey` (*type:* `String.t`, *default:* `nil`) - ASCII-armored representation of a PGP public key, as the entire output by the command `gpg --export --armor foo@example.com` (either LF or CRLF line endings). When using this field, `id` should be left blank. The Binary Authorization API handlers will calculate the ID and fill it in automatically. Binary Authorization computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id` is provided by the caller, it will be overwritten by the API-calculated ID.
  *   `comment` (*type:* `String.t`, *default:* `nil`) - Optional. A descriptive comment. This field may be updated.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of this public key. Signatures verified by Binary Authorization must include the ID of the public key that can be used to verify them, and that ID must match the contents of this field exactly. Additional restrictions on this field can be imposed based on which public key type is encapsulated. See the documentation on `public_key` cases below for details.
  *   `pkixPublicKey` (*type:* `GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKey.t`, *default:* `nil`) - A raw PKIX SubjectPublicKeyInfo format public key. NOTE: `id` may be explicitly provided by the caller when using this type of public key, but it MUST be a valid RFC3986 URI. If `id` is left blank, a default one will be computed based on the digest of the DER encoding of the public key.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asciiArmoredPgpPublicKey => String.t() | nil,
          :comment => String.t() | nil,
          :id => String.t() | nil,
          :pkixPublicKey => GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKey.t() | nil
        }

  field(:asciiArmoredPgpPublicKey)
  field(:comment)
  field(:id)
  field(:pkixPublicKey, as: GoogleApi.BinaryAuthorization.V1.Model.PkixPublicKey)
end

defimpl Poison.Decoder, for: GoogleApi.BinaryAuthorization.V1.Model.AttestorPublicKey do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.AttestorPublicKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BinaryAuthorization.V1.Model.AttestorPublicKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
