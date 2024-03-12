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

defmodule GoogleApi.Classroom.V1.Model.Course do
  @moduledoc """
  A Course in Classroom.

  ## Attributes

  *   `alternateLink` (*type:* `String.t`, *default:* `nil`) - Absolute link to this course in the Classroom web UI. Read-only.
  *   `calendarId` (*type:* `String.t`, *default:* `nil`) - The Calendar ID for a calendar that all course members can see, to which Classroom adds events for course work and announcements in the course. The Calendar for a course is created asynchronously when the course is set to `CourseState.ACTIVE` for the first time (at creation time or when it is updated to `ACTIVE` through the UI or the API). The Calendar ID will not be populated until the creation process is completed. Read-only.
  *   `courseGroupEmail` (*type:* `String.t`, *default:* `nil`) - The email address of a Google group containing all members of the course. This group does not accept email and can only be used for permissions. Read-only.
  *   `courseMaterialSets` (*type:* `list(GoogleApi.Classroom.V1.Model.CourseMaterialSet.t)`, *default:* `nil`) - Sets of materials that appear on the "about" page of this course. Read-only.
  *   `courseState` (*type:* `String.t`, *default:* `nil`) - State of the course. If unspecified, the default state is `PROVISIONED`.
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - Creation time of the course. Specifying this field in a course update mask results in an error. Read-only.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional description. For example, "We'll be learning about the structure of living creatures from a combination of textbooks, guest lectures, and lab work. Expect to be excited!" If set, this field must be a valid UTF-8 string and no longer than 30,000 characters.
  *   `descriptionHeading` (*type:* `String.t`, *default:* `nil`) - Optional heading for the description. For example, "Welcome to 10th Grade Biology." If set, this field must be a valid UTF-8 string and no longer than 3600 characters.
  *   `enrollmentCode` (*type:* `String.t`, *default:* `nil`) - Enrollment code to use when joining this course. Specifying this field in a course update mask results in an error. Read-only.
  *   `gradebookSettings` (*type:* `GoogleApi.Classroom.V1.Model.GradebookSettings.t`, *default:* `nil`) - The gradebook settings that specify how a student's overall grade for the course will be calculated and who it will be displayed to. Read-only
  *   `guardiansEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether or not guardian notifications are enabled for this course. Read-only.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Identifier for this course assigned by Classroom. When creating a course, you may optionally set this identifier to an alias string in the request to create a corresponding alias. The `id` is still assigned by Classroom and cannot be updated after the course is created. Specifying this field in a course update mask results in an error.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the course. For example, "10th Grade Biology". The name is required. It must be between 1 and 750 characters and a valid UTF-8 string.
  *   `ownerId` (*type:* `String.t`, *default:* `nil`) - The identifier of the owner of a course. When specified as a parameter of a create course request, this field is required. The identifier can be one of the following: * the numeric identifier for the user * the email address of the user * the string literal `"me"`, indicating the requesting user This must be set in a create request. Admins can also specify this field in a patch course request to transfer ownership. In other contexts, it is read-only.
  *   `room` (*type:* `String.t`, *default:* `nil`) - Optional room location. For example, "301". If set, this field must be a valid UTF-8 string and no longer than 650 characters.
  *   `section` (*type:* `String.t`, *default:* `nil`) - Section of the course. For example, "Period 2". If set, this field must be a valid UTF-8 string and no longer than 2800 characters.
  *   `teacherFolder` (*type:* `GoogleApi.Classroom.V1.Model.DriveFolder.t`, *default:* `nil`) - Information about a Drive Folder that is shared with all teachers of the course. This field will only be set for teachers of the course and domain administrators. Read-only.
  *   `teacherGroupEmail` (*type:* `String.t`, *default:* `nil`) - The email address of a Google group containing all teachers of the course. This group does not accept email and can only be used for permissions. Read-only.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Time of the most recent update to this course. Specifying this field in a course update mask results in an error. Read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateLink => String.t() | nil,
          :calendarId => String.t() | nil,
          :courseGroupEmail => String.t() | nil,
          :courseMaterialSets => list(GoogleApi.Classroom.V1.Model.CourseMaterialSet.t()) | nil,
          :courseState => String.t() | nil,
          :creationTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :descriptionHeading => String.t() | nil,
          :enrollmentCode => String.t() | nil,
          :gradebookSettings => GoogleApi.Classroom.V1.Model.GradebookSettings.t() | nil,
          :guardiansEnabled => boolean() | nil,
          :id => String.t() | nil,
          :name => String.t() | nil,
          :ownerId => String.t() | nil,
          :room => String.t() | nil,
          :section => String.t() | nil,
          :teacherFolder => GoogleApi.Classroom.V1.Model.DriveFolder.t() | nil,
          :teacherGroupEmail => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:alternateLink)
  field(:calendarId)
  field(:courseGroupEmail)
  field(:courseMaterialSets, as: GoogleApi.Classroom.V1.Model.CourseMaterialSet, type: :list)
  field(:courseState)
  field(:creationTime, as: DateTime)
  field(:description)
  field(:descriptionHeading)
  field(:enrollmentCode)
  field(:gradebookSettings, as: GoogleApi.Classroom.V1.Model.GradebookSettings)
  field(:guardiansEnabled)
  field(:id)
  field(:name)
  field(:ownerId)
  field(:room)
  field(:section)
  field(:teacherFolder, as: GoogleApi.Classroom.V1.Model.DriveFolder)
  field(:teacherGroupEmail)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Course do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.Course.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Course do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
