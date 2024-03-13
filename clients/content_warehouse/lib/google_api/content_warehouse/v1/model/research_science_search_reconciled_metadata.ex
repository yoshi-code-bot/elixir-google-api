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

defmodule GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchReconciledMetadata do
  @moduledoc """
  A proto for storing inferred and reconciled metadata for Science Search. Next available tag: 74

  ## Attributes

  *   `datePublished` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t`, *default:* `nil`) - The date when the dataset was published.
  *   `licenseDeprecated` (*type:* `list(String.t)`, *default:* `nil`) - License for the dataset. DEPRECATED
  *   `topSalientTermLabel` (*type:* `list(String.t)`, *default:* `nil`) - Top salient term labels that describe the dataset document body.
  *   `locationReconciledForName` (*type:* `boolean()`, *default:* `nil`) - Indicates if the location has been reconciled for the dataset name. This is used by LocationExtender to avoid re-annotating the dataset name.
  *   `isAccessibleForFree` (*type:* `String.t`, *default:* `nil`) - Indicates if the dataset is available for free or behind a paywal http://schema.org/isAccessibleForFree
  *   `coverageStartDate` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t`, *default:* `nil`) - The start and end date that the dataset covers. If the dataset covers a single timepoint, then start and end dates are the same. Use the ISO 8601 format for dates (e.g., 2006-05-23).
  *   `denylistStatus` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `descriptionInHtml` (*type:* `list(String.t)`, *default:* `nil`) - Description of the dataset converted to HTML.
  *   `versionsSimhash` (*type:* `String.t`, *default:* `nil`) - A simhash value of the fields used for identifying versions of a dataset. This will be used by the VersionClusterInfoWriter.
  *   `description` (*type:* `list(String.t)`, *default:* `nil`) - Description of the dataset.
  *   `doiFromCitation` (*type:* `list(String.t)`, *default:* `nil`) - DOI(s) extracted from the citation field. In contrast to the "doi" field these DOIs identify the articles related to the dataset rather than the dataset itself.
  *   `versionClusterInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchVersionClusterInfo.t`, *default:* `nil`) - Information on the version cluster that the dataset is a part of. This field is populated during the indexing time; the field is populated only if the dataset is part of a version cluster.
  *   `mentionedUrls` (*type:* `list(String.t)`, *default:* `nil`) - Mentioned URLs in the description.
  *   `fieldOfStudy` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchFieldOfStudyInfo.t)`, *default:* `nil`) - Field of study: a general, high-level classification of the dataset. This is only populated during indexing time and it is only populated if the classification_source is KNOWLEDGE_GRAPH or it's above inference threshold.
  *   `dateCreated` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t`, *default:* `nil`) - The date when the dataset was created.
  *   `url` (*type:* `list(String.t)`, *default:* `nil`) - urls for the dataset, including doi.
  *   `metadataType` (*type:* `String.t`, *default:* `nil`) - 
  *   `sameAs` (*type:* `list(String.t)`, *default:* `nil`) - Ids for other instances (not different versions) of this dataset.
  *   `numberOfScholarCitations` (*type:* `integer()`, *default:* `nil`) - The number of articles that reference this dataset.
  *   `isInferred` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the metadata was inferred using an ML model rather than from the schema.org fields. Use optional so that explicitly setting to false will ensure the value is passed along to the KG instead of being indistinguisable from being unset and thus not set in the KG. This field was originally non-optional; changing to optional is backwards compatible, but protos created prior to being optional won't have has_is_inferred() (go/proto-proposals/proto3-presence#wire-format-semantic-changes).
  *   `alternateName` (*type:* `list(String.t)`, *default:* `nil`) - Alternate names and acronyms for the dataset.
  *   `keyword` (*type:* `list(String.t)`, *default:* `nil`) - Keywords describing the dataset.
  *   `doi` (*type:* `String.t`, *default:* `nil`) - The DOI for the dataset. We assume that there is only one.
  *   `name` (*type:* `list(String.t)`, *default:* `nil`) - The names of the dataset.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - The fingerprint of basic fields from DatasetMetadata, including: - name - description DEPRECATED
  *   `isBasedOn` (*type:* `list(String.t)`, *default:* `nil`) - A resource (most likely another dataset) from which this dataset is derived or from which it is a modification or adaption. http://schema.org/isBasedOn
  *   `hasTableSummaries` (*type:* `boolean()`, *default:* `nil`) - Indicates if the dataset has table summaries. This field is only populated during indexing time.
  *   `replica` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchReplica.t)`, *default:* `nil`) - The info of replicas of this dataset.
  *   `spatialCoverage` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchLocation.t)`, *default:* `nil`) - Locations that describe spatial coverage of the data. If the data covers multiple locations then each value corresponds to one such location, describing its coordinates, mid, etc.
  *   `catalog` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchCatalog.t`, *default:* `nil`) - Catalog that this dataset is a part of.
  *   `numberOfDatasetsAtSourceUrl` (*type:* `integer()`, *default:* `nil`) - The number of datasets at the same source url as this dataset.
  *   `coverageEndDate` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t`, *default:* `nil`) - 
  *   `indexInCluster` (*type:* `integer()`, *default:* `nil`) - Index of this dataset in its cluster of replicas.
  *   `dateUpdated` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t`, *default:* `nil`) - Most recent of the three dates (published, created, modified)
  *   `basicFieldsHash` (*type:* `String.t`, *default:* `nil`) - A hash of the fields copied by BasicMetadataExtender and the importers. See cs/research/science_search/backend/extender/basic_metadata_extender.h for the list of fields.
  *   `scholarQuery` (*type:* `String.t`, *default:* `nil`) - Query string to send to Scholar to obtain the best approximation of citations to the dataset.
  *   `compactIdentifier` (*type:* `list(String.t)`, *default:* `nil`) - Compact Identifiers (for example "RRID:SCR_002088") that can be resolved by Identifiers.org or N2T.net meta-resolvers.
  *   `sourceUrl` (*type:* `String.t`, *default:* `nil`) - Source url from which we gathered the metadata
  *   `identifierFromSource` (*type:* `list(String.t)`, *default:* `nil`) - An identifier as provided by the dataset itself.
  *   `imageUrl` (*type:* `list(String.t)`, *default:* `nil`) - The image urls provided by the dataset (e.g., for thumbnail images).
  *   `relatedArticleUrl` (*type:* `String.t`, *default:* `nil`) - The url for the article that (likely) describes this dataset.
  *   `publication` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchCitation.t)`, *default:* `nil`) - 
  *   `sourceUrlDocjoinInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfo.t`, *default:* `nil`) - All the information extracted from docjoin, for the source_url of this dataset, aka DatasetMetadata.source_url.
  *   `hasCroissantFormat` (*type:* `boolean()`, *default:* `nil`) - Indicates if the dataset has croissant format (https://github.com/mlcommons/croissant).
  *   `id` (*type:* `String.t`, *default:* `nil`) - A unique id for the dataset. For the data from Spore, this is the spore id, such as, for example "http://accession.nodc.noaa.gov/8500223#__sid=js0" REQUIRED
  *   `dataDownload` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDataDownload.t)`, *default:* `nil`) - The dataset in downloadable form. There can be multiple data download entries for different file types.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The 2-letter language code for the source page for the dataset. Same as the language code in source_url_docjoin_info. Populated only when generating output for indexing.
  *   `compactIdentifierFromCitation` (*type:* `list(String.t)`, *default:* `nil`) - Compact Identifier(s) extracted from the citation field. Like in the case of DOI(s) those identify the articles related to the dataset rather than the dataset itself.
  *   `datasetClassificationFieldsHash` (*type:* `String.t`, *default:* `nil`) - A hash of the raw metadata fields used by the QualityExtender.
  *   `sourceOrganization` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchOrganization.t)`, *default:* `nil`) - Source of the dataset: unifies provider, creator, author, publisher etc.
  *   `license` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchLicense.t)`, *default:* `nil`) - License for the dataset.
  *   `datasetClassificationScore` (*type:* `float()`, *default:* `nil`) - Probability that the entity is in fact a dataset (in contrast to spam or website labelled as dataset that does not describe a dataset).
  *   `variable` (*type:* `list(String.t)`, *default:* `nil`) - Variables that the data in the dataset captures (e.g., pressure, salinity, temperature). For now, these are just strings.
  *   `versionEmbeddingFieldsHash` (*type:* `String.t`, *default:* `nil`) - A hash of the raw metadata fields used by the VersionEmbeddingExtender.
  *   `funder` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchOrganization.t)`, *default:* `nil`) - Funder of the dataset.
  *   `versionEmbeddingVector` (*type:* `list(number())`, *default:* `nil`) - An embedding for the dataset to be used by the VersionAggregator.
  *   `authorList` (*type:* `String.t`, *default:* `nil`) - A string representation of the authors of the dataset, collected from author and creator in raw metadata. The exact format (e.g., comma-separated, etc.) is up to the extender that populates this field. The assumption is that this string may appear in the UI "as is".
  *   `scholarlyArticle` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchScholarlyArticle.t`, *default:* `nil`) - For tables and figures, contains all of the metadata for a scholarly article that was the source of this table or figure. This field is populated only if metadata_type is 'TABLE' or 'FIGURE'.
  *   `measurementTechnique` (*type:* `list(String.t)`, *default:* `nil`) - A technique or technology used in a Dataset corresponding to the method used for measuring the corresponding variable(s) (described using variableMeasured). http://schema.org/measurementTechnique
  *   `dateModified` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t`, *default:* `nil`) - The date when the dataset was modified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datePublished =>
            GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t() | nil,
          :licenseDeprecated => list(String.t()) | nil,
          :topSalientTermLabel => list(String.t()) | nil,
          :locationReconciledForName => boolean() | nil,
          :isAccessibleForFree => String.t() | nil,
          :coverageStartDate =>
            GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t() | nil,
          :denylistStatus => list(String.t()) | nil,
          :descriptionInHtml => list(String.t()) | nil,
          :versionsSimhash => String.t() | nil,
          :description => list(String.t()) | nil,
          :doiFromCitation => list(String.t()) | nil,
          :versionClusterInfo =>
            GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchVersionClusterInfo.t() | nil,
          :mentionedUrls => list(String.t()) | nil,
          :fieldOfStudy =>
            list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchFieldOfStudyInfo.t())
            | nil,
          :dateCreated => GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t() | nil,
          :url => list(String.t()) | nil,
          :metadataType => String.t() | nil,
          :sameAs => list(String.t()) | nil,
          :numberOfScholarCitations => integer() | nil,
          :isInferred => boolean() | nil,
          :alternateName => list(String.t()) | nil,
          :keyword => list(String.t()) | nil,
          :doi => String.t() | nil,
          :name => list(String.t()) | nil,
          :fingerprint => String.t() | nil,
          :isBasedOn => list(String.t()) | nil,
          :hasTableSummaries => boolean() | nil,
          :replica =>
            list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchReplica.t()) | nil,
          :spatialCoverage =>
            list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchLocation.t()) | nil,
          :catalog => GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchCatalog.t() | nil,
          :numberOfDatasetsAtSourceUrl => integer() | nil,
          :coverageEndDate =>
            GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t() | nil,
          :indexInCluster => integer() | nil,
          :dateUpdated => GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t() | nil,
          :basicFieldsHash => String.t() | nil,
          :scholarQuery => String.t() | nil,
          :compactIdentifier => list(String.t()) | nil,
          :sourceUrl => String.t() | nil,
          :identifierFromSource => list(String.t()) | nil,
          :imageUrl => list(String.t()) | nil,
          :relatedArticleUrl => String.t() | nil,
          :publication =>
            list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchCitation.t()) | nil,
          :sourceUrlDocjoinInfo =>
            GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfo.t()
            | nil,
          :hasCroissantFormat => boolean() | nil,
          :id => String.t() | nil,
          :dataDownload =>
            list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDataDownload.t()) | nil,
          :languageCode => String.t() | nil,
          :compactIdentifierFromCitation => list(String.t()) | nil,
          :datasetClassificationFieldsHash => String.t() | nil,
          :sourceOrganization =>
            list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchOrganization.t()) | nil,
          :license =>
            list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchLicense.t()) | nil,
          :datasetClassificationScore => float() | nil,
          :variable => list(String.t()) | nil,
          :versionEmbeddingFieldsHash => String.t() | nil,
          :funder =>
            list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchOrganization.t()) | nil,
          :versionEmbeddingVector => list(number()) | nil,
          :authorList => String.t() | nil,
          :scholarlyArticle =>
            GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchScholarlyArticle.t() | nil,
          :measurementTechnique => list(String.t()) | nil,
          :dateModified => GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate.t() | nil
        }

  field(:datePublished, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate)
  field(:licenseDeprecated, type: :list)
  field(:topSalientTermLabel, type: :list)
  field(:locationReconciledForName)
  field(:isAccessibleForFree)
  field(:coverageStartDate, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate)
  field(:denylistStatus, type: :list)
  field(:descriptionInHtml, type: :list)
  field(:versionsSimhash)
  field(:description, type: :list)
  field(:doiFromCitation, type: :list)

  field(:versionClusterInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchVersionClusterInfo
  )

  field(:mentionedUrls, type: :list)

  field(:fieldOfStudy,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchFieldOfStudyInfo,
    type: :list
  )

  field(:dateCreated, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate)
  field(:url, type: :list)
  field(:metadataType)
  field(:sameAs, type: :list)
  field(:numberOfScholarCitations)
  field(:isInferred)
  field(:alternateName, type: :list)
  field(:keyword, type: :list)
  field(:doi)
  field(:name, type: :list)
  field(:fingerprint)
  field(:isBasedOn, type: :list)
  field(:hasTableSummaries)

  field(:replica,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchReplica,
    type: :list
  )

  field(:spatialCoverage,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchLocation,
    type: :list
  )

  field(:catalog, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchCatalog)
  field(:numberOfDatasetsAtSourceUrl)
  field(:coverageEndDate, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate)
  field(:indexInCluster)
  field(:dateUpdated, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate)
  field(:basicFieldsHash)
  field(:scholarQuery)
  field(:compactIdentifier, type: :list)
  field(:sourceUrl)
  field(:identifierFromSource, type: :list)
  field(:imageUrl, type: :list)
  field(:relatedArticleUrl)

  field(:publication,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchCitation,
    type: :list
  )

  field(:sourceUrlDocjoinInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfo
  )

  field(:hasCroissantFormat)
  field(:id)

  field(:dataDownload,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDataDownload,
    type: :list
  )

  field(:languageCode)
  field(:compactIdentifierFromCitation, type: :list)
  field(:datasetClassificationFieldsHash)

  field(:sourceOrganization,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchOrganization,
    type: :list
  )

  field(:license,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchLicense,
    type: :list
  )

  field(:datasetClassificationScore)
  field(:variable, type: :list)
  field(:versionEmbeddingFieldsHash)

  field(:funder,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchOrganization,
    type: :list
  )

  field(:versionEmbeddingVector, type: :list)
  field(:authorList)

  field(:scholarlyArticle,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchScholarlyArticle
  )

  field(:measurementTechnique, type: :list)
  field(:dateModified, as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchDate)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchReconciledMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchReconciledMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchReconciledMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
