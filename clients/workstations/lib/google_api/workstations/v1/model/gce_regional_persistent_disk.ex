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

defmodule GoogleApi.Workstations.V1.Model.GceRegionalPersistentDisk do
  @moduledoc """
  A Persistent Directory backed by a Compute Engine regional persistent disk. The persistent_directories field is repeated, but it may contain only one entry. It creates a [persistent disk](https://cloud.google.com/compute/docs/disks/persistent-disks) that mounts to the workstation VM at `/home` when the session starts and detaches when the session ends. If this field is empty, workstations created with this configuration do not have a persistent home directory.

  ## Attributes

  *   `diskType` (*type:* `String.t`, *default:* `nil`) - Optional. The [type of the persistent disk](https://cloud.google.com/compute/docs/disks#disk-types) for the home directory. Defaults to `"pd-standard"`.
  *   `fsType` (*type:* `String.t`, *default:* `nil`) - Optional. Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if source_snapshot is set. Defaults to `"ext4"`.
  *   `reclaimPolicy` (*type:* `String.t`, *default:* `nil`) - Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
  *   `sizeGb` (*type:* `integer()`, *default:* `nil`) - Optional. The GB capacity of a persistent home directory for each workstation created with this configuration. Must be empty if source_snapshot is set. Valid values are `10`, `50`, `100`, `200`, `500`, or `1000`. Defaults to `200`. If less than `200` GB, the disk_type must be `"pd-balanced"` or `"pd-ssd"`.
  *   `sourceSnapshot` (*type:* `String.t`, *default:* `nil`) - Optional. Name of the snapshot to use as the source for the disk. If set, size_gb and fs_type must be empty. Must be formatted as ext4 file system with no partitions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :diskType => String.t() | nil,
          :fsType => String.t() | nil,
          :reclaimPolicy => String.t() | nil,
          :sizeGb => integer() | nil,
          :sourceSnapshot => String.t() | nil
        }

  field(:diskType)
  field(:fsType)
  field(:reclaimPolicy)
  field(:sizeGb)
  field(:sourceSnapshot)
end

defimpl Poison.Decoder, for: GoogleApi.Workstations.V1.Model.GceRegionalPersistentDisk do
  def decode(value, options) do
    GoogleApi.Workstations.V1.Model.GceRegionalPersistentDisk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Workstations.V1.Model.GceRegionalPersistentDisk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
