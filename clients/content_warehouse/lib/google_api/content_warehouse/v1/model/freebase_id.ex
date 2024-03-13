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

defmodule GoogleApi.ContentWarehouse.V1.Model.FreebaseId do
  @moduledoc """
  An Id contains the identifiers used to reference this topic (entity) in the Knowledge Graph. The Knowledge Graph supports several forms of identifiers: - "mids" (machine ids) that are assigned at creation time, and support a resolution mechanism that tracks topics after they are merged (for more about mids, see go/kg-mid), - "ids" are human-readable ids (HRIDs) that are derived from a namespace hierarchy stored in Knowledge Graph, and a set of rules, - "guids" are low-level ids historically used in Freebase (pre-Knowledge Graph, deprecated). Only the mid and id are supplied here. Note that mids can be converted to guids or uint64s (see //metaweb/util/mid/mid.h).

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - "id" may be a human readable ID (HRID) or a MID. Originally it was intended to always be a human readable ID, but that convention was not always followed so clients should be wary. Not every topic has an id.
  *   `mid` (*type:* `String.t`, *default:* `nil`) - The "mid" should be used whenever a globally unique, primary key into the Knowledge Graph is needed. These keys are always prefixed with the "/m" and "/g", (and more rarely the "/x" and "/t") namespaces, and are alphanumeric strings consisting of lowercase letters excluding vowels, numbers and the underscore character. (Applications should not assume a constant length for these strings as Livegraph reserves the right to extend the number of characters to accommodate more topics.)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :mid => String.t() | nil
        }

  field(:id)
  field(:mid)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.FreebaseId do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.FreebaseId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.FreebaseId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
