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

defmodule GoogleApi.WalletObjects.V1.Model.GenericObject do
  @moduledoc """
  Generic Object

  ## Attributes

  *   `appLinkData` (*type:* `GoogleApi.WalletObjects.V1.Model.AppLinkData.t`, *default:* `nil`) - Optional app or website link that will be displayed as a button on the front of the pass. If AppLinkData is provided for the corresponding class only object AppLinkData will be displayed.
  *   `barcode` (*type:* `GoogleApi.WalletObjects.V1.Model.Barcode.t`, *default:* `nil`) - The barcode type and value. If pass does not have a barcode, we can allow the issuer to set Barcode.alternate_text and display just that.
  *   `cardTitle` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Required. The header of the pass. This is usually the Business name such as "XXX Gym", "AAA Insurance". This field is required and appears in the header row at the very top of the pass.
  *   `classId` (*type:* `String.t`, *default:* `nil`) - Required. The class associated with this object. The class must be of the same type as this object, must already exist, and must be approved. Class IDs should follow the format `issuerID.identifier` where `issuerID` is issued by Google and `identifier` is chosen by you.
  *   `genericType` (*type:* `String.t`, *default:* `nil`) - Specify which `GenericType` the card belongs to.
  *   `groupingInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.GroupingInfo.t`, *default:* `nil`) - Information that controls how passes are grouped together.
  *   `hasUsers` (*type:* `boolean()`, *default:* `nil`) - Indicates if the object has users. This field is set by the platform.
  *   `header` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Required. The title of the pass, such as "50% off coupon" or "Library card" or "Voucher". This field is required and appears in the title row of the pass detail view.
  *   `heroImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Banner image displayed on the front of the card if present. The image will be displayed at 100% width.
  *   `hexBackgroundColor` (*type:* `String.t`, *default:* `nil`) - The background color for the card. If not set, the dominant color of the hero image is used, and if no hero image is set, the dominant color of the logo is used and if logo is not set, a color would be chosen by Google.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier for an object. This ID must be unique across all objects from an issuer. This value needs to follow the format `issuerID.identifier` where `issuerID` is issued by Google and `identifier` is chosen by you. The unique identifier can only include alphanumeric characters, `.`, `_`, or `-`.
  *   `imageModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t)`, *default:* `nil`) - Image module data. Only one of the image from class and one from object level will be rendered when both set.
  *   `linkedObjectIds` (*type:* `list(String.t)`, *default:* `nil`) - linked_object_ids are a list of other objects such as event ticket, loyalty, offer, generic, giftcard, transit and boarding pass that should be automatically attached to this generic object. If a user had saved this generic card, then these linked_object_ids would be automatically pushed to the user's wallet (unless they turned off the setting to receive such linked passes). Make sure that objects present in linked_object_ids are already inserted - if not, calls would fail. Once linked, the linked objects cannot be unlinked. You cannot link objects belonging to another issuer. There is a limit to the number of objects that can be linked to a single object. After the limit is reached, new linked objects in the call will be ignored silently. Object IDs should follow the format issuer ID. identifier where the former is issued by Google and the latter is chosen by you.
  *   `linksModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.LinksModuleData.t`, *default:* `nil`) - Links module data. If `linksModuleData` is also defined on the class, both will be displayed. The maximum number of these fields displayed is 10 from class and 10 from object.
  *   `logo` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - The logo image of the pass. This image is displayed in the card detail view in upper left, and also on the list/thumbnail view. If the logo is not present, the first letter of `cardTitle` would be shown as logo.
  *   `merchantLocations` (*type:* `list(GoogleApi.WalletObjects.V1.Model.MerchantLocation.t)`, *default:* `nil`) - Merchant locations. There is a maximum of ten on the object. Any additional MerchantLocations added beyond the 10 will be rejected. These locations will trigger a notification when a user enters within a Google-set radius of the point. This field replaces the deprecated LatLongPoints.
  *   `messages` (*type:* `list(GoogleApi.WalletObjects.V1.Model.Message.t)`, *default:* `nil`) - An array of messages displayed in the app. All users of this object will receive its associated messages. The maximum number of these fields is 10.
  *   `notifications` (*type:* `GoogleApi.WalletObjects.V1.Model.Notifications.t`, *default:* `nil`) - The notification settings that are enabled for this object.
  *   `passConstraints` (*type:* `GoogleApi.WalletObjects.V1.Model.PassConstraints.t`, *default:* `nil`) - Pass constraints for the object. Includes limiting NFC and screenshot behaviors.
  *   `rotatingBarcode` (*type:* `GoogleApi.WalletObjects.V1.Model.RotatingBarcode.t`, *default:* `nil`) - The rotating barcode settings/details.
  *   `saveRestrictions` (*type:* `GoogleApi.WalletObjects.V1.Model.SaveRestrictions.t`, *default:* `nil`) - Restrictions on the object that needs to be verified before the user tries to save the pass. Note that this restrictions will only be applied during save time. If the restrictions changed after a user saves the pass, the new restrictions will not be applied to an already saved pass.
  *   `smartTapRedemptionValue` (*type:* `String.t`, *default:* `nil`) - The value that will be transmitted to a Smart Tap certified terminal over NFC for this object. The class level fields `enableSmartTap` and `redemptionIssuers` must also be set up correctly in order for the pass to support Smart Tap. Only ASCII characters are supported.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the object. This field is used to determine how an object is displayed in the app. For example, an `inactive` object is moved to the "Expired passes" section. If this is not provided, the object would be considered `ACTIVE`.
  *   `subheader` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - The title label of the pass, such as location where this pass can be used. Appears right above the title in the title row in the pass detail view.
  *   `textModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t)`, *default:* `nil`) - Text module data. If `textModulesData` is also defined on the class, both will be displayed. The maximum number of these fields displayed is 10 from class and 10 from object.
  *   `validTimeInterval` (*type:* `GoogleApi.WalletObjects.V1.Model.TimeInterval.t`, *default:* `nil`) - The time period this object will be considered valid or usable. When the time period is passed, the object will be considered expired, which will affect the rendering on user's devices.
  *   `valueAddedModuleData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ValueAddedModuleData.t)`, *default:* `nil`) - Optional value added module data. Maximum of ten on the object.
  *   `wideLogo` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - The wide logo of the pass. When provided, this will be used in place of the logo in the top left of the card view.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appLinkData => GoogleApi.WalletObjects.V1.Model.AppLinkData.t() | nil,
          :barcode => GoogleApi.WalletObjects.V1.Model.Barcode.t() | nil,
          :cardTitle => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :classId => String.t() | nil,
          :genericType => String.t() | nil,
          :groupingInfo => GoogleApi.WalletObjects.V1.Model.GroupingInfo.t() | nil,
          :hasUsers => boolean() | nil,
          :header => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :heroImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :hexBackgroundColor => String.t() | nil,
          :id => String.t() | nil,
          :imageModulesData => list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t()) | nil,
          :linkedObjectIds => list(String.t()) | nil,
          :linksModuleData => GoogleApi.WalletObjects.V1.Model.LinksModuleData.t() | nil,
          :logo => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :merchantLocations => list(GoogleApi.WalletObjects.V1.Model.MerchantLocation.t()) | nil,
          :messages => list(GoogleApi.WalletObjects.V1.Model.Message.t()) | nil,
          :notifications => GoogleApi.WalletObjects.V1.Model.Notifications.t() | nil,
          :passConstraints => GoogleApi.WalletObjects.V1.Model.PassConstraints.t() | nil,
          :rotatingBarcode => GoogleApi.WalletObjects.V1.Model.RotatingBarcode.t() | nil,
          :saveRestrictions => GoogleApi.WalletObjects.V1.Model.SaveRestrictions.t() | nil,
          :smartTapRedemptionValue => String.t() | nil,
          :state => String.t() | nil,
          :subheader => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :textModulesData => list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t()) | nil,
          :validTimeInterval => GoogleApi.WalletObjects.V1.Model.TimeInterval.t() | nil,
          :valueAddedModuleData =>
            list(GoogleApi.WalletObjects.V1.Model.ValueAddedModuleData.t()) | nil,
          :wideLogo => GoogleApi.WalletObjects.V1.Model.Image.t() | nil
        }

  field(:appLinkData, as: GoogleApi.WalletObjects.V1.Model.AppLinkData)
  field(:barcode, as: GoogleApi.WalletObjects.V1.Model.Barcode)
  field(:cardTitle, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:classId)
  field(:genericType)
  field(:groupingInfo, as: GoogleApi.WalletObjects.V1.Model.GroupingInfo)
  field(:hasUsers)
  field(:header, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:heroImage, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:hexBackgroundColor)
  field(:id)
  field(:imageModulesData, as: GoogleApi.WalletObjects.V1.Model.ImageModuleData, type: :list)
  field(:linkedObjectIds, type: :list)
  field(:linksModuleData, as: GoogleApi.WalletObjects.V1.Model.LinksModuleData)
  field(:logo, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:merchantLocations, as: GoogleApi.WalletObjects.V1.Model.MerchantLocation, type: :list)
  field(:messages, as: GoogleApi.WalletObjects.V1.Model.Message, type: :list)
  field(:notifications, as: GoogleApi.WalletObjects.V1.Model.Notifications)
  field(:passConstraints, as: GoogleApi.WalletObjects.V1.Model.PassConstraints)
  field(:rotatingBarcode, as: GoogleApi.WalletObjects.V1.Model.RotatingBarcode)
  field(:saveRestrictions, as: GoogleApi.WalletObjects.V1.Model.SaveRestrictions)
  field(:smartTapRedemptionValue)
  field(:state)
  field(:subheader, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:textModulesData, as: GoogleApi.WalletObjects.V1.Model.TextModuleData, type: :list)
  field(:validTimeInterval, as: GoogleApi.WalletObjects.V1.Model.TimeInterval)

  field(:valueAddedModuleData,
    as: GoogleApi.WalletObjects.V1.Model.ValueAddedModuleData,
    type: :list
  )

  field(:wideLogo, as: GoogleApi.WalletObjects.V1.Model.Image)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.GenericObject do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.GenericObject.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.GenericObject do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
