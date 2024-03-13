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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAudio do
  @moduledoc """
  Represents a music recording (usually a song). Each populated field can be thought of as additional constraint about the song's identity. For instance, if no fields are set, then this represents "some song." If only the music_artist is set, then it represents "some song by the specified music_artist." Inspired (but not strictly adhered to) http://schema.org/MusicRecording Next ID: 22

  ## Attributes

  *   `album` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAlbumTitle.t`, *default:* `nil`) - 
  *   `artist` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMusicArtist.t`, *default:* `nil`) - 
  *   `book` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaBook.t`, *default:* `nil`) - Like an audio book. "Listen to (moby dick) audiobook"
  *   `dateTime` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t`, *default:* `nil`) - A date time constraint for audio entity, for example, "jazz station 1980".
  *   `episodeConstraint` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaEpisodeConstraint.t)`, *default:* `nil`) - Constraining the query to some detail about the episode. Example: "listen to episode (13) of this american life with (mike birbiglia)" would have the 2 constraints in parens.
  *   `game` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaGame.t`, *default:* `nil`) - Soundtrack or theme song (see score_type param that indicates whether the user refers to a soundtrack or a theme song) of the game. "Play soundtrack from (Deus Ex Human Revolution)".
  *   `genericMusic` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaGenericMusic.t`, *default:* `nil`) - 
  *   `genre` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMusicGenre.t`, *default:* `nil`) - 
  *   `movie` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMovie.t`, *default:* `nil`) - Soundtrack or theme song (see score_type param that indicates whether the user refers to a soundtrack or a theme song) of the movie. E.g. "Play (Let It Go) from (Disney's Frozen)"
  *   `newsTopic` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaNewsTopic.t`, *default:* `nil`) - News topic. "Listen to news about (Ukraine)"
  *   `noExplicitAudio` (*type:* `boolean()`, *default:* `nil`) - True when the query does not contains an explict audio name. E.g. When user says "play" or "listen to".
  *   `playlist` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMusicPlaylist.t`, *default:* `nil`) - 
  *   `podcast` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPodcast.t`, *default:* `nil`) - Podcast feeds. "Listen to (This American Life)"
  *   `radio` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaRadio.t`, *default:* `nil`) - 
  *   `radioNetwork` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaRadioNetwork.t`, *default:* `nil`) - E.g. "play NPR radio", "Play BBC radio".
  *   `rawText` (*type:* `String.t`, *default:* `nil`) - The query for backends to use in search. e.g. for an user query of "play kids song video on tv" from assistant, this field would be "kids song". Note: there is no guarantee this field is populated; when it is not, backends should fall back to "raw_text" fields in song, artist, album etc.
  *   `scoreType` (*type:* `String.t`, *default:* `nil`) - If any of movie, game or tv show fields is populated this field indicates specific score type requested in the query. E.g. for [play soundtrack from frozen] this field is SOUNDTRACK, for [play frozen song] this field is THEME_SONG.
  *   `seasonConstraint` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaSeasonConstraint.t`, *default:* `nil`) - Constraining the query to some detail about the season. Example: "listen to season 2 of serial"
  *   `song` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaSong.t`, *default:* `nil`) - 
  *   `tag` (*type:* `list(String.t)`, *default:* `nil`) - Optional tags associated with how the media entity should be played. For example, this can be set to SEED_RADIO to signify that the user wants to play a radio station seeded by the entity.
  *   `tvShow` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaTVShow.t`, *default:* `nil`) - Soundtrack or theme song (see score_type param that indicates whether the user refers to a soundtrack or a theme song) of the tv show. E.g. "Play soundtrack from (Friends)".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :album =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAlbumTitle.t() | nil,
          :artist =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMusicArtist.t() | nil,
          :book =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaBook.t() | nil,
          :dateTime =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime.t() | nil,
          :episodeConstraint =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaEpisodeConstraint.t()
            )
            | nil,
          :game =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaGame.t() | nil,
          :genericMusic =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaGenericMusic.t()
            | nil,
          :genre =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMusicGenre.t() | nil,
          :movie =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMovie.t() | nil,
          :newsTopic =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaNewsTopic.t() | nil,
          :noExplicitAudio => boolean() | nil,
          :playlist =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMusicPlaylist.t()
            | nil,
          :podcast =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPodcast.t() | nil,
          :radio =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaRadio.t() | nil,
          :radioNetwork =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaRadioNetwork.t()
            | nil,
          :rawText => String.t() | nil,
          :scoreType => String.t() | nil,
          :seasonConstraint =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaSeasonConstraint.t()
            | nil,
          :song =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaSong.t() | nil,
          :tag => list(String.t()) | nil,
          :tvShow =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaTVShow.t() | nil
        }

  field(:album, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAlbumTitle)
  field(:artist, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMusicArtist)
  field(:book, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaBook)
  field(:dateTime, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeDateTime)

  field(:episodeConstraint,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaEpisodeConstraint,
    type: :list
  )

  field(:game, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaGame)

  field(:genericMusic,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaGenericMusic
  )

  field(:genre, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMusicGenre)
  field(:movie, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMovie)

  field(:newsTopic, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaNewsTopic)

  field(:noExplicitAudio)

  field(:playlist,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMusicPlaylist
  )

  field(:podcast, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPodcast)
  field(:radio, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaRadio)

  field(:radioNetwork,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaRadioNetwork
  )

  field(:rawText)
  field(:scoreType)

  field(:seasonConstraint,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaSeasonConstraint
  )

  field(:song, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaSong)
  field(:tag, type: :list)
  field(:tvShow, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaTVShow)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAudio do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAudio.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaAudio do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end