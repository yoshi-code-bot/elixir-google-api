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

defmodule GoogleApi.VMMigration.V1.Model.VmwareDiskDetails do
  @moduledoc """
  The details of a Vmware VM disk.

  ## Attributes

  *   `diskNumber` (*type:* `integer()`, *default:* `nil`) - Output only. The ordinal number of the disk.
  *   `label` (*type:* `String.t`, *default:* `nil`) - Output only. The disk label.
  *   `sizeGb` (*type:* `String.t`, *default:* `nil`) - Output only. Size in GB.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :diskNumber => integer() | nil,
          :label => String.t() | nil,
          :sizeGb => String.t() | nil
        }

  field(:diskNumber)
  field(:label)
  field(:sizeGb)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.VmwareDiskDetails do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.VmwareDiskDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.VmwareDiskDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
