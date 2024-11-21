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

defmodule GoogleApi.WalletObjects.V1.Model.LoyaltyClass do
  @moduledoc """


  ## Attributes

  *   `appLinkData` (*type:* `GoogleApi.WalletObjects.V1.Model.AppLinkData.t`, *default:* `nil`) - Optional app or website link that will be displayed as a button on the front of the pass. If AppLinkData is provided for the corresponding object that will be used instead.
  *   `secondaryRewardsTierLabel` (*type:* `String.t`, *default:* `nil`) - The secondary rewards tier label, such as "Rewards Tier."
  *   `redemptionIssuers` (*type:* `list(String.t)`, *default:* `nil`) - Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are identified by their issuer ID. Redemption issuers must have at least one Smart Tap key configured. The `enableSmartTap` and one of object level `smartTapRedemptionValue`, barcode.value`, or `accountId` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `securityAnimation` (*type:* `GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t`, *default:* `nil`) - Optional information about the security animation. If this is set a security animation will be rendered on pass details.
  *   `secondaryRewardsTier` (*type:* `String.t`, *default:* `nil`) - The secondary rewards tier, such as "Gold" or "Platinum."
  *   `rewardsTierLabel` (*type:* `String.t`, *default:* `nil`) - The rewards tier label, such as "Rewards Tier." Recommended maximum length is 9 characters to ensure full string is displayed on smaller screens.
  *   `localizedProgramName` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the program_name. The app may display an ellipsis after the first 20 characters to ensure full string is displayed on smaller screens.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#loyaltyClass"`.
  *   `hexBackgroundColor` (*type:* `String.t`, *default:* `nil`) - The background color for the card. If not set the dominant color of the hero image is used, and if no hero image is set, the dominant color of the logo is used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also use the shorthand version of the RGB triplet which is #rgb, such as `#fc0`.
  *   `localizedAccountNameLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the account_name_label. Recommended maximum length is 15 characters to ensure full string is displayed on smaller screens.
  *   `infoModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.InfoModuleData.t`, *default:* `nil`) - Deprecated. Use textModulesData instead.
  *   `discoverableProgram` (*type:* `GoogleApi.WalletObjects.V1.Model.DiscoverableProgram.t`, *default:* `nil`) - Information about how the class may be discovered and instantiated from within the Google Pay app.
  *   `review` (*type:* `GoogleApi.WalletObjects.V1.Model.Review.t`, *default:* `nil`) - The review comments set by the platform when a class is marked `approved` or `rejected`.
  *   `rewardsTier` (*type:* `String.t`, *default:* `nil`) - The rewards tier, such as "Gold" or "Platinum." Recommended maximum length is 7 characters to ensure full string is displayed on smaller screens.
  *   `programName` (*type:* `String.t`, *default:* `nil`) - Required. The program name, such as "Adam's Apparel". The app may display an ellipsis after the first 20 characters to ensure full string is displayed on smaller screens.
  *   `localizedIssuerName` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `localizedSecondaryRewardsTier` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the secondary_rewards_tier.
  *   `wordMark` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Deprecated.
  *   `localizedAccountIdLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the account_id_label. Recommended maximum length is 15 characters to ensure full string is displayed on smaller screens.
  *   `accountNameLabel` (*type:* `String.t`, *default:* `nil`) - The account name label, such as "Member Name." Recommended maximum length is 15 characters to ensure full string is displayed on smaller screens.
  *   `issuerName` (*type:* `String.t`, *default:* `nil`) - Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `allowMultipleUsersPerObject` (*type:* `boolean()`, *default:* `nil`) - Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
  *   `imageModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t)`, *default:* `nil`) - Image module data. The maximum number of these fields displayed is 1 from object level and 1 for class object level.
  *   `merchantLocations` (*type:* `list(GoogleApi.WalletObjects.V1.Model.MerchantLocation.t)`, *default:* `nil`) - Merchant locations. There is a maximum of ten on the class. Any additional MerchantLocations added beyond the 10 will be rejected. These locations will trigger a notification when a user enters within a Google-set radius of the point. This field replaces the deprecated LatLongPoints.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Deprecated
  *   `locations` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t)`, *default:* `nil`) - Note: This field is currently not supported to trigger geo notifications.
  *   `notifyPreference` (*type:* `String.t`, *default:* `nil`) - Whether or not field updates to this class should trigger notifications. When set to NOTIFY, we will attempt to trigger a field update notification to users. These notifications will only be sent to users if the field is part of an allowlist. If not specified, no notification will be triggered. This setting is ephemeral and needs to be set with each PATCH or UPDATE request, otherwise a notification will not be triggered.
  *   `homepageUri` (*type:* `GoogleApi.WalletObjects.V1.Model.Uri.t`, *default:* `nil`) - The URI of your application's home page. Populating the URI in this field results in the exact same behavior as populating an URI in linksModuleData (when an object is rendered, a link to the homepage is shown in what would usually be thought of as the linksModuleData section of the object).
  *   `textModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t)`, *default:* `nil`) - Text module data. If text module data is also defined on the class, both will be displayed. The maximum number of these fields displayed is 10 from the object and 10 from the class.
  *   `linksModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.LinksModuleData.t`, *default:* `nil`) - Links module data. If links module data is also defined on the object, both will be displayed.
  *   `wideProgramLogo` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - The wide logo of the loyalty program or company. When provided, this will be used in place of the program logo in the top left of the card view.
  *   `messages` (*type:* `list(GoogleApi.WalletObjects.V1.Model.Message.t)`, *default:* `nil`) - An array of messages displayed in the app. All users of this object will receive its associated messages. The maximum number of these fields is 10.
  *   `reviewStatus` (*type:* `String.t`, *default:* `nil`) - Required. The status of the class. This field can be set to `draft` or `underReview` using the insert, patch, or update API calls. Once the review state is changed from `draft` it may not be changed back to `draft`. You should keep this field to `draft` when the class is under development. A `draft` class cannot be used to create any object. You should set this field to `underReview` when you believe the class is ready for use. The platform will automatically set this field to `approved` and it can be immediately used to create or migrate objects. When updating an already `approved` class you should keep setting this field to `underReview`.
  *   `multipleDevicesAndHoldersAllowedStatus` (*type:* `String.t`, *default:* `nil`) - Identifies whether multiple users and devices will save the same object referencing this class.
  *   `heroImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Optional banner image displayed on the front of the card. If none is present, nothing will be displayed. The image will display at 100% width.
  *   `localizedRewardsTierLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the rewards_tier_label. Recommended maximum length is 9 characters to ensure full string is displayed on smaller screens.
  *   `programLogo` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Required. The logo of the loyalty program or company. This logo is displayed in both the details and list views of the app.
  *   `classTemplateInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t`, *default:* `nil`) - Template information about how the class should be displayed. If unset, Google will fallback to a default set of fields to display.
  *   `callbackOptions` (*type:* `GoogleApi.WalletObjects.V1.Model.CallbackOptions.t`, *default:* `nil`) - Callback options to be used to call the issuer back for every save/delete of an object for this class by the end-user. All objects of this class are eligible for the callback.
  *   `enableSmartTap` (*type:* `boolean()`, *default:* `nil`) - Identifies whether this class supports Smart Tap. The `redemptionIssuers` and one of object level `smartTapRedemptionLevel`, barcode.value`, or `accountId` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `accountIdLabel` (*type:* `String.t`, *default:* `nil`) - The account ID label, such as "Member ID." Recommended maximum length is 15 characters to ensure full string is displayed on smaller screens.
  *   `valueAddedModuleData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ValueAddedModuleData.t)`, *default:* `nil`) - Optional value added module data. Maximum of ten on the class. For a pass only ten will be displayed, prioritizing those from the object.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - Country code used to display the card's country (when the user is not in that country), as well as to display localized content when content is not available in the user's locale.
  *   `viewUnlockRequirement` (*type:* `String.t`, *default:* `nil`) - View Unlock Requirement options for the loyalty card.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow the format issuer ID. identifier where the former is issued by Google and latter is chosen by you. Your unique identifier should only include alphanumeric characters, '.', '_', or '-'.
  *   `localizedRewardsTier` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the rewards_tier. Recommended maximum length is 7 characters to ensure full string is displayed on smaller screens.
  *   `localizedSecondaryRewardsTierLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the secondary_rewards_tier_label.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appLinkData => GoogleApi.WalletObjects.V1.Model.AppLinkData.t() | nil,
          :secondaryRewardsTierLabel => String.t() | nil,
          :redemptionIssuers => list(String.t()) | nil,
          :securityAnimation => GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t() | nil,
          :secondaryRewardsTier => String.t() | nil,
          :rewardsTierLabel => String.t() | nil,
          :localizedProgramName => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :kind => String.t() | nil,
          :hexBackgroundColor => String.t() | nil,
          :localizedAccountNameLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :infoModuleData => GoogleApi.WalletObjects.V1.Model.InfoModuleData.t() | nil,
          :discoverableProgram => GoogleApi.WalletObjects.V1.Model.DiscoverableProgram.t() | nil,
          :review => GoogleApi.WalletObjects.V1.Model.Review.t() | nil,
          :rewardsTier => String.t() | nil,
          :programName => String.t() | nil,
          :localizedIssuerName => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :localizedSecondaryRewardsTier =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :wordMark => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :localizedAccountIdLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :accountNameLabel => String.t() | nil,
          :issuerName => String.t() | nil,
          :allowMultipleUsersPerObject => boolean() | nil,
          :imageModulesData => list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t()) | nil,
          :merchantLocations => list(GoogleApi.WalletObjects.V1.Model.MerchantLocation.t()) | nil,
          :version => String.t() | nil,
          :locations => list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t()) | nil,
          :notifyPreference => String.t() | nil,
          :homepageUri => GoogleApi.WalletObjects.V1.Model.Uri.t() | nil,
          :textModulesData => list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t()) | nil,
          :linksModuleData => GoogleApi.WalletObjects.V1.Model.LinksModuleData.t() | nil,
          :wideProgramLogo => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :messages => list(GoogleApi.WalletObjects.V1.Model.Message.t()) | nil,
          :reviewStatus => String.t() | nil,
          :multipleDevicesAndHoldersAllowedStatus => String.t() | nil,
          :heroImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :localizedRewardsTierLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :programLogo => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :classTemplateInfo => GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t() | nil,
          :callbackOptions => GoogleApi.WalletObjects.V1.Model.CallbackOptions.t() | nil,
          :enableSmartTap => boolean() | nil,
          :accountIdLabel => String.t() | nil,
          :valueAddedModuleData =>
            list(GoogleApi.WalletObjects.V1.Model.ValueAddedModuleData.t()) | nil,
          :countryCode => String.t() | nil,
          :viewUnlockRequirement => String.t() | nil,
          :id => String.t() | nil,
          :localizedRewardsTier => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :localizedSecondaryRewardsTierLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil
        }

  field(:appLinkData, as: GoogleApi.WalletObjects.V1.Model.AppLinkData)
  field(:secondaryRewardsTierLabel)
  field(:redemptionIssuers, type: :list)
  field(:securityAnimation, as: GoogleApi.WalletObjects.V1.Model.SecurityAnimation)
  field(:secondaryRewardsTier)
  field(:rewardsTierLabel)
  field(:localizedProgramName, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:kind)
  field(:hexBackgroundColor)
  field(:localizedAccountNameLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:infoModuleData, as: GoogleApi.WalletObjects.V1.Model.InfoModuleData)
  field(:discoverableProgram, as: GoogleApi.WalletObjects.V1.Model.DiscoverableProgram)
  field(:review, as: GoogleApi.WalletObjects.V1.Model.Review)
  field(:rewardsTier)
  field(:programName)
  field(:localizedIssuerName, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:localizedSecondaryRewardsTier, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:wordMark, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:localizedAccountIdLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:accountNameLabel)
  field(:issuerName)
  field(:allowMultipleUsersPerObject)
  field(:imageModulesData, as: GoogleApi.WalletObjects.V1.Model.ImageModuleData, type: :list)
  field(:merchantLocations, as: GoogleApi.WalletObjects.V1.Model.MerchantLocation, type: :list)
  field(:version)
  field(:locations, as: GoogleApi.WalletObjects.V1.Model.LatLongPoint, type: :list)
  field(:notifyPreference)
  field(:homepageUri, as: GoogleApi.WalletObjects.V1.Model.Uri)
  field(:textModulesData, as: GoogleApi.WalletObjects.V1.Model.TextModuleData, type: :list)
  field(:linksModuleData, as: GoogleApi.WalletObjects.V1.Model.LinksModuleData)
  field(:wideProgramLogo, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:messages, as: GoogleApi.WalletObjects.V1.Model.Message, type: :list)
  field(:reviewStatus)
  field(:multipleDevicesAndHoldersAllowedStatus)
  field(:heroImage, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:localizedRewardsTierLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:programLogo, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:classTemplateInfo, as: GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo)
  field(:callbackOptions, as: GoogleApi.WalletObjects.V1.Model.CallbackOptions)
  field(:enableSmartTap)
  field(:accountIdLabel)

  field(:valueAddedModuleData,
    as: GoogleApi.WalletObjects.V1.Model.ValueAddedModuleData,
    type: :list
  )

  field(:countryCode)
  field(:viewUnlockRequirement)
  field(:id)
  field(:localizedRewardsTier, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:localizedSecondaryRewardsTierLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.LoyaltyClass do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.LoyaltyClass.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.LoyaltyClass do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
