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

defmodule GoogleApi.Compute.V1.Model.Commitment do
  @moduledoc """
  Represents a regional resource-based commitment resource. Creating this commitment resource means that you are purchasing a resource-based committed use contract, with an explicit start and end time. You can purchase resource-based commitments for both hardware and software resources. For more information, read Resource-based committed use discounts

  ## Attributes

  *   `autoRenew` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to automatically renew the commitment at the end of its current term. The default value is false. If you set the field to true, each time your commitment reaches the end of its term, Compute Engine automatically renews it for another term. You can update this field anytime before the commitment expires. For example, if the commitment is set to expire at 12 AM UTC-8 on January 3, 2027, you can update this field until 11:59 PM UTC-8 on January 2, 2027.
  *   `category` (*type:* `String.t`, *default:* `nil`) - The category of the commitment; specifies whether the commitment is for hardware or software resources. Category MACHINE specifies that you are committing to hardware machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies that you are committing to software licenses, listed in licenseResources. Note that if you specify MACHINE commitments, then you must also specify a type to indicate the machine series of the hardware resource that you are committing to.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `customEndTimestamp` (*type:* `String.t`, *default:* `nil`) - [Input Only] Optional, specifies the requested commitment end time in RFC3339 text format. Use this option when the desired commitment's end date is later than the start date + term duration.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of the commitment. You can provide this property when you create the resource.
  *   `endTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Commitment end time in RFC3339 text format.
  *   `existingReservations` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#commitment`) - [Output Only] Type of the resource. Always compute#commitment for commitments.
  *   `licenseResource` (*type:* `GoogleApi.Compute.V1.Model.LicenseResourceCommitment.t`, *default:* `nil`) - The license specification required as part of a license commitment.
  *   `mergeSourceCommitments` (*type:* `list(String.t)`, *default:* `nil`) - The list of source commitments that you are merging to create the new merged commitment. For more information, see Merging commitments.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the commitment. You must specify a name when you purchase the commitment. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `plan` (*type:* `String.t`, *default:* `nil`) - The minimum time duration that you commit to purchasing resources. The plan that you choose determines the preset term length of the commitment (which is 1 year or 3 years) and affects the discount rate that you receive for your resources. Committing to a longer time duration typically gives you a higher discount rate. The supported values for this field are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the commitment and committed resources are located.
  *   `reservations` (*type:* `list(GoogleApi.Compute.V1.Model.Reservation.t)`, *default:* `nil`) - The list of new reservations that you want to create and attach to this commitment. You must attach reservations to your commitment if your commitment specifies any GPUs or Local SSD disks. For more information, see Attach reservations to resource-based commitments. Specify this property only if you want to create new reservations to attach. To attach existing reservations, specify the existingReservations property instead.
  *   `resourceStatus` (*type:* `GoogleApi.Compute.V1.Model.CommitmentResourceStatus.t`, *default:* `nil`) - [Output Only] Status information for Commitment resource.
  *   `resources` (*type:* `list(GoogleApi.Compute.V1.Model.ResourceCommitment.t)`, *default:* `nil`) - The list of all the hardware resources, with their types and amounts, that you want to commit to. Specify as a separate entry in the list for each individual resource type.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `splitSourceCommitment` (*type:* `String.t`, *default:* `nil`) - The source commitment from which you are transferring resources to create the new split commitment. For more information, see Split commitments.
  *   `startTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Commitment start time in RFC3339 text format.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] Status of the commitment with regards to eventual expiration (each commitment has an end date defined). Status can be one of the following values: NOT_YET_ACTIVE, ACTIVE, or EXPIRED.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional, human-readable explanation of the status.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of commitment; specifies the machine series for which you want to commit to purchasing resources. The choice of machine series affects the discount rate and the eligible resource types. The type must be one of the following: ACCELERATOR_OPTIMIZED, ACCELERATOR_OPTIMIZED_A3, ACCELERATOR_OPTIMIZED_A3_MEGA, COMPUTE_OPTIMIZED, COMPUTE_OPTIMIZED_C2D, COMPUTE_OPTIMIZED_C3, COMPUTE_OPTIMIZED_C3D, COMPUTE_OPTIMIZED_H3, GENERAL_PURPOSE, GENERAL_PURPOSE_C4, GENERAL_PURPOSE_E2, GENERAL_PURPOSE_N2, GENERAL_PURPOSE_N2D, GENERAL_PURPOSE_N4, GENERAL_PURPOSE_T2D, GRAPHICS_OPTIMIZED, MEMORY_OPTIMIZED, MEMORY_OPTIMIZED_M3, MEMORY_OPTIMIZED_X4, STORAGE_OPTIMIZED_Z3. For example, type MEMORY_OPTIMIZED specifies a commitment that applies only to eligible resources of memory optimized M1 and M2 machine series. Type GENERAL_PURPOSE specifies a commitment that applies only to eligible resources of general purpose N1 machine series.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoRenew => boolean() | nil,
          :category => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :customEndTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :endTimestamp => String.t() | nil,
          :existingReservations => list(String.t()) | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :licenseResource => GoogleApi.Compute.V1.Model.LicenseResourceCommitment.t() | nil,
          :mergeSourceCommitments => list(String.t()) | nil,
          :name => String.t() | nil,
          :plan => String.t() | nil,
          :region => String.t() | nil,
          :reservations => list(GoogleApi.Compute.V1.Model.Reservation.t()) | nil,
          :resourceStatus => GoogleApi.Compute.V1.Model.CommitmentResourceStatus.t() | nil,
          :resources => list(GoogleApi.Compute.V1.Model.ResourceCommitment.t()) | nil,
          :selfLink => String.t() | nil,
          :splitSourceCommitment => String.t() | nil,
          :startTimestamp => String.t() | nil,
          :status => String.t() | nil,
          :statusMessage => String.t() | nil,
          :type => String.t() | nil
        }

  field(:autoRenew)
  field(:category)
  field(:creationTimestamp)
  field(:customEndTimestamp)
  field(:description)
  field(:endTimestamp)
  field(:existingReservations, type: :list)
  field(:id)
  field(:kind)
  field(:licenseResource, as: GoogleApi.Compute.V1.Model.LicenseResourceCommitment)
  field(:mergeSourceCommitments, type: :list)
  field(:name)
  field(:plan)
  field(:region)
  field(:reservations, as: GoogleApi.Compute.V1.Model.Reservation, type: :list)
  field(:resourceStatus, as: GoogleApi.Compute.V1.Model.CommitmentResourceStatus)
  field(:resources, as: GoogleApi.Compute.V1.Model.ResourceCommitment, type: :list)
  field(:selfLink)
  field(:splitSourceCommitment)
  field(:startTimestamp)
  field(:status)
  field(:statusMessage)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Commitment do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Commitment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Commitment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
