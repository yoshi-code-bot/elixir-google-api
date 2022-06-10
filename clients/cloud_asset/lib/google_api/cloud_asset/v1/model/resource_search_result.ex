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

defmodule GoogleApi.CloudAsset.V1.Model.ResourceSearchResult do
  @moduledoc """
  A result of Resource Search, containing information of a cloud resource. Next ID: 28

  ## Attributes

  *   `additionalAttributes` (*type:* `map()`, *default:* `nil`) - The additional searchable attributes of this resource. The attributes may vary from one resource type to another. Examples: `projectId` for Project, `dnsName` for DNS ManagedZone. This field contains a subset of the resource metadata fields that are returned by the List or Get APIs provided by the corresponding GCP service (e.g., Compute Engine). see [API references and supported searchable attributes](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types) to see which fields are included. You can search values of these fields through free text search. However, you should not consume the field programically as the field names and values may change as the GCP service updates to a new incompatible API version. To search against the `additional_attributes`: * use a free text query to match the attributes values. Example: to search `additional_attributes = { dnsName: "foobar" }`, you can issue a query `foobar`.
  *   `assetType` (*type:* `String.t`, *default:* `nil`) - The type of this resource. Example: `compute.googleapis.com/Disk`. To search against the `asset_type`: * specify the `asset_type` field in your search request.
  *   `attachedResources` (*type:* `list(GoogleApi.CloudAsset.V1.Model.AttachedResource.t)`, *default:* `nil`) - Attached resources of this resource. For example, an OSConfig Inventory is an attached resource of a Compute Instance. This field is repeated because a resource could have multiple attached resources. This `attached_resources` field is not searchable. Some attributes of the attached resources are exposed in `additional_attributes` field, so as to allow users to search on them.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The create timestamp of this resource, at which the resource was created. The granularity is in seconds. Timestamp.nanos will always be 0. This field is available only when the resource's Protobuf contains it. To search against `create_time`: * use a field query. - value in seconds since unix epoch. Example: `createTime > 1609459200` - value in date string. Example: `createTime > 2021-01-01` - value in date-time string (must be quoted). Example: `createTime > "2021-01-01T00:00:00"`
  *   `description` (*type:* `String.t`, *default:* `nil`) - One or more paragraphs of text description of this resource. Maximum length could be up to 1M bytes. This field is available only when the resource's Protobuf contains it. To search against the `description`: * use a field query. Example: `description:"important instance"` * use a free text query. Example: `"important instance"`
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of this resource. This field is available only when the resource's Protobuf contains it. To search against the `display_name`: * use a field query. Example: `displayName:"My Instance"` * use a free text query. Example: `"My Instance"`
  *   `folders` (*type:* `list(String.t)`, *default:* `nil`) - The folder(s) that this resource belongs to, in the form of folders/{FOLDER_NUMBER}. This field is available when the resource belongs to one or more folders. To search against `folders`: * use a field query. Example: `folders:(123 OR 456)` * use a free text query. Example: `123` * specify the `scope` field as this folder in your search request.
  *   `kmsKey` (*type:* `String.t`, *default:* `nil`) - The Cloud KMS [CryptoKey](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys) name or [CryptoKeyVersion](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions) name. This field is available only when the resource's Protobuf contains it. To search against the `kms_key`: * use a field query. Example: `kmsKey:key` * use a free text query. Example: `key`
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels associated with this resource. See [Labelling and grouping GCP resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources) for more information. This field is available only when the resource's Protobuf contains it. To search against the `labels`: * use a field query: - query on any label's key or value. Example: `labels:prod` - query by a given label. Example: `labels.env:prod` - query by a given label's existence. Example: `labels.env:*` * use a free text query. Example: `prod`
  *   `location` (*type:* `String.t`, *default:* `nil`) - Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`. This field is available only when the resource's Protobuf contains it. To search against the `location`: * use a field query. Example: `location:us-west*` * use a free text query. Example: `us-west*`
  *   `name` (*type:* `String.t`, *default:* `nil`) - The full resource name of this resource. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`. See [Cloud Asset Inventory Resource Name Format](https://cloud.google.com/asset-inventory/docs/resource-name-format) for more information. To search against the `name`: * use a field query. Example: `name:instance1` * use a free text query. Example: `instance1`
  *   `networkTags` (*type:* `list(String.t)`, *default:* `nil`) - Network tags associated with this resource. Like labels, network tags are a type of annotations used to group GCP resources. See [Labelling GCP resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources) for more information. This field is available only when the resource's Protobuf contains it. To search against the `network_tags`: * use a field query. Example: `networkTags:internal` * use a free text query. Example: `internal`
  *   `organization` (*type:* `String.t`, *default:* `nil`) - The organization that this resource belongs to, in the form of organizations/{ORGANIZATION_NUMBER}. This field is available when the resource belongs to an organization. To search against `organization`: * use a field query. Example: `organization:123` * use a free text query. Example: `123` * specify the `scope` field as this organization in your search request.
  *   `parentAssetType` (*type:* `String.t`, *default:* `nil`) - The type of this resource's immediate parent, if there is one. To search against the `parent_asset_type`: * use a field query. Example: `parentAssetType:"cloudresourcemanager.googleapis.com/Project"` * use a free text query. Example: `cloudresourcemanager.googleapis.com/Project`
  *   `parentFullResourceName` (*type:* `String.t`, *default:* `nil`) - The full resource name of this resource's parent, if it has one. To search against the `parent_full_resource_name`: * use a field query. Example: `parentFullResourceName:"project-name"` * use a free text query. Example: `project-name`
  *   `project` (*type:* `String.t`, *default:* `nil`) - The project that this resource belongs to, in the form of projects/{PROJECT_NUMBER}. This field is available when the resource belongs to a project. To search against `project`: * use a field query. Example: `project:12345` * use a free text query. Example: `12345` * specify the `scope` field as this project in your search request.
  *   `relationships` (*type:* `%{optional(String.t) => GoogleApi.CloudAsset.V1.Model.RelatedResources.t}`, *default:* `nil`) - A map of related resources of this resource, keyed by the relationship type. A relationship type is in the format of {SourceType}_{ACTION}_{DestType}. Example: `DISK_TO_INSTANCE`, `DISK_TO_NETWORK`, `INSTANCE_TO_INSTANCEGROUP`. See [supported relationship types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#supported_relationship_types).
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of this resource. Different resources types have different state definitions that are mapped from various fields of different resource types. This field is available only when the resource's Protobuf contains it. Example: If the resource is an instance provided by Compute Engine, its state will include PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED. See `status` definition in [API Reference](https://cloud.google.com/compute/docs/reference/rest/v1/instances). If the resource is a project provided by Cloud Resource Manager, its state will include LIFECYCLE_STATE_UNSPECIFIED, ACTIVE, DELETE_REQUESTED and DELETE_IN_PROGRESS. See `lifecycleState` definition in [API Reference](https://cloud.google.com/resource-manager/reference/rest/v1/projects). To search against the `state`: * use a field query. Example: `state:RUNNING` * use a free text query. Example: `RUNNING`
  *   `tagKeys` (*type:* `list(String.t)`, *default:* `nil`) - TagKey namespaced names, in the format of {ORG_ID}/{TAG_KEY_SHORT_NAME}. To search against the `tagKeys`: * use a field query. Example: - `tagKeys:"123456789/env*"` - `tagKeys="123456789/env"` - `tagKeys:"env"` * use a free text query. Example: - `env`
  *   `tagValueIds` (*type:* `list(String.t)`, *default:* `nil`) - TagValue IDs, in the format of tagValues/{TAG_VALUE_ID}. To search against the `tagValueIds`: * use a field query. Example: - `tagValueIds:"456"` - `tagValueIds="tagValues/456"` * use a free text query. Example: - `456`
  *   `tagValues` (*type:* `list(String.t)`, *default:* `nil`) - TagValue namespaced names, in the format of {ORG_ID}/{TAG_KEY_SHORT_NAME}/{TAG_VALUE_SHORT_NAME}. To search against the `tagValues`: * use a field query. Example: - `tagValues:"env"` - `tagValues:"env/prod"` - `tagValues:"123456789/env/prod*"` - `tagValues="123456789/env/prod"` * use a free text query. Example: - `prod`
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The last update timestamp of this resource, at which the resource was last modified or deleted. The granularity is in seconds. Timestamp.nanos will always be 0. This field is available only when the resource's Protobuf contains it. To search against `update_time`: * use a field query. - value in seconds since unix epoch. Example: `updateTime < 1609459200` - value in date string. Example: `updateTime < 2021-01-01` - value in date-time string (must be quoted). Example: `updateTime < "2021-01-01T00:00:00"`
  *   `versionedResources` (*type:* `list(GoogleApi.CloudAsset.V1.Model.VersionedResource.t)`, *default:* `nil`) - Versioned resource representations of this resource. This is repeated because there could be multiple versions of resource representations during version migration. This `versioned_resources` field is not searchable. Some attributes of the resource representations are exposed in `additional_attributes` field, so as to allow users to search on them.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalAttributes => map() | nil,
          :assetType => String.t() | nil,
          :attachedResources => list(GoogleApi.CloudAsset.V1.Model.AttachedResource.t()) | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :folders => list(String.t()) | nil,
          :kmsKey => String.t() | nil,
          :labels => map() | nil,
          :location => String.t() | nil,
          :name => String.t() | nil,
          :networkTags => list(String.t()) | nil,
          :organization => String.t() | nil,
          :parentAssetType => String.t() | nil,
          :parentFullResourceName => String.t() | nil,
          :project => String.t() | nil,
          :relationships =>
            %{optional(String.t()) => GoogleApi.CloudAsset.V1.Model.RelatedResources.t()} | nil,
          :state => String.t() | nil,
          :tagKeys => list(String.t()) | nil,
          :tagValueIds => list(String.t()) | nil,
          :tagValues => list(String.t()) | nil,
          :updateTime => DateTime.t() | nil,
          :versionedResources => list(GoogleApi.CloudAsset.V1.Model.VersionedResource.t()) | nil
        }

  field(:additionalAttributes, type: :map)
  field(:assetType)
  field(:attachedResources, as: GoogleApi.CloudAsset.V1.Model.AttachedResource, type: :list)
  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:folders, type: :list)
  field(:kmsKey)
  field(:labels, type: :map)
  field(:location)
  field(:name)
  field(:networkTags, type: :list)
  field(:organization)
  field(:parentAssetType)
  field(:parentFullResourceName)
  field(:project)
  field(:relationships, as: GoogleApi.CloudAsset.V1.Model.RelatedResources, type: :map)
  field(:state)
  field(:tagKeys, type: :list)
  field(:tagValueIds, type: :list)
  field(:tagValues, type: :list)
  field(:updateTime, as: DateTime)
  field(:versionedResources, as: GoogleApi.CloudAsset.V1.Model.VersionedResource, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.ResourceSearchResult do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.ResourceSearchResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.ResourceSearchResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
