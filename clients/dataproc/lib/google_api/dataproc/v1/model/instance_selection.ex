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

defmodule GoogleApi.Dataproc.V1.Model.InstanceSelection do
  @moduledoc """
  Defines machines types and a rank to which the machines types belong.

  ## Attributes

  *   `machineTypes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Full machine-type names, e.g. "n1-standard-16".
  *   `rank` (*type:* `integer()`, *default:* `nil`) - Optional. Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :machineTypes => list(String.t()) | nil,
          :rank => integer() | nil
        }

  field(:machineTypes, type: :list)
  field(:rank)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.InstanceSelection do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.InstanceSelection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.InstanceSelection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end