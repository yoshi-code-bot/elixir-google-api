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

defmodule GoogleApi.WalletObjects.V1.Model.LoyaltyObject do
  @moduledoc """


  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The loyalty account identifier. Recommended maximum length is 20 characters.
  *   `accountName` (*type:* `String.t`, *default:* `nil`) - The loyalty account holder name, such as "John Smith." Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `appLinkData` (*type:* `GoogleApi.WalletObjects.V1.Model.AppLinkData.t`, *default:* `nil`) - Optional app or website link that will be displayed as a button on the front of the pass. If AppLinkData is provided for the corresponding class only object AppLinkData will be displayed.
  *   `barcode` (*type:* `GoogleApi.WalletObjects.V1.Model.Barcode.t`, *default:* `nil`) - The barcode type and value.
  *   `classId` (*type:* `String.t`, *default:* `nil`) - Required. The class associated with this object. The class must be of the same type as this object, must already exist, and must be approved. Class IDs should follow the format issuer ID.identifier where the former is issued by Google and latter is chosen by you.
  *   `classReference` (*type:* `GoogleApi.WalletObjects.V1.Model.LoyaltyClass.t`, *default:* `nil`) - A copy of the inherited fields of the parent class. These fields are retrieved during a GET.
  *   `disableExpirationNotification` (*type:* `boolean()`, *default:* `nil`) - Indicates if notifications should explicitly be suppressed. If this field is set to true, regardless of the `messages` field, expiration notifications to the user will be suppressed. By default, this field is set to false. Currently, this can only be set for offers.
  *   `groupingInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.GroupingInfo.t`, *default:* `nil`) - Information that controls how passes are grouped together.
  *   `hasLinkedDevice` (*type:* `boolean()`, *default:* `nil`) - Whether this object is currently linked to a single device. This field is set by the platform when a user saves the object, linking it to their device. Intended for use by select partners. Contact support for additional information.
  *   `hasUsers` (*type:* `boolean()`, *default:* `nil`) - Indicates if the object has users. This field is set by the platform.
  *   `heroImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Optional banner image displayed on the front of the card. If none is present, hero image of the class, if present, will be displayed. If hero image of the class is also not present, nothing will be displayed.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier for an object. This ID must be unique across all objects from an issuer. This value should follow the format issuer ID.identifier where the former is issued by Google and latter is chosen by you. The unique identifier should only include alphanumeric characters, '.', '_', or '-'.
  *   `imageModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t)`, *default:* `nil`) - Image module data. The maximum number of these fields displayed is 1 from object level and 1 for class object level.
  *   `infoModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.InfoModuleData.t`, *default:* `nil`) - Deprecated. Use textModulesData instead.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#loyaltyObject"`.
  *   `linkedOfferIds` (*type:* `list(String.t)`, *default:* `nil`) - A list of offer objects linked to this loyalty card. The offer objects must already exist. Offer object IDs should follow the format issuer ID. identifier where the former is issued by Google and latter is chosen by you.
  *   `linksModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.LinksModuleData.t`, *default:* `nil`) - Links module data. If links module data is also defined on the class, both will be displayed.
  *   `locations` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t)`, *default:* `nil`) - Note: This field is currently not supported to trigger geo notifications.
  *   `loyaltyPoints` (*type:* `GoogleApi.WalletObjects.V1.Model.LoyaltyPoints.t`, *default:* `nil`) - The loyalty reward points label, balance, and type.
  *   `messages` (*type:* `list(GoogleApi.WalletObjects.V1.Model.Message.t)`, *default:* `nil`) - An array of messages displayed in the app. All users of this object will receive its associated messages. The maximum number of these fields is 10.
  *   `passConstraints` (*type:* `GoogleApi.WalletObjects.V1.Model.PassConstraints.t`, *default:* `nil`) - Pass constraints for the object. Includes limiting NFC and screenshot behaviors.
  *   `rotatingBarcode` (*type:* `GoogleApi.WalletObjects.V1.Model.RotatingBarcode.t`, *default:* `nil`) - The rotating barcode type and value.
  *   `saveRestrictions` (*type:* `GoogleApi.WalletObjects.V1.Model.SaveRestrictions.t`, *default:* `nil`) - Restrictions on the object that needs to be verified before the user tries to save the pass. Note that this restrictions will only be applied during save time. If the restrictions changed after a user saves the pass, the new restrictions will not be applied to an already saved pass.
  *   `secondaryLoyaltyPoints` (*type:* `GoogleApi.WalletObjects.V1.Model.LoyaltyPoints.t`, *default:* `nil`) - The secondary loyalty reward points label, balance, and type. Shown in addition to the primary loyalty points.
  *   `smartTapRedemptionValue` (*type:* `String.t`, *default:* `nil`) - The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. The class level fields `enableSmartTap` and `redemptionIssuers` must also be set up correctly in order for the pass to support Smart Tap. Only ASCII characters are supported. If this value is not set but the class level fields `enableSmartTap` and `redemptionIssuers` are set up correctly, the `barcode.value` or the `accountId` fields are used as fallback if present.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Required. The state of the object. This field is used to determine how an object is displayed in the app. For example, an `inactive` object is moved to the "Expired passes" section.
  *   `textModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t)`, *default:* `nil`) - Text module data. If text module data is also defined on the class, both will be displayed. The maximum number of these fields displayed is 10 from the object and 10 from the class.
  *   `validTimeInterval` (*type:* `GoogleApi.WalletObjects.V1.Model.TimeInterval.t`, *default:* `nil`) - The time period this object will be `active` and object can be used. An object's state will be changed to `expired` when this time period has passed.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Deprecated
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :accountName => String.t() | nil,
          :appLinkData => GoogleApi.WalletObjects.V1.Model.AppLinkData.t() | nil,
          :barcode => GoogleApi.WalletObjects.V1.Model.Barcode.t() | nil,
          :classId => String.t() | nil,
          :classReference => GoogleApi.WalletObjects.V1.Model.LoyaltyClass.t() | nil,
          :disableExpirationNotification => boolean() | nil,
          :groupingInfo => GoogleApi.WalletObjects.V1.Model.GroupingInfo.t() | nil,
          :hasLinkedDevice => boolean() | nil,
          :hasUsers => boolean() | nil,
          :heroImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :id => String.t() | nil,
          :imageModulesData => list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t()) | nil,
          :infoModuleData => GoogleApi.WalletObjects.V1.Model.InfoModuleData.t() | nil,
          :kind => String.t() | nil,
          :linkedOfferIds => list(String.t()) | nil,
          :linksModuleData => GoogleApi.WalletObjects.V1.Model.LinksModuleData.t() | nil,
          :locations => list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t()) | nil,
          :loyaltyPoints => GoogleApi.WalletObjects.V1.Model.LoyaltyPoints.t() | nil,
          :messages => list(GoogleApi.WalletObjects.V1.Model.Message.t()) | nil,
          :passConstraints => GoogleApi.WalletObjects.V1.Model.PassConstraints.t() | nil,
          :rotatingBarcode => GoogleApi.WalletObjects.V1.Model.RotatingBarcode.t() | nil,
          :saveRestrictions => GoogleApi.WalletObjects.V1.Model.SaveRestrictions.t() | nil,
          :secondaryLoyaltyPoints => GoogleApi.WalletObjects.V1.Model.LoyaltyPoints.t() | nil,
          :smartTapRedemptionValue => String.t() | nil,
          :state => String.t() | nil,
          :textModulesData => list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t()) | nil,
          :validTimeInterval => GoogleApi.WalletObjects.V1.Model.TimeInterval.t() | nil,
          :version => String.t() | nil
        }

  field(:accountId)
  field(:accountName)
  field(:appLinkData, as: GoogleApi.WalletObjects.V1.Model.AppLinkData)
  field(:barcode, as: GoogleApi.WalletObjects.V1.Model.Barcode)
  field(:classId)
  field(:classReference, as: GoogleApi.WalletObjects.V1.Model.LoyaltyClass)
  field(:disableExpirationNotification)
  field(:groupingInfo, as: GoogleApi.WalletObjects.V1.Model.GroupingInfo)
  field(:hasLinkedDevice)
  field(:hasUsers)
  field(:heroImage, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:id)
  field(:imageModulesData, as: GoogleApi.WalletObjects.V1.Model.ImageModuleData, type: :list)
  field(:infoModuleData, as: GoogleApi.WalletObjects.V1.Model.InfoModuleData)
  field(:kind)
  field(:linkedOfferIds, type: :list)
  field(:linksModuleData, as: GoogleApi.WalletObjects.V1.Model.LinksModuleData)
  field(:locations, as: GoogleApi.WalletObjects.V1.Model.LatLongPoint, type: :list)
  field(:loyaltyPoints, as: GoogleApi.WalletObjects.V1.Model.LoyaltyPoints)
  field(:messages, as: GoogleApi.WalletObjects.V1.Model.Message, type: :list)
  field(:passConstraints, as: GoogleApi.WalletObjects.V1.Model.PassConstraints)
  field(:rotatingBarcode, as: GoogleApi.WalletObjects.V1.Model.RotatingBarcode)
  field(:saveRestrictions, as: GoogleApi.WalletObjects.V1.Model.SaveRestrictions)
  field(:secondaryLoyaltyPoints, as: GoogleApi.WalletObjects.V1.Model.LoyaltyPoints)
  field(:smartTapRedemptionValue)
  field(:state)
  field(:textModulesData, as: GoogleApi.WalletObjects.V1.Model.TextModuleData, type: :list)
  field(:validTimeInterval, as: GoogleApi.WalletObjects.V1.Model.TimeInterval)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.LoyaltyObject do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.LoyaltyObject.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.LoyaltyObject do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
