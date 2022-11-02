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

defmodule GoogleApi.Container.V1.Model.ClusterUpdate do
  @moduledoc """
  ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.

  ## Attributes

  *   `desiredServiceExternalIpsConfig` (*type:* `GoogleApi.Container.V1.Model.ServiceExternalIPsConfig.t`, *default:* `nil`) - ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field.
  *   `desiredDnsConfig` (*type:* `GoogleApi.Container.V1.Model.DNSConfig.t`, *default:* `nil`) - DNSConfig contains clusterDNS config for this cluster.
  *   `desiredGatewayApiConfig` (*type:* `GoogleApi.Container.V1.Model.GatewayAPIConfig.t`, *default:* `nil`) - The desired config of Gateway API on this cluster.
  *   `desiredDefaultSnatStatus` (*type:* `GoogleApi.Container.V1.Model.DefaultSnatStatus.t`, *default:* `nil`) - The desired status of whether to disable default sNAT for this cluster.
  *   `desiredMasterAuthorizedNetworksConfig` (*type:* `GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig.t`, *default:* `nil`) - The desired configuration options for master authorized networks feature.
  *   `desiredPrivateClusterConfig` (*type:* `GoogleApi.Container.V1.Model.PrivateClusterConfig.t`, *default:* `nil`) - The desired private cluster configuration.
  *   `desiredNodeVersion` (*type:* `String.t`, *default:* `nil`) - The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the Kubernetes master version
  *   `desiredMeshCertificates` (*type:* `GoogleApi.Container.V1.Model.MeshCertificates.t`, *default:* `nil`) - Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
  *   `desiredNodePoolAutoConfigNetworkTags` (*type:* `GoogleApi.Container.V1.Model.NetworkTags.t`, *default:* `nil`) - The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.
  *   `desiredAuthenticatorGroupsConfig` (*type:* `GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig.t`, *default:* `nil`) - The desired authenticator groups config for the cluster.
  *   `desiredCostManagementConfig` (*type:* `GoogleApi.Container.V1.Model.CostManagementConfig.t`, *default:* `nil`) - The desired configuration for the fine-grained cost management feature.
  *   `desiredShieldedNodes` (*type:* `GoogleApi.Container.V1.Model.ShieldedNodes.t`, *default:* `nil`) - Configuration for Shielded Nodes.
  *   `desiredNodePoolId` (*type:* `String.t`, *default:* `nil`) - The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_family" or "desired_node_pool_autoscaling" is specified and there is more than one node pool on the cluster.
  *   `desiredIntraNodeVisibilityConfig` (*type:* `GoogleApi.Container.V1.Model.IntraNodeVisibilityConfig.t`, *default:* `nil`) - The desired config of Intra-node visibility.
  *   `desiredBinaryAuthorization` (*type:* `GoogleApi.Container.V1.Model.BinaryAuthorization.t`, *default:* `nil`) - The desired configuration options for the Binary Authorization feature.
  *   `desiredEnablePrivateEndpoint` (*type:* `boolean()`, *default:* `nil`) - Enable/Disable private endpoint for the cluster's master.
  *   `desiredNodePoolLoggingConfig` (*type:* `GoogleApi.Container.V1.Model.NodePoolLoggingConfig.t`, *default:* `nil`) - The desired node pool logging configuration defaults for the cluster.
  *   `desiredPrivateIpv6GoogleAccess` (*type:* `String.t`, *default:* `nil`) - The desired state of IPv6 connectivity to Google Services.
  *   `desiredDatabaseEncryption` (*type:* `GoogleApi.Container.V1.Model.DatabaseEncryption.t`, *default:* `nil`) - Configuration of etcd encryption.
  *   `desiredResourceUsageExportConfig` (*type:* `GoogleApi.Container.V1.Model.ResourceUsageExportConfig.t`, *default:* `nil`) - The desired configuration for exporting resource usage.
  *   `desiredNotificationConfig` (*type:* `GoogleApi.Container.V1.Model.NotificationConfig.t`, *default:* `nil`) - The desired notification configuration.
  *   `desiredVerticalPodAutoscaling` (*type:* `GoogleApi.Container.V1.Model.VerticalPodAutoscaling.t`, *default:* `nil`) - Cluster-level Vertical Pod Autoscaling configuration.
  *   `desiredAddonsConfig` (*type:* `GoogleApi.Container.V1.Model.AddonsConfig.t`, *default:* `nil`) - Configurations for the various addons available to run in the cluster.
  *   `desiredNodePoolAutoscaling` (*type:* `GoogleApi.Container.V1.Model.NodePoolAutoscaling.t`, *default:* `nil`) - Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only one pool in the cluster and desired_node_pool_id is not provided then the change applies to that single node pool.
  *   `desiredLocations` (*type:* `list(String.t)`, *default:* `nil`) - The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the cluster's nodes should be located. This list must always include the cluster's primary zone. Warning: changing cluster locations will update the locations of all node pools and will result in nodes being added and/or removed.
  *   `desiredIdentityServiceConfig` (*type:* `GoogleApi.Container.V1.Model.IdentityServiceConfig.t`, *default:* `nil`) - The desired Identity Service component configuration.
  *   `desiredLoggingConfig` (*type:* `GoogleApi.Container.V1.Model.LoggingConfig.t`, *default:* `nil`) - The desired logging configuration.
  *   `desiredMonitoringConfig` (*type:* `GoogleApi.Container.V1.Model.MonitoringConfig.t`, *default:* `nil`) - The desired monitoring configuration.
  *   `desiredMonitoringService` (*type:* `String.t`, *default:* `nil`) - The monitoring service the cluster should use to write metrics. Currently available options: * "monitoring.googleapis.com/kubernetes" - The Cloud Monitoring service with a Kubernetes-native resource model * `monitoring.googleapis.com` - The legacy Cloud Monitoring service (no longer available as of GKE 1.15). * `none` - No metrics will be exported from the cluster. If left as an empty string,`monitoring.googleapis.com/kubernetes` will be used for GKE 1.14+ or `monitoring.googleapis.com` for earlier versions.
  *   `desiredL4ilbSubsettingConfig` (*type:* `GoogleApi.Container.V1.Model.ILBSubsettingConfig.t`, *default:* `nil`) - The desired L4 Internal Load Balancer Subsetting configuration.
  *   `desiredGcfsConfig` (*type:* `GoogleApi.Container.V1.Model.GcfsConfig.t`, *default:* `nil`) - The desired GCFS config for the cluster
  *   `desiredClusterAutoscaling` (*type:* `GoogleApi.Container.V1.Model.ClusterAutoscaling.t`, *default:* `nil`) - Cluster-level autoscaling configuration.
  *   `desiredMasterVersion` (*type:* `String.t`, *default:* `nil`) - The Kubernetes version to change the master to. Users may specify either explicit versions offered by Kubernetes Engine or version aliases, which have the following behavior: - "latest": picks the highest valid Kubernetes version - "1.X": picks the highest valid patch+gke.N patch in the 1.X version - "1.X.Y": picks the highest valid gke.N patch in the 1.X.Y version - "1.X.Y-gke.N": picks an explicit Kubernetes version - "-": picks the default Kubernetes version
  *   `desiredImageType` (*type:* `String.t`, *default:* `nil`) - The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well.
  *   `desiredDatapathProvider` (*type:* `String.t`, *default:* `nil`) - The desired datapath provider for the cluster.
  *   `desiredLoggingService` (*type:* `String.t`, *default:* `nil`) - The logging service the cluster should use to write logs. Currently available options: * `logging.googleapis.com/kubernetes` - The Cloud Logging service with a Kubernetes-native resource model * `logging.googleapis.com` - The legacy Cloud Logging service (no longer available as of GKE 1.15). * `none` - no logs will be exported from the cluster. If left as an empty string,`logging.googleapis.com/kubernetes` will be used for GKE 1.14+ or `logging.googleapis.com` for earlier versions.
  *   `desiredWorkloadIdentityConfig` (*type:* `GoogleApi.Container.V1.Model.WorkloadIdentityConfig.t`, *default:* `nil`) - Configuration for Workload Identity.
  *   `desiredReleaseChannel` (*type:* `GoogleApi.Container.V1.Model.ReleaseChannel.t`, *default:* `nil`) - The desired release channel configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :desiredServiceExternalIpsConfig =>
            GoogleApi.Container.V1.Model.ServiceExternalIPsConfig.t() | nil,
          :desiredDnsConfig => GoogleApi.Container.V1.Model.DNSConfig.t() | nil,
          :desiredGatewayApiConfig => GoogleApi.Container.V1.Model.GatewayAPIConfig.t() | nil,
          :desiredDefaultSnatStatus => GoogleApi.Container.V1.Model.DefaultSnatStatus.t() | nil,
          :desiredMasterAuthorizedNetworksConfig =>
            GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig.t() | nil,
          :desiredPrivateClusterConfig =>
            GoogleApi.Container.V1.Model.PrivateClusterConfig.t() | nil,
          :desiredNodeVersion => String.t() | nil,
          :desiredMeshCertificates => GoogleApi.Container.V1.Model.MeshCertificates.t() | nil,
          :desiredNodePoolAutoConfigNetworkTags =>
            GoogleApi.Container.V1.Model.NetworkTags.t() | nil,
          :desiredAuthenticatorGroupsConfig =>
            GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig.t() | nil,
          :desiredCostManagementConfig =>
            GoogleApi.Container.V1.Model.CostManagementConfig.t() | nil,
          :desiredShieldedNodes => GoogleApi.Container.V1.Model.ShieldedNodes.t() | nil,
          :desiredNodePoolId => String.t() | nil,
          :desiredIntraNodeVisibilityConfig =>
            GoogleApi.Container.V1.Model.IntraNodeVisibilityConfig.t() | nil,
          :desiredBinaryAuthorization =>
            GoogleApi.Container.V1.Model.BinaryAuthorization.t() | nil,
          :desiredEnablePrivateEndpoint => boolean() | nil,
          :desiredNodePoolLoggingConfig =>
            GoogleApi.Container.V1.Model.NodePoolLoggingConfig.t() | nil,
          :desiredPrivateIpv6GoogleAccess => String.t() | nil,
          :desiredDatabaseEncryption => GoogleApi.Container.V1.Model.DatabaseEncryption.t() | nil,
          :desiredResourceUsageExportConfig =>
            GoogleApi.Container.V1.Model.ResourceUsageExportConfig.t() | nil,
          :desiredNotificationConfig => GoogleApi.Container.V1.Model.NotificationConfig.t() | nil,
          :desiredVerticalPodAutoscaling =>
            GoogleApi.Container.V1.Model.VerticalPodAutoscaling.t() | nil,
          :desiredAddonsConfig => GoogleApi.Container.V1.Model.AddonsConfig.t() | nil,
          :desiredNodePoolAutoscaling =>
            GoogleApi.Container.V1.Model.NodePoolAutoscaling.t() | nil,
          :desiredLocations => list(String.t()) | nil,
          :desiredIdentityServiceConfig =>
            GoogleApi.Container.V1.Model.IdentityServiceConfig.t() | nil,
          :desiredLoggingConfig => GoogleApi.Container.V1.Model.LoggingConfig.t() | nil,
          :desiredMonitoringConfig => GoogleApi.Container.V1.Model.MonitoringConfig.t() | nil,
          :desiredMonitoringService => String.t() | nil,
          :desiredL4ilbSubsettingConfig =>
            GoogleApi.Container.V1.Model.ILBSubsettingConfig.t() | nil,
          :desiredGcfsConfig => GoogleApi.Container.V1.Model.GcfsConfig.t() | nil,
          :desiredClusterAutoscaling => GoogleApi.Container.V1.Model.ClusterAutoscaling.t() | nil,
          :desiredMasterVersion => String.t() | nil,
          :desiredImageType => String.t() | nil,
          :desiredDatapathProvider => String.t() | nil,
          :desiredLoggingService => String.t() | nil,
          :desiredWorkloadIdentityConfig =>
            GoogleApi.Container.V1.Model.WorkloadIdentityConfig.t() | nil,
          :desiredReleaseChannel => GoogleApi.Container.V1.Model.ReleaseChannel.t() | nil
        }

  field(:desiredServiceExternalIpsConfig,
    as: GoogleApi.Container.V1.Model.ServiceExternalIPsConfig
  )

  field(:desiredDnsConfig, as: GoogleApi.Container.V1.Model.DNSConfig)
  field(:desiredGatewayApiConfig, as: GoogleApi.Container.V1.Model.GatewayAPIConfig)
  field(:desiredDefaultSnatStatus, as: GoogleApi.Container.V1.Model.DefaultSnatStatus)

  field(:desiredMasterAuthorizedNetworksConfig,
    as: GoogleApi.Container.V1.Model.MasterAuthorizedNetworksConfig
  )

  field(:desiredPrivateClusterConfig, as: GoogleApi.Container.V1.Model.PrivateClusterConfig)
  field(:desiredNodeVersion)
  field(:desiredMeshCertificates, as: GoogleApi.Container.V1.Model.MeshCertificates)
  field(:desiredNodePoolAutoConfigNetworkTags, as: GoogleApi.Container.V1.Model.NetworkTags)

  field(:desiredAuthenticatorGroupsConfig,
    as: GoogleApi.Container.V1.Model.AuthenticatorGroupsConfig
  )

  field(:desiredCostManagementConfig, as: GoogleApi.Container.V1.Model.CostManagementConfig)
  field(:desiredShieldedNodes, as: GoogleApi.Container.V1.Model.ShieldedNodes)
  field(:desiredNodePoolId)

  field(:desiredIntraNodeVisibilityConfig,
    as: GoogleApi.Container.V1.Model.IntraNodeVisibilityConfig
  )

  field(:desiredBinaryAuthorization, as: GoogleApi.Container.V1.Model.BinaryAuthorization)
  field(:desiredEnablePrivateEndpoint)
  field(:desiredNodePoolLoggingConfig, as: GoogleApi.Container.V1.Model.NodePoolLoggingConfig)
  field(:desiredPrivateIpv6GoogleAccess)
  field(:desiredDatabaseEncryption, as: GoogleApi.Container.V1.Model.DatabaseEncryption)

  field(:desiredResourceUsageExportConfig,
    as: GoogleApi.Container.V1.Model.ResourceUsageExportConfig
  )

  field(:desiredNotificationConfig, as: GoogleApi.Container.V1.Model.NotificationConfig)
  field(:desiredVerticalPodAutoscaling, as: GoogleApi.Container.V1.Model.VerticalPodAutoscaling)
  field(:desiredAddonsConfig, as: GoogleApi.Container.V1.Model.AddonsConfig)
  field(:desiredNodePoolAutoscaling, as: GoogleApi.Container.V1.Model.NodePoolAutoscaling)
  field(:desiredLocations, type: :list)
  field(:desiredIdentityServiceConfig, as: GoogleApi.Container.V1.Model.IdentityServiceConfig)
  field(:desiredLoggingConfig, as: GoogleApi.Container.V1.Model.LoggingConfig)
  field(:desiredMonitoringConfig, as: GoogleApi.Container.V1.Model.MonitoringConfig)
  field(:desiredMonitoringService)
  field(:desiredL4ilbSubsettingConfig, as: GoogleApi.Container.V1.Model.ILBSubsettingConfig)
  field(:desiredGcfsConfig, as: GoogleApi.Container.V1.Model.GcfsConfig)
  field(:desiredClusterAutoscaling, as: GoogleApi.Container.V1.Model.ClusterAutoscaling)
  field(:desiredMasterVersion)
  field(:desiredImageType)
  field(:desiredDatapathProvider)
  field(:desiredLoggingService)
  field(:desiredWorkloadIdentityConfig, as: GoogleApi.Container.V1.Model.WorkloadIdentityConfig)
  field(:desiredReleaseChannel, as: GoogleApi.Container.V1.Model.ReleaseChannel)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.ClusterUpdate do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.ClusterUpdate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.ClusterUpdate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
