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

defmodule GoogleApi.MigrationCenter.V1.Model.DiskPartition do
  @moduledoc """
  Disk Partition details.

  ## Attributes

  *   `capacityBytes` (*type:* `String.t`, *default:* `nil`) - Partition capacity.
  *   `fileSystem` (*type:* `String.t`, *default:* `nil`) - Partition file system.
  *   `freeBytes` (*type:* `String.t`, *default:* `nil`) - Partition free space.
  *   `mountPoint` (*type:* `String.t`, *default:* `nil`) - Mount pount (Linux/Windows) or drive letter (Windows).
  *   `subPartitions` (*type:* `GoogleApi.MigrationCenter.V1.Model.DiskPartitionList.t`, *default:* `nil`) - Sub-partitions.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Partition type.
  *   `uuid` (*type:* `String.t`, *default:* `nil`) - Partition UUID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :capacityBytes => String.t() | nil,
          :fileSystem => String.t() | nil,
          :freeBytes => String.t() | nil,
          :mountPoint => String.t() | nil,
          :subPartitions => GoogleApi.MigrationCenter.V1.Model.DiskPartitionList.t() | nil,
          :type => String.t() | nil,
          :uuid => String.t() | nil
        }

  field(:capacityBytes)
  field(:fileSystem)
  field(:freeBytes)
  field(:mountPoint)
  field(:subPartitions, as: GoogleApi.MigrationCenter.V1.Model.DiskPartitionList)
  field(:type)
  field(:uuid)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.DiskPartition do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.DiskPartition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.DiskPartition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
