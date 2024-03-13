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

defmodule GoogleApi.Notebooks.V2.Model.ResizeDiskRequest do
  @moduledoc """
  Request for resizing the notebook instance disks

  ## Attributes

  *   `bootDisk` (*type:* `GoogleApi.Notebooks.V2.Model.BootDisk.t`, *default:* `nil`) - Required. The boot disk to be resized. Only disk_size_gb will be used.
  *   `dataDisk` (*type:* `GoogleApi.Notebooks.V2.Model.DataDisk.t`, *default:* `nil`) - Required. The data disk to be resized. Only disk_size_gb will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bootDisk => GoogleApi.Notebooks.V2.Model.BootDisk.t() | nil,
          :dataDisk => GoogleApi.Notebooks.V2.Model.DataDisk.t() | nil
        }

  field(:bootDisk, as: GoogleApi.Notebooks.V2.Model.BootDisk)
  field(:dataDisk, as: GoogleApi.Notebooks.V2.Model.DataDisk)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V2.Model.ResizeDiskRequest do
  def decode(value, options) do
    GoogleApi.Notebooks.V2.Model.ResizeDiskRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V2.Model.ResizeDiskRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end