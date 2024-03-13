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

defmodule GoogleApi.ContentWarehouse.V1.Model.ImageContentFlowProtoProd do
  @moduledoc """
  The subset of FlowProto that we want to go into production AND be stored in ContentSignals.

  ## Attributes

  *   `starburst` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImageContentStarburstVersionGroup.t)`, *default:* `nil`) - Repeated so that multiple versions can exist in prod simultaneously.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :starburst =>
            list(GoogleApi.ContentWarehouse.V1.Model.ImageContentStarburstVersionGroup.t()) | nil
        }

  field(:starburst,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageContentStarburstVersionGroup,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.ImageContentFlowProtoProd do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ImageContentFlowProtoProd.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.ImageContentFlowProtoProd do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
