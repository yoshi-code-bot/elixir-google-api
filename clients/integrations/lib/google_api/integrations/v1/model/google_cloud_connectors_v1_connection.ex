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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Connection do
  @moduledoc """
  Connection represents an instance of connector.

  ## Attributes

  *   `asyncOperationsEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Async operations enabled for the connection. If Async Operations is enabled, Connection allows the customers to initiate async long running operations using the actions API.
  *   `authConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1AuthConfig.t`, *default:* `nil`) - Optional. Configuration for establishing the connection's authentication with an external system.
  *   `billingConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1BillingConfig.t`, *default:* `nil`) - Output only. Billing config for the connection.
  *   `configVariables` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConfigVariable.t)`, *default:* `nil`) - Optional. Configuration for configuring the connection with an external system.
  *   `connectionRevision` (*type:* `String.t`, *default:* `nil`) - Output only. Connection revision. This field is only updated when the connection is created or updated by User.
  *   `connectorVersion` (*type:* `String.t`, *default:* `nil`) - Required. Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  *   `connectorVersionInfraConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConnectorVersionInfraConfig.t`, *default:* `nil`) - Output only. Infra configs supported by Connector Version.
  *   `connectorVersionLaunchStage` (*type:* `String.t`, *default:* `nil`) - Output only. Flag to mark the version indicating the launch stage.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Created time.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the resource.
  *   `destinationConfigs` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1DestinationConfig.t)`, *default:* `nil`) - Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  *   `envoyImageLocation` (*type:* `String.t`, *default:* `nil`) - Output only. GCR location where the envoy image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  *   `eventingConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingConfig.t`, *default:* `nil`) - Optional. Eventing config of a connection
  *   `eventingEnablementType` (*type:* `String.t`, *default:* `nil`) - Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  *   `eventingRuntimeData` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingRuntimeData.t`, *default:* `nil`) - Output only. Eventing Runtime Data.
  *   `host` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the Hostname of the Service Directory service with TLS.
  *   `imageLocation` (*type:* `String.t`, *default:* `nil`) - Output only. GCR location where the runtime image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  *   `isTrustedTester` (*type:* `boolean()`, *default:* `nil`) - Output only. Is trusted tester program enabled for the project.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  *   `lockConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1LockConfig.t`, *default:* `nil`) - Optional. Configuration that indicates whether or not the Connection can be edited.
  *   `logConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1LogConfig.t`, *default:* `nil`) - Optional. Log configuration for the connection.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection}
  *   `nodeConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1NodeConfig.t`, *default:* `nil`) - Optional. Node configuration for the connection.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Optional. Service account needed for runtime plane to access Google Cloud resources.
  *   `serviceDirectory` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address. e.g. "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  *   `sslConfig` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1SslConfig.t`, *default:* `nil`) - Optional. Ssl config of a connection
  *   `status` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConnectionStatus.t`, *default:* `nil`) - Output only. Current status of the connection.
  *   `subscriptionType` (*type:* `String.t`, *default:* `nil`) - Output only. This subscription type enum states the subscription type of the project.
  *   `suspended` (*type:* `boolean()`, *default:* `nil`) - Optional. Suspended indicates if a user has suspended a connection or not.
  *   `tlsMigrationState` (*type:* `String.t`, *default:* `nil`) - Output only. Status of the TLS migration.
  *   `tlsServiceDirectory` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the Service Directory service with TLS.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Updated time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asyncOperationsEnabled => boolean() | nil,
          :authConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1AuthConfig.t() | nil,
          :billingConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1BillingConfig.t() | nil,
          :configVariables =>
            list(GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConfigVariable.t()) | nil,
          :connectionRevision => String.t() | nil,
          :connectorVersion => String.t() | nil,
          :connectorVersionInfraConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConnectorVersionInfraConfig.t()
            | nil,
          :connectorVersionLaunchStage => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :destinationConfigs =>
            list(GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1DestinationConfig.t())
            | nil,
          :envoyImageLocation => String.t() | nil,
          :eventingConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingConfig.t() | nil,
          :eventingEnablementType => String.t() | nil,
          :eventingRuntimeData =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingRuntimeData.t() | nil,
          :host => String.t() | nil,
          :imageLocation => String.t() | nil,
          :isTrustedTester => boolean() | nil,
          :labels => map() | nil,
          :lockConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1LockConfig.t() | nil,
          :logConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1LogConfig.t() | nil,
          :name => String.t() | nil,
          :nodeConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1NodeConfig.t() | nil,
          :serviceAccount => String.t() | nil,
          :serviceDirectory => String.t() | nil,
          :sslConfig =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1SslConfig.t() | nil,
          :status =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConnectionStatus.t() | nil,
          :subscriptionType => String.t() | nil,
          :suspended => boolean() | nil,
          :tlsMigrationState => String.t() | nil,
          :tlsServiceDirectory => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:asyncOperationsEnabled)
  field(:authConfig, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1AuthConfig)
  field(:billingConfig, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1BillingConfig)

  field(:configVariables,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConfigVariable,
    type: :list
  )

  field(:connectionRevision)
  field(:connectorVersion)

  field(:connectorVersionInfraConfig,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConnectorVersionInfraConfig
  )

  field(:connectorVersionLaunchStage)
  field(:createTime, as: DateTime)
  field(:description)

  field(:destinationConfigs,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1DestinationConfig,
    type: :list
  )

  field(:envoyImageLocation)

  field(:eventingConfig, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingConfig)

  field(:eventingEnablementType)

  field(:eventingRuntimeData,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1EventingRuntimeData
  )

  field(:host)
  field(:imageLocation)
  field(:isTrustedTester)
  field(:labels, type: :map)
  field(:lockConfig, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1LockConfig)
  field(:logConfig, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1LogConfig)
  field(:name)
  field(:nodeConfig, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1NodeConfig)
  field(:serviceAccount)
  field(:serviceDirectory)
  field(:sslConfig, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1SslConfig)
  field(:status, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConnectionStatus)
  field(:subscriptionType)
  field(:suspended)
  field(:tlsMigrationState)
  field(:tlsServiceDirectory)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Connection do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Connection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Connection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
