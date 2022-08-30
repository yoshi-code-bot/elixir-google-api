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

defmodule GoogleApi.AndroidManagement.V1.Model.Policy do
  @moduledoc """
  A policy resource represents a group of settings that govern the behavior of a managed device and the apps installed on it.

  ## Attributes

  *   `keyguardDisabledFeatures` (*type:* `list(String.t)`, *default:* `nil`) - Disabled keyguard customizations, such as widgets.
  *   `cameraDisabled` (*type:* `boolean()`, *default:* `nil`) - If camera_access is set to any value other than CAMERA_ACCESS_UNSPECIFIED, this has no effect. Otherwise this field controls whether cameras are disabled: If true, all cameras are disabled, otherwise they are available. For fully managed devices this field applies for all apps on the device. For work profiles, this field applies only to apps in the work profile, and the camera access of apps outside the work profile is unaffected.
  *   `wifiConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring Wi-Fi access points is disabled.Note: If a network connection can't be made at boot time and configuring Wi-Fi is disabled then network escape hatch will be shown in order to refresh the device policy (see networkEscapeHatchEnabled).
  *   `personalUsagePolicies` (*type:* `GoogleApi.AndroidManagement.V1.Model.PersonalUsagePolicies.t`, *default:* `nil`) - Policies managing personal usage on a company-owned device.
  *   `skipFirstUseHintsEnabled` (*type:* `boolean()`, *default:* `nil`) - Flag to skip hints on the first use. Enterprise admin can enable the system recommendation for apps to skip their user tutorial and other introductory hints on first start-up.
  *   `stayOnPluggedModes` (*type:* `list(String.t)`, *default:* `nil`) - The battery plugged in modes for which the device stays on. When using this setting, it is recommended to clear maximum_time_to_lock so that the device doesn't lock itself while it stays on.
  *   `autoTimeRequired` (*type:* `boolean()`, *default:* `nil`) - Whether auto time is required, which prevents the user from manually setting the date and time. If autoDateAndTimeZone is set, this field is ignored.
  *   `playStoreMode` (*type:* `String.t`, *default:* `nil`) - This mode controls which apps are available to the user in the Play Store and the behavior on the device when apps are removed from the policy.
  *   `removeUserDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether removing other users is disabled.
  *   `shortSupportMessage` (*type:* `GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t`, *default:* `nil`) - A message displayed to the user in the settings screen wherever functionality has been disabled by the admin. If the message is longer than 200 characters it may be truncated.
  *   `credentialsConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring user credentials is disabled.
  *   `oncCertificateProviders` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.OncCertificateProvider.t)`, *default:* `nil`) - This feature is not generally available.
  *   `defaultPermissionPolicy` (*type:* `String.t`, *default:* `nil`) - The default permission policy for runtime permission requests.
  *   `addUserDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether adding new users and profiles is disabled.
  *   `setupActions` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.SetupAction.t)`, *default:* `nil`) - Action to take during the setup process. At most one action may be specified.
  *   `statusReportingSettings` (*type:* `GoogleApi.AndroidManagement.V1.Model.StatusReportingSettings.t`, *default:* `nil`) - Status reporting settings
  *   `tetheringConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring tethering and portable hotspots is disabled.
  *   `outgoingBeamDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether using NFC to beam data from apps is disabled.
  *   `usageLog` (*type:* `GoogleApi.AndroidManagement.V1.Model.UsageLog.t`, *default:* `nil`) - Configuration of device activity logging.
  *   `permittedInputMethods` (*type:* `GoogleApi.AndroidManagement.V1.Model.PackageNameList.t`, *default:* `nil`) - If present, only the input methods provided by packages in this list are permitted. If this field is present, but the list is empty, then only system input methods are permitted.
  *   `outgoingCallsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether outgoing calls are disabled.
  *   `persistentPreferredActivities` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity.t)`, *default:* `nil`) - Default intent handler activities.
  *   `mountPhysicalMediaDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether the user mounting physical external media is disabled.
  *   `locationMode` (*type:* `String.t`, *default:* `nil`) - The degree of location detection enabled.
  *   `choosePrivateKeyRules` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.ChoosePrivateKeyRule.t)`, *default:* `nil`) - Rules for determining apps' access to private keys. See ChoosePrivateKeyRule for details.
  *   `complianceRules` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.ComplianceRule.t)`, *default:* `nil`) - Rules declaring which mitigating actions to take when a device is not compliant with its policy. When the conditions for multiple rules are satisfied, all of the mitigating actions for the rules are taken. There is a maximum limit of 100 rules. Use policy enforcement rules instead.
  *   `screenCaptureDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether screen capture is disabled.
  *   `alwaysOnVpnPackage` (*type:* `GoogleApi.AndroidManagement.V1.Model.AlwaysOnVpnPackage.t`, *default:* `nil`) - Configuration for an always-on VPN connection. Use with vpn_config_disabled to prevent modification of this setting.
  *   `longSupportMessage` (*type:* `GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t`, *default:* `nil`) - A message displayed to the user in the device administators settings screen.
  *   `androidDevicePolicyTracks` (*type:* `list(String.t)`, *default:* `nil`) - The app tracks for Android Device Policy the device can access. The device receives the latest version among all accessible tracks. If no tracks are specified, then the device only uses the production track.
  *   `crossProfilePolicies` (*type:* `GoogleApi.AndroidManagement.V1.Model.CrossProfilePolicies.t`, *default:* `nil`) - Cross-profile policies applied on the device.
  *   `wifiConfigsLockdownEnabled` (*type:* `boolean()`, *default:* `nil`) - DEPRECATED - Use wifi_config_disabled.
  *   `minimumApiLevel` (*type:* `integer()`, *default:* `nil`) - The minimum allowed Android API level.
  *   `installUnknownSourcesAllowed` (*type:* `boolean()`, *default:* `nil`) - This field has no effect.
  *   `smsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether sending and receiving SMS messages is disabled.
  *   `createWindowsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether creating windows besides app windows is disabled.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}.
  *   `accountTypesWithManagementDisabled` (*type:* `list(String.t)`, *default:* `nil`) - Account types that can't be managed by the user.
  *   `kioskCustomization` (*type:* `GoogleApi.AndroidManagement.V1.Model.KioskCustomization.t`, *default:* `nil`) - Settings controlling the behavior of a device in kiosk mode. To enable kiosk mode, set kioskCustomLauncherEnabled to true or specify an app in the policy with installType KIOSK.
  *   `microphoneAccess` (*type:* `String.t`, *default:* `nil`) - Controls the use of the microphone and whether the user has access to the microphone access toggle. This applies only on fully managed devices.
  *   `dataRoamingDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether roaming data services are disabled.
  *   `encryptionPolicy` (*type:* `String.t`, *default:* `nil`) - Whether encryption is enabled
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of the policy. This is a read-only field. The version is incremented each time the policy is updated.
  *   `debuggingFeaturesAllowed` (*type:* `boolean()`, *default:* `nil`) - Whether the user is allowed to enable debugging features.
  *   `funDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether the user is allowed to have fun. Controls whether the Easter egg game in Settings is disabled.
  *   `deviceOwnerLockScreenInfo` (*type:* `GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t`, *default:* `nil`) - The device owner information to be shown on the lock screen.
  *   `setWallpaperDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether changing the wallpaper is disabled.
  *   `keyguardDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether the keyguard is disabled.
  *   `autoDateAndTimeZone` (*type:* `String.t`, *default:* `nil`) - Whether auto date, time, and time zone are enabled on a company-owned device. If this is set, then autoTimeRequired is ignored.
  *   `adjustVolumeDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether adjusting the master volume is disabled. Also mutes the device.
  *   `usbFileTransferDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether transferring files over USB is disabled. This is supported only on company-owned devices.
  *   `bluetoothContactSharingDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether bluetooth contact sharing is disabled.
  *   `factoryResetDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether factory resetting from settings is disabled.
  *   `setUserIconDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether changing the user icon is disabled.
  *   `usbMassStorageEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether USB storage is enabled. Deprecated.
  *   `ensureVerifyAppsEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether app verification is force-enabled.
  *   `advancedSecurityOverrides` (*type:* `GoogleApi.AndroidManagement.V1.Model.AdvancedSecurityOverrides.t`, *default:* `nil`) - Security policies set to secure values by default. To maintain the security posture of a device, we don't recommend overriding any of the default values.
  *   `bluetoothDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether bluetooth is disabled. Prefer this setting over bluetooth_config_disabled because bluetooth_config_disabled can be bypassed by the user.
  *   `policyEnforcementRules` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PolicyEnforcementRule.t)`, *default:* `nil`) - Rules that define the behavior when a particular policy can not be applied on device
  *   `vpnConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring VPN is disabled.
  *   `bluetoothConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring bluetooth is disabled.
  *   `installAppsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether user installation of apps is disabled.
  *   `uninstallAppsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether user uninstallation of applications is disabled.
  *   `openNetworkConfiguration` (*type:* `map()`, *default:* `nil`) - Network configuration for the device. See configure networks for more information.
  *   `systemUpdate` (*type:* `GoogleApi.AndroidManagement.V1.Model.SystemUpdate.t`, *default:* `nil`) - The system update policy, which controls how OS updates are applied. If the update type is WINDOWED, the update window will automatically apply to Play app updates as well.
  *   `appAutoUpdatePolicy` (*type:* `String.t`, *default:* `nil`) - Deprecated. Use autoUpdateMode instead.When autoUpdateMode is set to AUTO_UPDATE_POSTPONED or AUTO_UPDATE_HIGH_PRIORITY, this field has no effect.The app auto update policy, which controls when automatic app updates can be applied.
  *   `cameraAccess` (*type:* `String.t`, *default:* `nil`) - Controls the use of the camera and whether the user has access to the camera access toggle.
  *   `permissionGrants` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PermissionGrant.t)`, *default:* `nil`) - Explicit permission or group grants or denials for all apps. These values override the default_permission_policy.
  *   `applications` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy.t)`, *default:* `nil`) - Policy applied to apps.
  *   `statusBarDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether the status bar is disabled. This disables notifications, quick settings, and other screen overlays that allow escape from full-screen mode. DEPRECATED. To disable the status bar on a kiosk device, use InstallType KIOSK or kioskCustomLauncherEnabled.
  *   `kioskCustomLauncherEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether the kiosk custom launcher is enabled. This replaces the home screen with a launcher that locks down the device to the apps installed via the applications setting. Apps appear on a single page in alphabetical order. Use kioskCustomization to further configure the kiosk device behavior.
  *   `preferentialNetworkService` (*type:* `String.t`, *default:* `nil`) - Controls whether preferential network service is enabled on the work profile. For example, an organization may have an agreement with a carrier that all of the work data from its employees' devices will be sent via a network service dedicated for enterprise use. An example of a supported preferential network service is the enterprise slice on 5G networks. This has no effect on fully managed devices.
  *   `passwordPolicies` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.t)`, *default:* `nil`) - Password requirement policies. Different policies can be set for work profile or fully managed devices by setting the password_scope field in the policy.
  *   `cellBroadcastsConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring cell broadcast is disabled.
  *   `unmuteMicrophoneDisabled` (*type:* `boolean()`, *default:* `nil`) - If microphone_access is set to any value other than MICROPHONE_ACCESS_UNSPECIFIED, this has no effect. Otherwise this field controls whether microphones are disabled: If true, all microphones are disabled, otherwise they are available. This is available only on fully managed devices.
  *   `frpAdminEmails` (*type:* `list(String.t)`, *default:* `nil`) - Email addresses of device administrators for factory reset protection. When the device is factory reset, it will require one of these admins to log in with the Google account email and password to unlock the device. If no admins are specified, the device won't provide factory reset protection.
  *   `networkEscapeHatchEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether the network escape hatch is enabled. If a network connection can't be made at boot time, the escape hatch prompts the user to temporarily connect to a network in order to refresh the device policy. After applying policy, the temporary network will be forgotten and the device will continue booting. This prevents being unable to connect to a network if there is no suitable network in the last policy and the device boots into an app in lock task mode, or the user is otherwise unable to reach device settings.Note: Setting wifiConfigDisabled to true will override this setting under specific circumstances. Please see wifiConfigDisabled for further details.
  *   `recommendedGlobalProxy` (*type:* `GoogleApi.AndroidManagement.V1.Model.ProxyInfo.t`, *default:* `nil`) - The network-independent global HTTP proxy. Typically proxies should be configured per-network in open_network_configuration. However for unusual configurations like general internal filtering a global HTTP proxy may be useful. If the proxy is not accessible, network access may break. The global proxy is only a recommendation and some apps may ignore it.
  *   `safeBootDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether rebooting the device into safe boot is disabled.
  *   `blockApplicationsEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether applications other than the ones configured in applications are blocked from being installed. When set, applications that were installed under a previous policy but no longer appear in the policy are automatically uninstalled.
  *   `privateKeySelectionEnabled` (*type:* `boolean()`, *default:* `nil`) - Allows showing UI on a device for a user to choose a private key alias if there are no matching rules in ChoosePrivateKeyRules. For devices below Android P, setting this may leave enterprise keys vulnerable.
  *   `mobileNetworksConfigDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether configuring mobile networks is disabled.
  *   `permittedAccessibilityServices` (*type:* `GoogleApi.AndroidManagement.V1.Model.PackageNameList.t`, *default:* `nil`) - Specifies permitted accessibility services. If the field is not set, any accessibility service can be used. If the field is set, only the accessibility services in this list and the system's built-in accessibility service can be used. In particular, if the field is set to empty, only the system's built-in accessibility servicess can be used. This can be set on fully managed devices and on work profiles. When applied to a work profile, this affects both the personal profile and the work profile.
  *   `modifyAccountsDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether adding or removing accounts is disabled.
  *   `shareLocationDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether location sharing is disabled.
  *   `passwordRequirements` (*type:* `GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.t`, *default:* `nil`) - Password requirements. The field password_requirements.require_password_unlock must not be set. DEPRECATED - Use passwordPolicies.Note:Complexity-based values of PasswordQuality, that is, COMPLEXITY_LOW, COMPLEXITY_MEDIUM, and COMPLEXITY_HIGH, cannot be used here. unified_lock_settings cannot be used here.
  *   `networkResetDisabled` (*type:* `boolean()`, *default:* `nil`) - Whether resetting network settings is disabled.
  *   `maximumTimeToLock` (*type:* `String.t`, *default:* `nil`) - Maximum time in milliseconds for user activity until the device locks. A value of 0 means there is no restriction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :keyguardDisabledFeatures => list(String.t()) | nil,
          :cameraDisabled => boolean() | nil,
          :wifiConfigDisabled => boolean() | nil,
          :personalUsagePolicies =>
            GoogleApi.AndroidManagement.V1.Model.PersonalUsagePolicies.t() | nil,
          :skipFirstUseHintsEnabled => boolean() | nil,
          :stayOnPluggedModes => list(String.t()) | nil,
          :autoTimeRequired => boolean() | nil,
          :playStoreMode => String.t() | nil,
          :removeUserDisabled => boolean() | nil,
          :shortSupportMessage =>
            GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t() | nil,
          :credentialsConfigDisabled => boolean() | nil,
          :oncCertificateProviders =>
            list(GoogleApi.AndroidManagement.V1.Model.OncCertificateProvider.t()) | nil,
          :defaultPermissionPolicy => String.t() | nil,
          :addUserDisabled => boolean() | nil,
          :setupActions => list(GoogleApi.AndroidManagement.V1.Model.SetupAction.t()) | nil,
          :statusReportingSettings =>
            GoogleApi.AndroidManagement.V1.Model.StatusReportingSettings.t() | nil,
          :tetheringConfigDisabled => boolean() | nil,
          :outgoingBeamDisabled => boolean() | nil,
          :usageLog => GoogleApi.AndroidManagement.V1.Model.UsageLog.t() | nil,
          :permittedInputMethods =>
            GoogleApi.AndroidManagement.V1.Model.PackageNameList.t() | nil,
          :outgoingCallsDisabled => boolean() | nil,
          :persistentPreferredActivities =>
            list(GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity.t()) | nil,
          :mountPhysicalMediaDisabled => boolean() | nil,
          :locationMode => String.t() | nil,
          :choosePrivateKeyRules =>
            list(GoogleApi.AndroidManagement.V1.Model.ChoosePrivateKeyRule.t()) | nil,
          :complianceRules => list(GoogleApi.AndroidManagement.V1.Model.ComplianceRule.t()) | nil,
          :screenCaptureDisabled => boolean() | nil,
          :alwaysOnVpnPackage =>
            GoogleApi.AndroidManagement.V1.Model.AlwaysOnVpnPackage.t() | nil,
          :longSupportMessage => GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t() | nil,
          :androidDevicePolicyTracks => list(String.t()) | nil,
          :crossProfilePolicies =>
            GoogleApi.AndroidManagement.V1.Model.CrossProfilePolicies.t() | nil,
          :wifiConfigsLockdownEnabled => boolean() | nil,
          :minimumApiLevel => integer() | nil,
          :installUnknownSourcesAllowed => boolean() | nil,
          :smsDisabled => boolean() | nil,
          :createWindowsDisabled => boolean() | nil,
          :name => String.t() | nil,
          :accountTypesWithManagementDisabled => list(String.t()) | nil,
          :kioskCustomization =>
            GoogleApi.AndroidManagement.V1.Model.KioskCustomization.t() | nil,
          :microphoneAccess => String.t() | nil,
          :dataRoamingDisabled => boolean() | nil,
          :encryptionPolicy => String.t() | nil,
          :version => String.t() | nil,
          :debuggingFeaturesAllowed => boolean() | nil,
          :funDisabled => boolean() | nil,
          :deviceOwnerLockScreenInfo =>
            GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t() | nil,
          :setWallpaperDisabled => boolean() | nil,
          :keyguardDisabled => boolean() | nil,
          :autoDateAndTimeZone => String.t() | nil,
          :adjustVolumeDisabled => boolean() | nil,
          :usbFileTransferDisabled => boolean() | nil,
          :bluetoothContactSharingDisabled => boolean() | nil,
          :factoryResetDisabled => boolean() | nil,
          :setUserIconDisabled => boolean() | nil,
          :usbMassStorageEnabled => boolean() | nil,
          :ensureVerifyAppsEnabled => boolean() | nil,
          :advancedSecurityOverrides =>
            GoogleApi.AndroidManagement.V1.Model.AdvancedSecurityOverrides.t() | nil,
          :bluetoothDisabled => boolean() | nil,
          :policyEnforcementRules =>
            list(GoogleApi.AndroidManagement.V1.Model.PolicyEnforcementRule.t()) | nil,
          :vpnConfigDisabled => boolean() | nil,
          :bluetoothConfigDisabled => boolean() | nil,
          :installAppsDisabled => boolean() | nil,
          :uninstallAppsDisabled => boolean() | nil,
          :openNetworkConfiguration => map() | nil,
          :systemUpdate => GoogleApi.AndroidManagement.V1.Model.SystemUpdate.t() | nil,
          :appAutoUpdatePolicy => String.t() | nil,
          :cameraAccess => String.t() | nil,
          :permissionGrants =>
            list(GoogleApi.AndroidManagement.V1.Model.PermissionGrant.t()) | nil,
          :applications => list(GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy.t()) | nil,
          :statusBarDisabled => boolean() | nil,
          :kioskCustomLauncherEnabled => boolean() | nil,
          :preferentialNetworkService => String.t() | nil,
          :passwordPolicies =>
            list(GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.t()) | nil,
          :cellBroadcastsConfigDisabled => boolean() | nil,
          :unmuteMicrophoneDisabled => boolean() | nil,
          :frpAdminEmails => list(String.t()) | nil,
          :networkEscapeHatchEnabled => boolean() | nil,
          :recommendedGlobalProxy => GoogleApi.AndroidManagement.V1.Model.ProxyInfo.t() | nil,
          :safeBootDisabled => boolean() | nil,
          :blockApplicationsEnabled => boolean() | nil,
          :privateKeySelectionEnabled => boolean() | nil,
          :mobileNetworksConfigDisabled => boolean() | nil,
          :permittedAccessibilityServices =>
            GoogleApi.AndroidManagement.V1.Model.PackageNameList.t() | nil,
          :modifyAccountsDisabled => boolean() | nil,
          :shareLocationDisabled => boolean() | nil,
          :passwordRequirements =>
            GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.t() | nil,
          :networkResetDisabled => boolean() | nil,
          :maximumTimeToLock => String.t() | nil
        }

  field(:keyguardDisabledFeatures, type: :list)
  field(:cameraDisabled)
  field(:wifiConfigDisabled)
  field(:personalUsagePolicies, as: GoogleApi.AndroidManagement.V1.Model.PersonalUsagePolicies)
  field(:skipFirstUseHintsEnabled)
  field(:stayOnPluggedModes, type: :list)
  field(:autoTimeRequired)
  field(:playStoreMode)
  field(:removeUserDisabled)
  field(:shortSupportMessage, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:credentialsConfigDisabled)

  field(:oncCertificateProviders,
    as: GoogleApi.AndroidManagement.V1.Model.OncCertificateProvider,
    type: :list
  )

  field(:defaultPermissionPolicy)
  field(:addUserDisabled)
  field(:setupActions, as: GoogleApi.AndroidManagement.V1.Model.SetupAction, type: :list)

  field(:statusReportingSettings, as: GoogleApi.AndroidManagement.V1.Model.StatusReportingSettings)

  field(:tetheringConfigDisabled)
  field(:outgoingBeamDisabled)
  field(:usageLog, as: GoogleApi.AndroidManagement.V1.Model.UsageLog)
  field(:permittedInputMethods, as: GoogleApi.AndroidManagement.V1.Model.PackageNameList)
  field(:outgoingCallsDisabled)

  field(:persistentPreferredActivities,
    as: GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity,
    type: :list
  )

  field(:mountPhysicalMediaDisabled)
  field(:locationMode)

  field(:choosePrivateKeyRules,
    as: GoogleApi.AndroidManagement.V1.Model.ChoosePrivateKeyRule,
    type: :list
  )

  field(:complianceRules, as: GoogleApi.AndroidManagement.V1.Model.ComplianceRule, type: :list)
  field(:screenCaptureDisabled)
  field(:alwaysOnVpnPackage, as: GoogleApi.AndroidManagement.V1.Model.AlwaysOnVpnPackage)
  field(:longSupportMessage, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:androidDevicePolicyTracks, type: :list)
  field(:crossProfilePolicies, as: GoogleApi.AndroidManagement.V1.Model.CrossProfilePolicies)
  field(:wifiConfigsLockdownEnabled)
  field(:minimumApiLevel)
  field(:installUnknownSourcesAllowed)
  field(:smsDisabled)
  field(:createWindowsDisabled)
  field(:name)
  field(:accountTypesWithManagementDisabled, type: :list)
  field(:kioskCustomization, as: GoogleApi.AndroidManagement.V1.Model.KioskCustomization)
  field(:microphoneAccess)
  field(:dataRoamingDisabled)
  field(:encryptionPolicy)
  field(:version)
  field(:debuggingFeaturesAllowed)
  field(:funDisabled)
  field(:deviceOwnerLockScreenInfo, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:setWallpaperDisabled)
  field(:keyguardDisabled)
  field(:autoDateAndTimeZone)
  field(:adjustVolumeDisabled)
  field(:usbFileTransferDisabled)
  field(:bluetoothContactSharingDisabled)
  field(:factoryResetDisabled)
  field(:setUserIconDisabled)
  field(:usbMassStorageEnabled)
  field(:ensureVerifyAppsEnabled)

  field(:advancedSecurityOverrides,
    as: GoogleApi.AndroidManagement.V1.Model.AdvancedSecurityOverrides
  )

  field(:bluetoothDisabled)

  field(:policyEnforcementRules,
    as: GoogleApi.AndroidManagement.V1.Model.PolicyEnforcementRule,
    type: :list
  )

  field(:vpnConfigDisabled)
  field(:bluetoothConfigDisabled)
  field(:installAppsDisabled)
  field(:uninstallAppsDisabled)
  field(:openNetworkConfiguration, type: :map)
  field(:systemUpdate, as: GoogleApi.AndroidManagement.V1.Model.SystemUpdate)
  field(:appAutoUpdatePolicy)
  field(:cameraAccess)
  field(:permissionGrants, as: GoogleApi.AndroidManagement.V1.Model.PermissionGrant, type: :list)
  field(:applications, as: GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy, type: :list)
  field(:statusBarDisabled)
  field(:kioskCustomLauncherEnabled)
  field(:preferentialNetworkService)

  field(:passwordPolicies,
    as: GoogleApi.AndroidManagement.V1.Model.PasswordRequirements,
    type: :list
  )

  field(:cellBroadcastsConfigDisabled)
  field(:unmuteMicrophoneDisabled)
  field(:frpAdminEmails, type: :list)
  field(:networkEscapeHatchEnabled)
  field(:recommendedGlobalProxy, as: GoogleApi.AndroidManagement.V1.Model.ProxyInfo)
  field(:safeBootDisabled)
  field(:blockApplicationsEnabled)
  field(:privateKeySelectionEnabled)
  field(:mobileNetworksConfigDisabled)
  field(:permittedAccessibilityServices, as: GoogleApi.AndroidManagement.V1.Model.PackageNameList)
  field(:modifyAccountsDisabled)
  field(:shareLocationDisabled)
  field(:passwordRequirements, as: GoogleApi.AndroidManagement.V1.Model.PasswordRequirements)
  field(:networkResetDisabled)
  field(:maximumTimeToLock)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Policy do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
