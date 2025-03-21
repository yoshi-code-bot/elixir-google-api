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

defmodule GoogleApi.CivicInfo.V2.Model.CivicinfoSchemaV2GeographicDivision do
  @moduledoc """
  Describes a political geography.

  ## Attributes

  *   `alsoKnownAs` (*type:* `list(String.t)`, *default:* `nil`) - Any other valid OCD IDs that refer to the same division.\\n\\nBecause OCD IDs are meant to be human-readable and at least somewhat predictable, there are occasionally several identifiers for a single division. These identifiers are defined to be equivalent to one another, and one is always indicated as the primary identifier. The primary identifier will be returned in ocd_id above, and any other equivalent valid identifiers will be returned in this list.\\n\\nFor example, if this division's OCD ID is ocd-division/country:us/district:dc, this will contain ocd-division/country:us/state:dc.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the division.
  *   `officeIndices` (*type:* `list(integer())`, *default:* `nil`) - List of indices in the offices array, one for each office elected from this division. Will only be present if includeOffices was true (or absent) in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alsoKnownAs => list(String.t()) | nil,
          :name => String.t() | nil,
          :officeIndices => list(integer()) | nil
        }

  field(:alsoKnownAs, type: :list)
  field(:name)
  field(:officeIndices, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.CivicinfoSchemaV2GeographicDivision do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.CivicinfoSchemaV2GeographicDivision.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.CivicinfoSchemaV2GeographicDivision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
