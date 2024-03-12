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

defmodule GoogleApi.CloudSearch.V1.Model.MessageAdded do
  @moduledoc """
  A message was added. Specifying id and initial labels.

  ## Attributes

  *   `attributeIds` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `labelIds` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `messageKey` (*type:* `GoogleApi.CloudSearch.V1.Model.MultiKey.t`, *default:* `nil`) - 
  *   `syncIds` (*type:* `list(integer())`, *default:* `nil`) - Note that there can be fewer sync ids than label ids.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeIds => list(String.t()) | nil,
          :labelIds => list(String.t()) | nil,
          :messageKey => GoogleApi.CloudSearch.V1.Model.MultiKey.t() | nil,
          :syncIds => list(integer()) | nil
        }

  field(:attributeIds, type: :list)
  field(:labelIds, type: :list)
  field(:messageKey, as: GoogleApi.CloudSearch.V1.Model.MultiKey)
  field(:syncIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.MessageAdded do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.MessageAdded.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.MessageAdded do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end