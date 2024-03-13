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

defmodule GoogleApi.MigrationCenter.V1.Model.PhysicalPlatformDetails do
  @moduledoc """
  Platform specific details for Physical Machines.

  ## Attributes

  *   `location` (*type:* `String.t`, *default:* `nil`) - Free text representation of the machine location. The format of this field should not be relied on. Different machines in the same location may have different string values for this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :location => String.t() | nil
        }

  field(:location)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.PhysicalPlatformDetails do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.PhysicalPlatformDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.PhysicalPlatformDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
