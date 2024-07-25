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

defmodule GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams do
  @moduledoc """
  [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This field is persisted and returned for instanceTemplate and not returned in the context of instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.

  ## Attributes

  *   `architecture` (*type:* `String.t`, *default:* `nil`) - The architecture of the attached disk. Valid values are arm64 or x86_64.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description. Provide this property when creating the disk.
  *   `diskName` (*type:* `String.t`, *default:* `nil`) - Specifies the disk name. If not specified, the default is to use the name of the instance. If a disk with the same name already exists in the given region, the existing disk is attached to the new instance and the new disk is not created.
  *   `diskSizeGb` (*type:* `String.t`, *default:* `nil`) - Specifies the size of the disk in base-2 GB. The size must be at least 10 GB. If you specify a sourceImage, which is required for boot disks, the default size is the size of the sourceImage. If you do not specify a sourceImage, the default disk size is 500 GB.
  *   `diskType` (*type:* `String.t`, *default:* `nil`) - Specifies the disk type to use to create the instance. If not specified, the default is pd-standard, specified using the full URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/pd-standard For a full list of acceptable values, see Persistent disk types. If you specify this field when creating a VM, you can provide either the full or partial URL. For example, the following values are valid: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /diskTypes/diskType - projects/project/zones/zone/diskTypes/diskType - zones/zone/diskTypes/diskType If you specify this field when creating or updating an instance template or all-instances configuration, specify the type of the disk, not the URL. For example: pd-standard.
  *   `enableConfidentialCompute` (*type:* `boolean()`, *default:* `nil`) - Whether this disk is using confidential compute mode.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  *   `licenses` (*type:* `list(String.t)`, *default:* `nil`) - A list of publicly visible licenses. Reserved for Google's use.
  *   `onUpdateAction` (*type:* `String.t`, *default:* `nil`) - Specifies which action to take on instance update with this disk. Default is to use the existing disk.
  *   `provisionedIops` (*type:* `String.t`, *default:* `nil`) - Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  *   `provisionedThroughput` (*type:* `String.t`, *default:* `nil`) - Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must greater than or equal to 1.
  *   `replicaZones` (*type:* `list(String.t)`, *default:* `nil`) - Required for each regional disk associated with the instance. Specify the URLs of the zones where the disk should be replicated to. You must provide exactly two replica zones, and one zone must be the same as the instance zone.
  *   `resourceManagerTags` (*type:* `map()`, *default:* `nil`) - Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  *   `resourcePolicies` (*type:* `list(String.t)`, *default:* `nil`) - Resource policies applied to this disk for automatic snapshot creations. Specified using the full or partial URL. For instance template, specify only the resource policy name.
  *   `sourceImage` (*type:* `String.t`, *default:* `nil`) - The source image to create this disk. When creating a new instance boot disk, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family If the source image is deleted later, this field will not be set.
  *   `sourceImageEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key. InstanceTemplate and InstancePropertiesPatch do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys.
  *   `sourceSnapshot` (*type:* `String.t`, *default:* `nil`) - The source snapshot to create this disk. When creating a new instance boot disk, one of initializeParams.sourceSnapshot or initializeParams.sourceImage or disks.source is required. To create a disk with a snapshot that you created, specify the snapshot name in the following format: global/snapshots/my-backup If the source snapshot is deleted later, this field will not be set.
  *   `sourceSnapshotEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - The customer-supplied encryption key of the source snapshot.
  *   `storagePool` (*type:* `String.t`, *default:* `nil`) - The storage pool in which the new disk is created. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /storagePools/storagePool - projects/project/zones/zone/storagePools/storagePool - zones/zone/storagePools/storagePool 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :architecture => String.t() | nil,
          :description => String.t() | nil,
          :diskName => String.t() | nil,
          :diskSizeGb => String.t() | nil,
          :diskType => String.t() | nil,
          :enableConfidentialCompute => boolean() | nil,
          :labels => map() | nil,
          :licenses => list(String.t()) | nil,
          :onUpdateAction => String.t() | nil,
          :provisionedIops => String.t() | nil,
          :provisionedThroughput => String.t() | nil,
          :replicaZones => list(String.t()) | nil,
          :resourceManagerTags => map() | nil,
          :resourcePolicies => list(String.t()) | nil,
          :sourceImage => String.t() | nil,
          :sourceImageEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t() | nil,
          :sourceSnapshot => String.t() | nil,
          :sourceSnapshotEncryptionKey =>
            GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t() | nil,
          :storagePool => String.t() | nil
        }

  field(:architecture)
  field(:description)
  field(:diskName)
  field(:diskSizeGb)
  field(:diskType)
  field(:enableConfidentialCompute)
  field(:labels, type: :map)
  field(:licenses, type: :list)
  field(:onUpdateAction)
  field(:provisionedIops)
  field(:provisionedThroughput)
  field(:replicaZones, type: :list)
  field(:resourceManagerTags, type: :map)
  field(:resourcePolicies, type: :list)
  field(:sourceImage)
  field(:sourceImageEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:sourceSnapshot)
  field(:sourceSnapshotEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:storagePool)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
