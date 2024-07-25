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

defmodule GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1CryptoKey do
  @moduledoc """
  A CryptoKey represents a logical key that can be used for cryptographic operations. A CryptoKey is made up of zero or more versions, which represent the actual key material used in cryptographic operations.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this CryptoKey was created.
  *   `cryptoKeyBackend` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format `projects/*/locations/*/ekmConnections/*`. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future.
  *   `destroyScheduledDuration` (*type:* `String.t`, *default:* `nil`) - Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 30 days.
  *   `importOnly` (*type:* `boolean()`, *default:* `nil`) - Immutable. Whether this key may contain imported versions only.
  *   `keyAccessJustificationsPolicy` (*type:* `GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1KeyAccessJustificationsPolicy.t`, *default:* `nil`) - Optional. The policy used for Key Access Justifications Policy Enforcement. If this field is present and this key is enrolled in Key Access Justifications Policy Enforcement, the policy will be evaluated in encrypt, decrypt, and sign operations, and the operation will fail if rejected by the policy. The policy is defined by specifying zero or more allowed justification codes. https://cloud.google.com/assured-workloads/key-access-justifications/docs/justification-codes By default, this field is absent, and all justification codes are allowed.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  *   `nextRotationTime` (*type:* `DateTime.t`, *default:* `nil`) - At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  *   `primary` (*type:* `GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1CryptoKeyVersion.t`, *default:* `nil`) - Output only. A copy of the "primary" CryptoKeyVersion that will be used by Encrypt when this CryptoKey is given in EncryptRequest.name. The CryptoKey's primary version can be updated via UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be omitted.
  *   `purpose` (*type:* `String.t`, *default:* `nil`) - Immutable. The immutable purpose of this CryptoKey.
  *   `rotationPeriod` (*type:* `String.t`, *default:* `nil`) - next_rotation_time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation_period is set, next_rotation_time must also be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.
  *   `versionTemplate` (*type:* `GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1CryptoKeyVersionTemplate.t`, *default:* `nil`) - A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :cryptoKeyBackend => String.t() | nil,
          :destroyScheduledDuration => String.t() | nil,
          :importOnly => boolean() | nil,
          :keyAccessJustificationsPolicy =>
            GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1KeyAccessJustificationsPolicy.t()
            | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :nextRotationTime => DateTime.t() | nil,
          :primary => GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1CryptoKeyVersion.t() | nil,
          :purpose => String.t() | nil,
          :rotationPeriod => String.t() | nil,
          :versionTemplate =>
            GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1CryptoKeyVersionTemplate.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:cryptoKeyBackend)
  field(:destroyScheduledDuration)
  field(:importOnly)

  field(:keyAccessJustificationsPolicy,
    as: GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1KeyAccessJustificationsPolicy
  )

  field(:labels, type: :map)
  field(:name)
  field(:nextRotationTime, as: DateTime)
  field(:primary, as: GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1CryptoKeyVersion)
  field(:purpose)
  field(:rotationPeriod)

  field(:versionTemplate,
    as: GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1CryptoKeyVersionTemplate
  )
end

defimpl Poison.Decoder, for: GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1CryptoKey do
  def decode(value, options) do
    GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1CryptoKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1CryptoKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
