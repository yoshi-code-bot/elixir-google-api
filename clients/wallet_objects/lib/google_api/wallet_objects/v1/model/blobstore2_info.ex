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

defmodule GoogleApi.WalletObjects.V1.Model.Blobstore2Info do
  @moduledoc """
  Information to read/write to blobstore2.

  ## Attributes

  *   `blobGeneration` (*type:* `String.t`, *default:* `nil`) - The blob generation id.
  *   `blobId` (*type:* `String.t`, *default:* `nil`) - The blob id, e.g., /blobstore/prod/playground/scotty
  *   `downloadReadHandle` (*type:* `String.t`, *default:* `nil`) - Read handle passed from Bigstore -> Scotty for a GCS download. This is a signed, serialized blobstore2.ReadHandle proto which must never be set outside of Bigstore, and is not applicable to non-GCS media downloads.
  *   `readToken` (*type:* `String.t`, *default:* `nil`) - The blob read token. Needed to read blobs that have not been replicated. Might not be available until the final call.
  *   `uploadMetadataContainer` (*type:* `String.t`, *default:* `nil`) - Metadata passed from Blobstore -> Scotty for a new GCS upload. This is a signed, serialized blobstore2.BlobMetadataContainer proto which must never be consumed outside of Bigstore, and is not applicable to non-GCS media uploads.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blobGeneration => String.t() | nil,
          :blobId => String.t() | nil,
          :downloadReadHandle => String.t() | nil,
          :readToken => String.t() | nil,
          :uploadMetadataContainer => String.t() | nil
        }

  field(:blobGeneration)
  field(:blobId)
  field(:downloadReadHandle)
  field(:readToken)
  field(:uploadMetadataContainer)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.Blobstore2Info do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.Blobstore2Info.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.Blobstore2Info do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end