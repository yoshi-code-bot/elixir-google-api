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

defmodule GoogleApi.WalletObjects.V1.Model.Image do
  @moduledoc """
  Wrapping type for Google hosted images.

  ## Attributes

  *   `contentDescription` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Description of the image used for accessibility.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#image"`.
  *   `sourceUri` (*type:* `GoogleApi.WalletObjects.V1.Model.ImageUri.t`, *default:* `nil`) - The URI for the image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentDescription => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :kind => String.t() | nil,
          :sourceUri => GoogleApi.WalletObjects.V1.Model.ImageUri.t() | nil
        }

  field(:contentDescription, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:kind)
  field(:sourceUri, as: GoogleApi.WalletObjects.V1.Model.ImageUri)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.Image do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.Image.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
