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

defmodule GoogleApi.Workstations.V1.Model.PersistentDirectory do
  @moduledoc """
  A directory to persist across workstation sessions.

  ## Attributes

  *   `gcePd` (*type:* `GoogleApi.Workstations.V1.Model.GceRegionalPersistentDisk.t`, *default:* `nil`) - A PersistentDirectory backed by a Compute Engine persistent disk.
  *   `mountPath` (*type:* `String.t`, *default:* `nil`) - Optional. Location of this directory in the running workstation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gcePd => GoogleApi.Workstations.V1.Model.GceRegionalPersistentDisk.t() | nil,
          :mountPath => String.t() | nil
        }

  field(:gcePd, as: GoogleApi.Workstations.V1.Model.GceRegionalPersistentDisk)
  field(:mountPath)
end

defimpl Poison.Decoder, for: GoogleApi.Workstations.V1.Model.PersistentDirectory do
  def decode(value, options) do
    GoogleApi.Workstations.V1.Model.PersistentDirectory.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Workstations.V1.Model.PersistentDirectory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end