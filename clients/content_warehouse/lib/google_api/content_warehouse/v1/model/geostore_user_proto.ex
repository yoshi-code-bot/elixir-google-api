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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreUserProto do
  @moduledoc """
  UserProto identifies a (human) user of Geo Data. Its primary use is in describing the source of pieces of data (e.g. edits). It could be a simple identifier, but isn't so that we can store it in the clear while still preventing correlation between a user's contribution.

  ## Attributes

  *   `encryptedGaiaId` (*type:* `String.t`, *default:* `nil`) - The user Gaia ID in encrypted form. Wipeout ids take value of "" in bytes.
  *   `encryptionKeyName` (*type:* `String.t`, *default:* `nil`) - Required. The name of the key used to encrypt the Gaia ID.
  *   `keystoreConfigId` (*type:* `integer()`, *default:* `nil`) - Required (valid default provided). The config ID of the owner of the above encryption_key_name. This field must be set if the encryption key name is *not* "mapfacts_gaia_id_encryption_key".
  *   `username` (*type:* `String.t`, *default:* `nil`) - If possible, writers should set this to a full user email, including the domain. Readers should not assume that this is a well-formed email address. This field may only be set by Atlas, Pushpin and OneRing because they are internal tools which have a PWG exception to store textual usernames in the clear.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encryptedGaiaId => String.t() | nil,
          :encryptionKeyName => String.t() | nil,
          :keystoreConfigId => integer() | nil,
          :username => String.t() | nil
        }

  field(:encryptedGaiaId)
  field(:encryptionKeyName)
  field(:keystoreConfigId)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreUserProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreUserProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreUserProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end