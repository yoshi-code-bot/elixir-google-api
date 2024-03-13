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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPersonalContactDataLog do
  @moduledoc """
  Contact meta data. Next ID: 30

  ## Attributes

  *   `accountProvenance` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationGoogleAccountProvenance.t`, *default:* `nil`) - Google AccountProvenance of the contact.
  *   `commonNameAliasConfidence` (*type:* `number()`, *default:* `nil`) - Populated if matched_name_type is GIVEN_NAME_ALIAS or FULL_NAME_ALIAS.
  *   `conceptId` (*type:* `String.t`, *default:* `nil`) - Concept id for relationships in English, e.g. "Mother" for all non-English locales. It's only populated for source = RELATIONSHIP.
  *   `deviceContactAttributes` (*type:* `list(integer())`, *default:* `nil`) - Integer value corresponding to DeviceContactExtraMetadata.Attribute enum. http://google3/social/graph/wire/proto/merged_person.proto?l=933&rcl=320308954
  *   `emailIdCount` (*type:* `integer()`, *default:* `nil`) - # emails stored for the contact.
  *   `fuzzyNgramMatch` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationFuzzyNgramMatchLog.t)`, *default:* `nil`) - Populate only if ContactRecognitionAlternate.Source is 'FUZZY_CONTACT_MATCH'.
  *   `gaiaId` (*type:* `String.t`, *default:* `nil`) - Contact owner's gaia id from cs/symbol::symbol:quality_qrewrite.PersonalContactData.shared_contact_owner_gaia_id. Only populated for is_shared = true and non sign-out mode and user is not the owner of the contact(shared contact from other user). This field is not being logged in P2.
  *   `isContactFromSecondaryAccount` (*type:* `boolean()`, *default:* `nil`) - Boolean value indicating whether selected contact is from different account than the logged in account.
  *   `isShared` (*type:* `boolean()`, *default:* `nil`) - If this is a shared contact. This is true in 2 cases: - User is calling their own contacts that have been marked as shared. - User is calling shared contacts from some other user's contact list. This field is not being logged in P2.
  *   `isTransliteratedMatch` (*type:* `boolean()`, *default:* `nil`) - Indicate the contact matches the transliterated query.
  *   `isVanityContact` (*type:* `boolean()`, *default:* `nil`) - True if the contact is a vanity contact(has email = user's email address).
  *   `isVisibleToGuestsRelationship` (*type:* `boolean()`, *default:* `nil`) - If the lookup was done using relationship which is visible to guests. This value will only be set if lookup was done using relationship. E.g. user has a guest relationship (doctor) -> (John) And user says "call doctor", then this value will be true.
  *   `matchedNameType` (*type:* `String.t`, *default:* `nil`) - The matched name type of a contact candidate.
  *   `matchedRecognitionAlternateName` (*type:* `String.t`, *default:* `nil`) - Alternate recognition term which was used to match this contact.
  *   `matchedStarlightLookupName` (*type:* `list(String.t)`, *default:* `nil`) - Ngram matched by starlight lookup for fuzzy matching in fulfillment. We need this to analyze how many contacts are returned by starlight lookup that is not matched by fuzzy matching. For example, "Komal Dear" is matched to "Komal Dr" by fuzzy match. When doing starlight lookup, "Komal" and "Dr" will be looked up separately. So "Dr xxx" will also be returned. We want to see how often this happens.
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPersonMetadataLog.t`, *default:* `nil`) - PersonMetadata of the selected contact.
  *   `nameMatchedContactIndex` (*type:* `list(integer())`, *default:* `nil`) - The indices of the contact in |candidate_contact| whose name matches the |selected_contact_data|. |candidate_contact|: http://google3/logs/proto/assistant/contact.proto?l=111&rcl=306283376 |selected_contact_data|: http://google3/logs/proto/assistant/contact.proto?l=108&rcl=306283376
  *   `originalQueryName` (*type:* `String.t`, *default:* `nil`) - The original name in the query as transcribed by ASR.
  *   `phone` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPhoneLog.t)`, *default:* `nil`) - Information regarding the phone endpoints of the selected contact. Currently it is only logged for selected candidate.
  *   `phoneNumberCount` (*type:* `integer()`, *default:* `nil`) - # phone_numbers stored for the contact.
  *   `pkgReferenceType` (*type:* `String.t`, *default:* `nil`) - Encodes if pkg_person was resolved via a name or relationship reference.
  *   `recognitionAlternateScore` (*type:* `number()`, *default:* `nil`) - Populate only if ContactRecognitionAlternate.Source is not NONE.
  *   `recognitionAlternateSource` (*type:* `String.t`, *default:* `nil`) - Recognition alternative source type. If not none, then it indicates the personal contact data is alternative and how the alternative is fulfilled.
  *   `relationshipMemoryCount` (*type:* `integer()`, *default:* `nil`) - The number of resolved relationship names and contact pointers from Assistant Memory.
  *   `selectedPhone` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPhoneLog.t`, *default:* `nil`) - Information regarding the selected phone endpoint. Currently it is only logged for selected candidate.
  *   `shortcutContactInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.MajelContactInformationShortcutInformation.t`, *default:* `nil`) - Shortcut information of the contact.
  *   `source` (*type:* `String.t`, *default:* `nil`) - The contact source of a contact candidate.
  *   `systemContactGroupId` (*type:* `list(integer())`, *default:* `nil`) - Integer value corresponding to SystemContactGroup enum. http://google3/social/graph/wire/proto/merged_person.proto?l=3151&rcl=320308954
  *   `whatsappPhoneNumberCount` (*type:* `integer()`, *default:* `nil`) - DEPRECATED. Use phone instead. Used before 2020-01-13. Number of phone numbers annotated with Whatsapp.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountProvenance =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationGoogleAccountProvenance.t()
            | nil,
          :commonNameAliasConfidence => number() | nil,
          :conceptId => String.t() | nil,
          :deviceContactAttributes => list(integer()) | nil,
          :emailIdCount => integer() | nil,
          :fuzzyNgramMatch =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationFuzzyNgramMatchLog.t()
            )
            | nil,
          :gaiaId => String.t() | nil,
          :isContactFromSecondaryAccount => boolean() | nil,
          :isShared => boolean() | nil,
          :isTransliteratedMatch => boolean() | nil,
          :isVanityContact => boolean() | nil,
          :isVisibleToGuestsRelationship => boolean() | nil,
          :matchedNameType => String.t() | nil,
          :matchedRecognitionAlternateName => String.t() | nil,
          :matchedStarlightLookupName => list(String.t()) | nil,
          :metadata =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPersonMetadataLog.t()
            | nil,
          :nameMatchedContactIndex => list(integer()) | nil,
          :originalQueryName => String.t() | nil,
          :phone =>
            list(GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPhoneLog.t()) | nil,
          :phoneNumberCount => integer() | nil,
          :pkgReferenceType => String.t() | nil,
          :recognitionAlternateScore => number() | nil,
          :recognitionAlternateSource => String.t() | nil,
          :relationshipMemoryCount => integer() | nil,
          :selectedPhone =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPhoneLog.t() | nil,
          :shortcutContactInfo =>
            GoogleApi.ContentWarehouse.V1.Model.MajelContactInformationShortcutInformation.t()
            | nil,
          :source => String.t() | nil,
          :systemContactGroupId => list(integer()) | nil,
          :whatsappPhoneNumberCount => integer() | nil
        }

  field(:accountProvenance,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationGoogleAccountProvenance
  )

  field(:commonNameAliasConfidence)
  field(:conceptId)
  field(:deviceContactAttributes, type: :list)
  field(:emailIdCount)

  field(:fuzzyNgramMatch,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationFuzzyNgramMatchLog,
    type: :list
  )

  field(:gaiaId)
  field(:isContactFromSecondaryAccount)
  field(:isShared)
  field(:isTransliteratedMatch)
  field(:isVanityContact)
  field(:isVisibleToGuestsRelationship)
  field(:matchedNameType)
  field(:matchedRecognitionAlternateName)
  field(:matchedStarlightLookupName, type: :list)

  field(:metadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPersonMetadataLog
  )

  field(:nameMatchedContactIndex, type: :list)
  field(:originalQueryName)

  field(:phone,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPhoneLog,
    type: :list
  )

  field(:phoneNumberCount)
  field(:pkgReferenceType)
  field(:recognitionAlternateScore)
  field(:recognitionAlternateSource)
  field(:relationshipMemoryCount)

  field(:selectedPhone, as: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPhoneLog)

  field(:shortcutContactInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.MajelContactInformationShortcutInformation
  )

  field(:source)
  field(:systemContactGroupId, type: :list)
  field(:whatsappPhoneNumberCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPersonalContactDataLog do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPersonalContactDataLog.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsCommunicationPersonalContactDataLog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
