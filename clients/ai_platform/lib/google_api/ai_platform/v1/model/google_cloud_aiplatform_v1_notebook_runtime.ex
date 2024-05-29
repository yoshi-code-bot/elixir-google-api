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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookRuntime do
  @moduledoc """
  A runtime is a virtual machine allocated to a particular user for a particular Notebook file on temporary basis with lifetime limited to 24 hours.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this NotebookRuntime was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the NotebookRuntime.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the NotebookRuntime. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  *   `expirationTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this NotebookRuntime will be expired: 1. System Predefined NotebookRuntime: 24 hours after creation. After expiration, system predifined runtime will be deleted. 2. User created NotebookRuntime: 6 months after last upgrade. After expiration, user created runtime will be stopped and allowed for upgrade.
  *   `healthState` (*type:* `String.t`, *default:* `nil`) - Output only. The health state of the NotebookRuntime.
  *   `idleShutdownConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookIdleShutdownConfig.t`, *default:* `nil`) - Output only. The idle shutdown configuration of the notebook runtime.
  *   `isUpgradable` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether NotebookRuntime is upgradable.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels with user-defined metadata to organize your NotebookRuntime. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one NotebookRuntime (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable. Following system labels exist for NotebookRuntime: * "aiplatform.googleapis.com/notebook_runtime_gce_instance_id": output only, its value is the Compute Engine instance id. * "aiplatform.googleapis.com/colab_enterprise_entry_service": its value is either "bigquery" or "vertex"; if absent, it should be "vertex". This is to describe the entry service, either BigQuery or Vertex.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the NotebookRuntime.
  *   `networkTags` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/vpc/docs/add-remove-network-tags)).
  *   `notebookRuntimeTemplateRef` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookRuntimeTemplateRef.t`, *default:* `nil`) - Output only. The pointer to NotebookRuntimeTemplate this NotebookRuntime is created from.
  *   `notebookRuntimeType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the notebook runtime.
  *   `proxyUri` (*type:* `String.t`, *default:* `nil`) - Output only. The proxy endpoint used to access the NotebookRuntime.
  *   `runtimeState` (*type:* `String.t`, *default:* `nil`) - Output only. The runtime (instance) state of the NotebookRuntime.
  *   `runtimeUser` (*type:* `String.t`, *default:* `nil`) - Required. The user email of the NotebookRuntime.
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Output only. The service account that the NotebookRuntime workload runs as.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this NotebookRuntime was most recently updated.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Output only. The VM os image version of NotebookRuntime.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :expirationTime => DateTime.t() | nil,
          :healthState => String.t() | nil,
          :idleShutdownConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookIdleShutdownConfig.t()
            | nil,
          :isUpgradable => boolean() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :networkTags => list(String.t()) | nil,
          :notebookRuntimeTemplateRef =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookRuntimeTemplateRef.t()
            | nil,
          :notebookRuntimeType => String.t() | nil,
          :proxyUri => String.t() | nil,
          :runtimeState => String.t() | nil,
          :runtimeUser => String.t() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :serviceAccount => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :version => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:expirationTime, as: DateTime)
  field(:healthState)

  field(:idleShutdownConfig,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookIdleShutdownConfig
  )

  field(:isUpgradable)
  field(:labels, type: :map)
  field(:name)
  field(:networkTags, type: :list)

  field(:notebookRuntimeTemplateRef,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookRuntimeTemplateRef
  )

  field(:notebookRuntimeType)
  field(:proxyUri)
  field(:runtimeState)
  field(:runtimeUser)
  field(:satisfiesPzi)
  field(:satisfiesPzs)
  field(:serviceAccount)
  field(:updateTime, as: DateTime)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookRuntime do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookRuntime.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NotebookRuntime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
