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

defmodule GoogleApi.WalletObjects.V1.Model.TransitClass do
  @moduledoc """


  ## Attributes

  *   `appLinkData` (*type:* `GoogleApi.WalletObjects.V1.Model.AppLinkData.t`, *default:* `nil`) - Optional app or website link that will be displayed as a button on the front of the pass. If AppLinkData is provided for the corresponding object that will be used instead.
  *   `languageOverride` (*type:* `String.t`, *default:* `nil`) - If this field is present, transit tickets served to a user's device will always be in this language. Represents the BCP 47 language tag. Example values are "en-US", "en-GB", "de", or "de-AT".
  *   `redemptionIssuers` (*type:* `list(String.t)`, *default:* `nil`) - Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are identified by their issuer ID. Redemption issuers must have at least one Smart Tap key configured. The `enableSmartTap` and object level `smartTapRedemptionLevel` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `securityAnimation` (*type:* `GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t`, *default:* `nil`) - Optional information about the security animation. If this is set a security animation will be rendered on pass details.
  *   `customPurchaseFaceValueLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the purchase face value (`transitObject.purchaseDetails.ticketCost.faceValue`).
  *   `customConcessionCategoryLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the transit concession category value (`transitObject.concessionCategory`).
  *   `customCoachLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the coach value (`transitObject.ticketLeg.ticketSeat.coach`).
  *   `customRouteRestrictionsLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the route restrictions value (`transitObject.ticketRestrictions.routeRestrictions`).
  *   `transitType` (*type:* `String.t`, *default:* `nil`) - Required. The type of transit this class represents, such as "bus".
  *   `logo` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Required. The logo image of the ticket. This image is displayed in the card detail view of the app.
  *   `hexBackgroundColor` (*type:* `String.t`, *default:* `nil`) - The background color for the card. If not set the dominant color of the hero image is used, and if no hero image is set, the dominant color of the logo is used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also use the shorthand version of the RGB triplet which is #rgb, such as `#fc0`.
  *   `customFareNameLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the transit fare name value (`transitObject.ticketLeg.fareName`).
  *   `customCarriageLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the carriage value (`transitObject.ticketLeg.carriage`).
  *   `infoModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.InfoModuleData.t`, *default:* `nil`) - Deprecated. Use textModulesData instead.
  *   `customTimeRestrictionsLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the time restrictions details value (`transitObject.ticketRestrictions.timeRestrictions`).
  *   `review` (*type:* `GoogleApi.WalletObjects.V1.Model.Review.t`, *default:* `nil`) - The review comments set by the platform when a class is marked `approved` or `rejected`.
  *   `customPurchaseReceiptNumberLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the purchase receipt number value (`transitObject.purchaseDetails.purchaseReceiptNumber`).
  *   `customTicketNumberLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the ticket number value (`transitObject.ticketNumber`).
  *   `localizedIssuerName` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `customOtherRestrictionsLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the other restrictions value (`transitObject.ticketRestrictions.otherRestrictions`).
  *   `wordMark` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Deprecated.
  *   `customPurchasePriceLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the purchase price value (`transitObject.purchaseDetails.ticketCost.purchasePrice`).
  *   `customConfirmationCodeLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the confirmation code value (`transitObject.purchaseDetails.confirmationCode`).
  *   `customPlatformLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the boarding platform value (`transitObject.ticketLeg.platform`).
  *   `issuerName` (*type:* `String.t`, *default:* `nil`) - Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `allowMultipleUsersPerObject` (*type:* `boolean()`, *default:* `nil`) - Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
  *   `customFareClassLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the fare class value (`transitObject.ticketLeg.ticketSeat.fareClass`).
  *   `imageModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t)`, *default:* `nil`) - Image module data. The maximum number of these fields displayed is 1 from object level and 1 for class object level.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Deprecated
  *   `locations` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t)`, *default:* `nil`) - Note: This field is currently not supported to trigger geo notifications.
  *   `homepageUri` (*type:* `GoogleApi.WalletObjects.V1.Model.Uri.t`, *default:* `nil`) - The URI of your application's home page. Populating the URI in this field results in the exact same behavior as populating an URI in linksModuleData (when an object is rendered, a link to the homepage is shown in what would usually be thought of as the linksModuleData section of the object).
  *   `textModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t)`, *default:* `nil`) - Text module data. If text module data is also defined on the class, both will be displayed. The maximum number of these fields displayed is 10 from the object and 10 from the class.
  *   `linksModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.LinksModuleData.t`, *default:* `nil`) - Links module data. If links module data is also defined on the object, both will be displayed.
  *   `watermark` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Watermark image to display on the user's device.
  *   `enableSingleLegItinerary` (*type:* `boolean()`, *default:* `nil`) - Controls the display of the single-leg itinerary for this class. By default, an itinerary will only display for multi-leg trips.
  *   `messages` (*type:* `list(GoogleApi.WalletObjects.V1.Model.Message.t)`, *default:* `nil`) - An array of messages displayed in the app. All users of this object will receive its associated messages. The maximum number of these fields is 10.
  *   `reviewStatus` (*type:* `String.t`, *default:* `nil`) - Required. The status of the class. This field can be set to `draft` or `underReview` using the insert, patch, or update API calls. Once the review state is changed from `draft` it may not be changed back to `draft`. You should keep this field to `draft` when the class is under development. A `draft` class cannot be used to create any object. You should set this field to `underReview` when you believe the class is ready for use. The platform will automatically set this field to `approved` and it can be immediately used to create or migrate objects. When updating an already `approved` class you should keep setting this field to `underReview`.
  *   `multipleDevicesAndHoldersAllowedStatus` (*type:* `String.t`, *default:* `nil`) - Identifies whether multiple users and devices will save the same object referencing this class.
  *   `heroImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Optional banner image displayed on the front of the card. If none is present, nothing will be displayed. The image will display at 100% width.
  *   `activationOptions` (*type:* `GoogleApi.WalletObjects.V1.Model.ActivationOptions.t`, *default:* `nil`) - Activation options for an activatable ticket.
  *   `customZoneLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the boarding zone value (`transitObject.ticketLeg.zone`).
  *   `classTemplateInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t`, *default:* `nil`) - Template information about how the class should be displayed. If unset, Google will fallback to a default set of fields to display.
  *   `callbackOptions` (*type:* `GoogleApi.WalletObjects.V1.Model.CallbackOptions.t`, *default:* `nil`) - Callback options to be used to call the issuer back for every save/delete of an object for this class by the end-user. All objects of this class are eligible for the callback.
  *   `customTransitTerminusNameLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the transit terminus name value (`transitObject.ticketLeg.transitTerminusName`).
  *   `enableSmartTap` (*type:* `boolean()`, *default:* `nil`) - Identifies whether this class supports Smart Tap. The `redemptionIssuers` and object level `smartTapRedemptionLevel` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `customRouteRestrictionsDetailsLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the route restrictions details value (`transitObject.ticketRestrictions.routeRestrictionsDetails`).
  *   `transitOperatorName` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - The name of the transit operator.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - Country code used to display the card's country (when the user is not in that country), as well as to display localized content when content is not available in the user's locale.
  *   `customDiscountMessageLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the transit discount message value (`transitObject.purchaseDetails.ticketCost.discountMessage`).
  *   `viewUnlockRequirement` (*type:* `String.t`, *default:* `nil`) - View Unlock Requirement options for the transit ticket.
  *   `customSeatLabel` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - A custom label to use for the seat location value (`transitObject.ticketLeg.ticketSeat.seat`).
  *   `wideLogo` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - The wide logo of the ticket. When provided, this will be used in place of the logo in the top left of the card view.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow the format issuer ID. identifier where the former is issued by Google and latter is chosen by you. Your unique identifier should only include alphanumeric characters, '.', '_', or '-'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appLinkData => GoogleApi.WalletObjects.V1.Model.AppLinkData.t() | nil,
          :languageOverride => String.t() | nil,
          :redemptionIssuers => list(String.t()) | nil,
          :securityAnimation => GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t() | nil,
          :customPurchaseFaceValueLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :customConcessionCategoryLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :customCoachLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :customRouteRestrictionsLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :transitType => String.t() | nil,
          :logo => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :hexBackgroundColor => String.t() | nil,
          :customFareNameLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :customCarriageLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :infoModuleData => GoogleApi.WalletObjects.V1.Model.InfoModuleData.t() | nil,
          :customTimeRestrictionsLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :review => GoogleApi.WalletObjects.V1.Model.Review.t() | nil,
          :customPurchaseReceiptNumberLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :customTicketNumberLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :localizedIssuerName => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :customOtherRestrictionsLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :wordMark => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :customPurchasePriceLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :customConfirmationCodeLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :customPlatformLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :issuerName => String.t() | nil,
          :allowMultipleUsersPerObject => boolean() | nil,
          :customFareClassLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :imageModulesData => list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t()) | nil,
          :version => String.t() | nil,
          :locations => list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t()) | nil,
          :homepageUri => GoogleApi.WalletObjects.V1.Model.Uri.t() | nil,
          :textModulesData => list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t()) | nil,
          :linksModuleData => GoogleApi.WalletObjects.V1.Model.LinksModuleData.t() | nil,
          :watermark => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :enableSingleLegItinerary => boolean() | nil,
          :messages => list(GoogleApi.WalletObjects.V1.Model.Message.t()) | nil,
          :reviewStatus => String.t() | nil,
          :multipleDevicesAndHoldersAllowedStatus => String.t() | nil,
          :heroImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :activationOptions => GoogleApi.WalletObjects.V1.Model.ActivationOptions.t() | nil,
          :customZoneLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :classTemplateInfo => GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t() | nil,
          :callbackOptions => GoogleApi.WalletObjects.V1.Model.CallbackOptions.t() | nil,
          :customTransitTerminusNameLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :enableSmartTap => boolean() | nil,
          :customRouteRestrictionsDetailsLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :transitOperatorName => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :countryCode => String.t() | nil,
          :customDiscountMessageLabel =>
            GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :viewUnlockRequirement => String.t() | nil,
          :customSeatLabel => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :wideLogo => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :id => String.t() | nil
        }

  field(:appLinkData, as: GoogleApi.WalletObjects.V1.Model.AppLinkData)
  field(:languageOverride)
  field(:redemptionIssuers, type: :list)
  field(:securityAnimation, as: GoogleApi.WalletObjects.V1.Model.SecurityAnimation)
  field(:customPurchaseFaceValueLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:customConcessionCategoryLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:customCoachLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:customRouteRestrictionsLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:transitType)
  field(:logo, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:hexBackgroundColor)
  field(:customFareNameLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:customCarriageLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:infoModuleData, as: GoogleApi.WalletObjects.V1.Model.InfoModuleData)
  field(:customTimeRestrictionsLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:review, as: GoogleApi.WalletObjects.V1.Model.Review)
  field(:customPurchaseReceiptNumberLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:customTicketNumberLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:localizedIssuerName, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:customOtherRestrictionsLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:wordMark, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:customPurchasePriceLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:customConfirmationCodeLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:customPlatformLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:issuerName)
  field(:allowMultipleUsersPerObject)
  field(:customFareClassLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:imageModulesData, as: GoogleApi.WalletObjects.V1.Model.ImageModuleData, type: :list)
  field(:version)
  field(:locations, as: GoogleApi.WalletObjects.V1.Model.LatLongPoint, type: :list)
  field(:homepageUri, as: GoogleApi.WalletObjects.V1.Model.Uri)
  field(:textModulesData, as: GoogleApi.WalletObjects.V1.Model.TextModuleData, type: :list)
  field(:linksModuleData, as: GoogleApi.WalletObjects.V1.Model.LinksModuleData)
  field(:watermark, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:enableSingleLegItinerary)
  field(:messages, as: GoogleApi.WalletObjects.V1.Model.Message, type: :list)
  field(:reviewStatus)
  field(:multipleDevicesAndHoldersAllowedStatus)
  field(:heroImage, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:activationOptions, as: GoogleApi.WalletObjects.V1.Model.ActivationOptions)
  field(:customZoneLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:classTemplateInfo, as: GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo)
  field(:callbackOptions, as: GoogleApi.WalletObjects.V1.Model.CallbackOptions)
  field(:customTransitTerminusNameLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:enableSmartTap)

  field(:customRouteRestrictionsDetailsLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)

  field(:transitOperatorName, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:countryCode)
  field(:customDiscountMessageLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:viewUnlockRequirement)
  field(:customSeatLabel, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:wideLogo, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.TransitClass do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.TransitClass.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.TransitClass do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
