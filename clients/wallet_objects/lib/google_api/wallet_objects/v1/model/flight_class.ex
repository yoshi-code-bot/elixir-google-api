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

defmodule GoogleApi.WalletObjects.V1.Model.FlightClass do
  @moduledoc """


  ## Attributes

  *   `messages` (*type:* `list(GoogleApi.WalletObjects.V1.Model.Message.t)`, *default:* `nil`) - An array of messages displayed in the app. All users of this object will receive its associated messages. The maximum number of these fields is 10.
  *   `localGateClosingDateTime` (*type:* `String.t`, *default:* `nil`) - The gate closing time as it would be printed on the boarding pass. Do not set this field if you do not want to print it in the boarding pass. This is an ISO 8601 extended format date/time without an offset. Time may be specified up to millisecond precision. eg: `2027-03-05T06:30:00` This should be the local date/time at the airport (not a UTC time). Google will reject the request if UTC offset is provided. Time zones will be calculated by Google based on departure airport.
  *   `destination` (*type:* `GoogleApi.WalletObjects.V1.Model.AirportInfo.t`, *default:* `nil`) - Required. Destination airport.
  *   `homepageUri` (*type:* `GoogleApi.WalletObjects.V1.Model.Uri.t`, *default:* `nil`) - The URI of your application's home page. Populating the URI in this field results in the exact same behavior as populating an URI in linksModuleData (when an object is rendered, a link to the homepage is shown in what would usually be thought of as the linksModuleData section of the object).
  *   `wordMark` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Deprecated.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - Country code used to display the card's country (when the user is not in that country), as well as to display localized content when content is not available in the user's locale.
  *   `classTemplateInfo` (*type:* `GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t`, *default:* `nil`) - Template information about how the class should be displayed. If unset, Google will fallback to a default set of fields to display.
  *   `linksModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.LinksModuleData.t`, *default:* `nil`) - Links module data. If links module data is also defined on the object, both will be displayed.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string `"walletobjects#flightClass"`.
  *   `localizedIssuerName` (*type:* `GoogleApi.WalletObjects.V1.Model.LocalizedString.t`, *default:* `nil`) - Translated strings for the issuer_name. Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `multipleDevicesAndHoldersAllowedStatus` (*type:* `String.t`, *default:* `nil`) - Identifies whether multiple users and devices will save the same object referencing this class.
  *   `issuerName` (*type:* `String.t`, *default:* `nil`) - Required. The issuer name. Recommended maximum length is 20 characters to ensure full string is displayed on smaller screens.
  *   `hexBackgroundColor` (*type:* `String.t`, *default:* `nil`) - The background color for the card. If not set the dominant color of the hero image is used, and if no hero image is set, the dominant color of the logo is used. The format is #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also use the shorthand version of the RGB triplet which is #rgb, such as `#fc0`.
  *   `securityAnimation` (*type:* `GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t`, *default:* `nil`) - Optional information about the security animation. If this is set a security animation will be rendered on pass details.
  *   `callbackOptions` (*type:* `GoogleApi.WalletObjects.V1.Model.CallbackOptions.t`, *default:* `nil`) - Callback options to be used to call the issuer back for every save/delete of an object for this class by the end-user. All objects of this class are eligible for the callback.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Deprecated
  *   `origin` (*type:* `GoogleApi.WalletObjects.V1.Model.AirportInfo.t`, *default:* `nil`) - Required. Origin airport.
  *   `viewUnlockRequirement` (*type:* `String.t`, *default:* `nil`) - View Unlock Requirement options for the boarding pass.
  *   `flightStatus` (*type:* `String.t`, *default:* `nil`) - Status of this flight. If unset, Google will compute status based on data from other sources, such as FlightStats, etc. Note: Google-computed status will not be returned in API responses.
  *   `textModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t)`, *default:* `nil`) - Text module data. If text module data is also defined on the class, both will be displayed. The maximum number of these fields displayed is 10 from the object and 10 from the class.
  *   `flightHeader` (*type:* `GoogleApi.WalletObjects.V1.Model.FlightHeader.t`, *default:* `nil`) - Required. Information about the flight carrier and number.
  *   `languageOverride` (*type:* `String.t`, *default:* `nil`) - If this field is present, boarding passes served to a user's device will always be in this language. Represents the BCP 47 language tag. Example values are "en-US", "en-GB", "de", or "de-AT".
  *   `locations` (*type:* `list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t)`, *default:* `nil`) - Note: This field is currently not supported to trigger geo notifications.
  *   `infoModuleData` (*type:* `GoogleApi.WalletObjects.V1.Model.InfoModuleData.t`, *default:* `nil`) - Deprecated. Use textModulesData instead.
  *   `heroImage` (*type:* `GoogleApi.WalletObjects.V1.Model.Image.t`, *default:* `nil`) - Optional banner image displayed on the front of the card. If none is present, nothing will be displayed. The image will display at 100% width.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier for a class. This ID must be unique across all classes from an issuer. This value should follow the format issuer ID. identifier where the former is issued by Google and latter is chosen by you. Your unique identifier should only include alphanumeric characters, '.', '_', or '-'.
  *   `imageModulesData` (*type:* `list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t)`, *default:* `nil`) - Image module data. The maximum number of these fields displayed is 1 from object level and 1 for class object level.
  *   `localScheduledArrivalDateTime` (*type:* `String.t`, *default:* `nil`) - The scheduled time the aircraft plans to reach the destination gate (not the runway). Note: This field should not change too close to the flight time. For updates to departure times (delays, etc), please set `localEstimatedOrActualArrivalDateTime`. This is an ISO 8601 extended format date/time without an offset. Time may be specified up to millisecond precision. eg: `2027-03-05T06:30:00` This should be the local date/time at the airport (not a UTC time). Google will reject the request if UTC offset is provided. Time zones will be calculated by Google based on arrival airport. If this is not set, Google will set it based on data from other sources.
  *   `boardingAndSeatingPolicy` (*type:* `GoogleApi.WalletObjects.V1.Model.BoardingAndSeatingPolicy.t`, *default:* `nil`) - Policies for boarding and seating. These will inform which labels will be shown to users.
  *   `localEstimatedOrActualArrivalDateTime` (*type:* `String.t`, *default:* `nil`) - The estimated time the aircraft plans to reach the destination gate (not the runway) or the actual time it reached the gate. This field should be set if at least one of the below is true: - It differs from the scheduled time. Google will use it to calculate the delay. - The aircraft already arrived at the gate. Google will use it to inform the user that the flight has arrived at the gate. This is an ISO 8601 extended format date/time without an offset. Time may be specified up to millisecond precision. eg: `2027-03-05T06:30:00` This should be the local date/time at the airport (not a UTC time). Google will reject the request if UTC offset is provided. Time zones will be calculated by Google based on arrival airport. If this is not set, Google will set it based on data from other sources.
  *   `enableSmartTap` (*type:* `boolean()`, *default:* `nil`) - Identifies whether this class supports Smart Tap. The `redemptionIssuers` and object level `smartTapRedemptionLevel` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `localEstimatedOrActualDepartureDateTime` (*type:* `String.t`, *default:* `nil`) - The estimated time the aircraft plans to pull from the gate or the actual time the aircraft already pulled from the gate. Note: This is not the runway time. This field should be set if at least one of the below is true: - It differs from the scheduled time. Google will use it to calculate the delay. - The aircraft already pulled from the gate. Google will use it to inform the user when the flight actually departed. This is an ISO 8601 extended format date/time without an offset. Time may be specified up to millisecond precision. eg: `2027-03-05T06:30:00` This should be the local date/time at the airport (not a UTC time). Google will reject the request if UTC offset is provided. Time zones will be calculated by Google based on departure airport. If this is not set, Google will set it based on data from other sources.
  *   `reviewStatus` (*type:* `String.t`, *default:* `nil`) - Required. The status of the class. This field can be set to `draft` or `underReview` using the insert, patch, or update API calls. Once the review state is changed from `draft` it may not be changed back to `draft`. You should keep this field to `draft` when the class is under development. A `draft` class cannot be used to create any object. You should set this field to `underReview` when you believe the class is ready for use. The platform will automatically set this field to `approved` and it can be immediately used to create or migrate objects. When updating an already `approved` class you should keep setting this field to `underReview`.
  *   `allowMultipleUsersPerObject` (*type:* `boolean()`, *default:* `nil`) - Deprecated. Use `multipleDevicesAndHoldersAllowedStatus` instead.
  *   `review` (*type:* `GoogleApi.WalletObjects.V1.Model.Review.t`, *default:* `nil`) - The review comments set by the platform when a class is marked `approved` or `rejected`.
  *   `redemptionIssuers` (*type:* `list(String.t)`, *default:* `nil`) - Identifies which redemption issuers can redeem the pass over Smart Tap. Redemption issuers are identified by their issuer ID. Redemption issuers must have at least one Smart Tap key configured. The `enableSmartTap` and object level `smartTapRedemptionLevel` fields must also be set up correctly in order for a pass to support Smart Tap.
  *   `localScheduledDepartureDateTime` (*type:* `String.t`, *default:* `nil`) - Required. The scheduled date and time when the aircraft is expected to depart the gate (not the runway) Note: This field should not change too close to the departure time. For updates to departure times (delays, etc), please set `localEstimatedOrActualDepartureDateTime`. This is an ISO 8601 extended format date/time without an offset. Time may be specified up to millisecond precision. eg: `2027-03-05T06:30:00` This should be the local date/time at the airport (not a UTC time). Google will reject the request if UTC offset is provided. Time zones will be calculated by Google based on departure airport.
  *   `localBoardingDateTime` (*type:* `String.t`, *default:* `nil`) - The boarding time as it would be printed on the boarding pass. This is an ISO 8601 extended format date/time without an offset. Time may be specified up to millisecond precision. eg: `2027-03-05T06:30:00` This should be the local date/time at the airport (not a UTC time). Google will reject the request if UTC offset is provided. Time zones will be calculated by Google based on departure airport. If this is not set, Google will set it based on data from other sources.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :messages => list(GoogleApi.WalletObjects.V1.Model.Message.t()) | nil,
          :localGateClosingDateTime => String.t() | nil,
          :destination => GoogleApi.WalletObjects.V1.Model.AirportInfo.t() | nil,
          :homepageUri => GoogleApi.WalletObjects.V1.Model.Uri.t() | nil,
          :wordMark => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :countryCode => String.t() | nil,
          :classTemplateInfo => GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo.t() | nil,
          :linksModuleData => GoogleApi.WalletObjects.V1.Model.LinksModuleData.t() | nil,
          :kind => String.t() | nil,
          :localizedIssuerName => GoogleApi.WalletObjects.V1.Model.LocalizedString.t() | nil,
          :multipleDevicesAndHoldersAllowedStatus => String.t() | nil,
          :issuerName => String.t() | nil,
          :hexBackgroundColor => String.t() | nil,
          :securityAnimation => GoogleApi.WalletObjects.V1.Model.SecurityAnimation.t() | nil,
          :callbackOptions => GoogleApi.WalletObjects.V1.Model.CallbackOptions.t() | nil,
          :version => String.t() | nil,
          :origin => GoogleApi.WalletObjects.V1.Model.AirportInfo.t() | nil,
          :viewUnlockRequirement => String.t() | nil,
          :flightStatus => String.t() | nil,
          :textModulesData => list(GoogleApi.WalletObjects.V1.Model.TextModuleData.t()) | nil,
          :flightHeader => GoogleApi.WalletObjects.V1.Model.FlightHeader.t() | nil,
          :languageOverride => String.t() | nil,
          :locations => list(GoogleApi.WalletObjects.V1.Model.LatLongPoint.t()) | nil,
          :infoModuleData => GoogleApi.WalletObjects.V1.Model.InfoModuleData.t() | nil,
          :heroImage => GoogleApi.WalletObjects.V1.Model.Image.t() | nil,
          :id => String.t() | nil,
          :imageModulesData => list(GoogleApi.WalletObjects.V1.Model.ImageModuleData.t()) | nil,
          :localScheduledArrivalDateTime => String.t() | nil,
          :boardingAndSeatingPolicy =>
            GoogleApi.WalletObjects.V1.Model.BoardingAndSeatingPolicy.t() | nil,
          :localEstimatedOrActualArrivalDateTime => String.t() | nil,
          :enableSmartTap => boolean() | nil,
          :localEstimatedOrActualDepartureDateTime => String.t() | nil,
          :reviewStatus => String.t() | nil,
          :allowMultipleUsersPerObject => boolean() | nil,
          :review => GoogleApi.WalletObjects.V1.Model.Review.t() | nil,
          :redemptionIssuers => list(String.t()) | nil,
          :localScheduledDepartureDateTime => String.t() | nil,
          :localBoardingDateTime => String.t() | nil
        }

  field(:messages, as: GoogleApi.WalletObjects.V1.Model.Message, type: :list)
  field(:localGateClosingDateTime)
  field(:destination, as: GoogleApi.WalletObjects.V1.Model.AirportInfo)
  field(:homepageUri, as: GoogleApi.WalletObjects.V1.Model.Uri)
  field(:wordMark, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:countryCode)
  field(:classTemplateInfo, as: GoogleApi.WalletObjects.V1.Model.ClassTemplateInfo)
  field(:linksModuleData, as: GoogleApi.WalletObjects.V1.Model.LinksModuleData)
  field(:kind)
  field(:localizedIssuerName, as: GoogleApi.WalletObjects.V1.Model.LocalizedString)
  field(:multipleDevicesAndHoldersAllowedStatus)
  field(:issuerName)
  field(:hexBackgroundColor)
  field(:securityAnimation, as: GoogleApi.WalletObjects.V1.Model.SecurityAnimation)
  field(:callbackOptions, as: GoogleApi.WalletObjects.V1.Model.CallbackOptions)
  field(:version)
  field(:origin, as: GoogleApi.WalletObjects.V1.Model.AirportInfo)
  field(:viewUnlockRequirement)
  field(:flightStatus)
  field(:textModulesData, as: GoogleApi.WalletObjects.V1.Model.TextModuleData, type: :list)
  field(:flightHeader, as: GoogleApi.WalletObjects.V1.Model.FlightHeader)
  field(:languageOverride)
  field(:locations, as: GoogleApi.WalletObjects.V1.Model.LatLongPoint, type: :list)
  field(:infoModuleData, as: GoogleApi.WalletObjects.V1.Model.InfoModuleData)
  field(:heroImage, as: GoogleApi.WalletObjects.V1.Model.Image)
  field(:id)
  field(:imageModulesData, as: GoogleApi.WalletObjects.V1.Model.ImageModuleData, type: :list)
  field(:localScheduledArrivalDateTime)
  field(:boardingAndSeatingPolicy, as: GoogleApi.WalletObjects.V1.Model.BoardingAndSeatingPolicy)
  field(:localEstimatedOrActualArrivalDateTime)
  field(:enableSmartTap)
  field(:localEstimatedOrActualDepartureDateTime)
  field(:reviewStatus)
  field(:allowMultipleUsersPerObject)
  field(:review, as: GoogleApi.WalletObjects.V1.Model.Review)
  field(:redemptionIssuers, type: :list)
  field(:localScheduledDepartureDateTime)
  field(:localBoardingDateTime)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.FlightClass do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.FlightClass.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.FlightClass do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end