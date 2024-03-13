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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata do
  @moduledoc """
  Metadata for a single Person field. See go/understanding-merged-person

  ## Attributes

  *   `aclChoices` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiFieldAcl.t)`, *default:* `nil`) - When the container is PROFILE/DOMAIN_PROFILE and the profile owner is the requester, this read-only, synthesized field indicates which ACLs the user is allowed to set on the profile field. This is distinct from field_acl, which is the field's currently set ACL. field_acl will always be a valid ACL choice, except for the case of default synthesized profile fields like monogram profile photos. For those, field_acl does not represent a user-set field ACL, so it may or may not be a valid choice. In all cases, default_acl_choice will always be a valid choice. This is currently only populated on the photo field when the "person.photo.metadata.acl_choices" mask is set.
  *   `additionalContainerInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAdditionalContainerInfo.t`, *default:* `nil`) - Additional information about the container of this field.
  *   `affinity` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAffinity.t)`, *default:* `nil`) - For field-level affinity scores. The affinity between the requester and this particular field in the Person (e.g., frequency of calling a particular phone number).
  *   `contactVisibility` (*type:* `list(String.t)`, *default:* `nil`) - Each field can have different visibility settings Only returned when explicitly requested.
  *   `container` (*type:* `String.t`, *default:* `nil`) - DEPRECATED. Use container_type instead. Having the Container be an enum at the PFM message level causes circular dependency when other types try to refer to it. It breaks javascript build targets.
  *   `containerId` (*type:* `String.t`, *default:* `nil`) - DEPRECATED. Use encoded_container_id instead. The numeric id of the data source. The id is only unique within a single container type. This is only set when the id of the container is numeric, e.g. contact id.
  *   `containerPrimary` (*type:* `boolean()`, *default:* `nil`) - Indicates if this field is the primary field for the container and container_id.
  *   `containerType` (*type:* `String.t`, *default:* `nil`) - The source for the data in the field.
  *   `crossDeviceAllowed` (*type:* `boolean()`, *default:* `nil`) - True if this field can be used on other devices than the one it originated from. Assigned by the server. Currently only used for device contacts.
  *   `defaultAclChoice` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiFieldAcl.t`, *default:* `nil`) - When the container is PROFILE/DOMAIN_PROFILE and the profile owner is the requester, this read-only, synthesized field contains the default ACL choice. This can be used to select a preferred choice from acl_choices. Generally, default_acl_choice should only be preferred for default synthesized profile fields like monogram profile photos. Otherwise, the existing field_acl should be preferred. This is currently only populated on the photo field when the "person.photo.metadata.acl_choices" mask is set.
  *   `deprecatedContactContainerId` (*type:* `String.t`, *default:* `nil`) - DEPRECATED. Use container_id. Not populated or used at all.
  *   `edgeKey` (*type:* `boolean()`, *default:* `nil`) - Field is an edge key for this person. Modifying it breaks the link between data sources. This is equivalent to edge_key_info having at least one entry with materialized = true.
  *   `edgeKeyInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiEdgeKeyInfo.t)`, *default:* `nil`) - Edges that this field creates. This includes all edges and not necessarily just the edge relevant to the joined entities.
  *   `encodedContainerId` (*type:* `String.t`, *default:* `nil`) - The encoded id of the data source. The id is only unique within a single container type. This field correlates to person.metadata.identity_info.source_id.id. This field may not be populated in some special cases, where the id is not visible to the querying user. e.g. ListAutocompletions with full phone number query. For value format, see google3/social/graph/api/proto/main_merged_person.proto?q=symbol:SourceIdentity.id
  *   `fieldAcl` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiFieldAcl.t`, *default:* `nil`) - When the container is PROFILE and the profile owner is the requester, this field indicates how the profile field is accessible.
  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Indicates the time that the field was added or last edited. Currently this is populated for: (1) person.birthday with ContainerType PROFILE, DOMAIN_PROFILE or ACCOUNT. (2) person.name, person.address, person.relation, person.email and person.phone with ContainerType CONTACT_ANNOTATION;
  *   `matchingInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiMatchInfo.t)`, *default:* `nil`) - The matching informations if there was a query against this field.
  *   `otherDedupedContainers` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiDedupedContainerInfo.t)`, *default:* `nil`) - When deduping fields by value, list of containers of the fields that where deduped.
  *   `primary` (*type:* `boolean()`, *default:* `nil`) - If true, indicates this field is the Person's primary field eg. Contact, and (Profile) Person could have different Name fields, and the Name represented by the Person is primary. For selecting a primary field from RepeatedFields within a Person, use container_primary.
  *   `productMetadata` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiProductMetadata.t)`, *default:* `nil`) - The product(s) that generated the data in this field. Empty is equivalent to DEFAULT. ST_USER_METADATA
  *   `verified` (*type:* `boolean()`, *default:* `nil`) - Indicates whether this is a verified field. It is synthesized from verification and is read-only. If there is at least one verification with status PASSED, the field is considered verified. Currently this is applicable to address, email, name, and phone for PROFILE and DOMAIN_PROFILE. Use .metadata.verified in the request mask.
  *   `visibility` (*type:* `String.t`, *default:* `nil`) - Currently, only people.get may set this value
  *   `writeable` (*type:* `boolean()`, *default:* `nil`) - Whether the field is writeable to the requester.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aclChoices =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiFieldAcl.t()
            )
            | nil,
          :additionalContainerInfo =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAdditionalContainerInfo.t()
            | nil,
          :affinity =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAffinity.t()
            )
            | nil,
          :contactVisibility => list(String.t()) | nil,
          :container => String.t() | nil,
          :containerId => String.t() | nil,
          :containerPrimary => boolean() | nil,
          :containerType => String.t() | nil,
          :crossDeviceAllowed => boolean() | nil,
          :defaultAclChoice =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiFieldAcl.t()
            | nil,
          :deprecatedContactContainerId => String.t() | nil,
          :edgeKey => boolean() | nil,
          :edgeKeyInfo =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiEdgeKeyInfo.t()
            )
            | nil,
          :encodedContainerId => String.t() | nil,
          :fieldAcl =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiFieldAcl.t()
            | nil,
          :lastUpdateTime => DateTime.t() | nil,
          :matchingInfo =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiMatchInfo.t()
            )
            | nil,
          :otherDedupedContainers =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiDedupedContainerInfo.t()
            )
            | nil,
          :primary => boolean() | nil,
          :productMetadata =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiProductMetadata.t()
            )
            | nil,
          :verified => boolean() | nil,
          :visibility => String.t() | nil,
          :writeable => boolean() | nil
        }

  field(:aclChoices,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiFieldAcl,
    type: :list
  )

  field(:additionalContainerInfo,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAdditionalContainerInfo
  )

  field(:affinity,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAffinity,
    type: :list
  )

  field(:contactVisibility, type: :list)
  field(:container)
  field(:containerId)
  field(:containerPrimary)
  field(:containerType)
  field(:crossDeviceAllowed)

  field(:defaultAclChoice,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiFieldAcl
  )

  field(:deprecatedContactContainerId)
  field(:edgeKey)

  field(:edgeKeyInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiEdgeKeyInfo,
    type: :list
  )

  field(:encodedContainerId)

  field(:fieldAcl,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiFieldAcl
  )

  field(:lastUpdateTime, as: DateTime)

  field(:matchingInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiMatchInfo,
    type: :list
  )

  field(:otherDedupedContainers,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiDedupedContainerInfo,
    type: :list
  )

  field(:primary)

  field(:productMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiProductMetadata,
    type: :list
  )

  field(:verified)
  field(:visibility)
  field(:writeable)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
