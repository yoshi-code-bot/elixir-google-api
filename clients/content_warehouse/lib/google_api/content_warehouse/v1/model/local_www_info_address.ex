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

defmodule GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfoAddress do
  @moduledoc """
  These are the addresses, phone numbers, and opening hours related to this document, or the local businesses mentioned on this document. We currently populate these fields from web extractions, i.e, from the data present explicitly on the document, but in future, they can also be filled with data coming from the local index. We populate addresses and phone numbers only if there are <= 4 addresses and phone numbers on the document, respectively. This is primarily for space reasons. 

  ## Attributes

  *   `addrFprint` (*type:* `String.t`, *default:* `nil`) - 
  *   `address` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreAddressProto.t`, *default:* `nil`) - 
  *   `latE7` (*type:* `integer()`, *default:* `nil`) - 
  *   `lngE7` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addrFprint => String.t() | nil,
          :address => GoogleApi.ContentWarehouse.V1.Model.GeostoreAddressProto.t() | nil,
          :latE7 => integer() | nil,
          :lngE7 => integer() | nil
        }

  field(:addrFprint)
  field(:address, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreAddressProto)
  field(:latE7)
  field(:lngE7)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfoAddress do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfoAddress.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfoAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end