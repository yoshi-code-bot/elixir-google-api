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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityQrewriteAccountProvenanceGoogleAccount do
  @moduledoc """
  The Google account the annotated personal data belongs to.

  ## Attributes

  *   `email` (*type:* `String.t`, *default:* `nil`) - 
  *   `gaiaId` (*type:* `String.t`, *default:* `nil`) - 
  *   `isDasherAccount` (*type:* `boolean()`, *default:* `nil`) - 
  *   `isSecondaryAccount` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t() | nil,
          :gaiaId => String.t() | nil,
          :isDasherAccount => boolean() | nil,
          :isSecondaryAccount => boolean() | nil
        }

  field(:email)
  field(:gaiaId)
  field(:isDasherAccount)
  field(:isSecondaryAccount)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityQrewriteAccountProvenanceGoogleAccount do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityQrewriteAccountProvenanceGoogleAccount.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityQrewriteAccountProvenanceGoogleAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
