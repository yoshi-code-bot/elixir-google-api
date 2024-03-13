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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SpecialistPool do
  @moduledoc """
  SpecialistPool represents customers' own workforce to work on their data labeling jobs. It includes a group of specialist managers and workers. Managers are responsible for managing the workers in this pool as well as customers' data labeling jobs associated with this pool. Customers create specialist pool as well as start data labeling jobs on Cloud, managers and workers handle the jobs using CrowdCompute console.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the SpecialistPool.
  *   `pendingDataLabelingJobs` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The resource name of the pending data labeling jobs.
  *   `specialistManagerEmails` (*type:* `list(String.t)`, *default:* `nil`) - The email addresses of the managers in the SpecialistPool.
  *   `specialistManagersCount` (*type:* `integer()`, *default:* `nil`) - Output only. The number of managers in this SpecialistPool.
  *   `specialistWorkerEmails` (*type:* `list(String.t)`, *default:* `nil`) - The email addresses of workers in the SpecialistPool.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :pendingDataLabelingJobs => list(String.t()) | nil,
          :specialistManagerEmails => list(String.t()) | nil,
          :specialistManagersCount => integer() | nil,
          :specialistWorkerEmails => list(String.t()) | nil
        }

  field(:displayName)
  field(:name)
  field(:pendingDataLabelingJobs, type: :list)
  field(:specialistManagerEmails, type: :list)
  field(:specialistManagersCount)
  field(:specialistWorkerEmails, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SpecialistPool do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SpecialistPool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SpecialistPool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end