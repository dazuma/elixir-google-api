# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.StreetViewPublish.V1.Model.UpdatePhotoRequest do
  @moduledoc """
  Request to update the metadata of a
  Photo. Updating the pixels of a photo
  is not supported.

  ## Attributes

  - photo (GoogleApi.StreetViewPublish.V1.Model.Photo.t): Required. Photo object containing the
  new metadata. Defaults to `nil`.
  - updateMask (String.t): Mask that identifies fields on the photo metadata to update.
  If not present, the old Photo
  metadata is entirely replaced with the
  new Photo metadata in this request.
  The update fails if invalid fields are specified. Multiple fields can be
  specified in a comma-delimited list.

  The following fields are valid:

  * `pose.heading`
  * `pose.latLngPair`
  * `pose.pitch`
  * `pose.roll`
  * `pose.level`
  * `pose.altitude`
  * `connections`
  * `places`


  <aside class="note"><b>Note:</b> When
  updateMask
  contains repeated fields, the entire set of repeated values get replaced
  with the new contents. For example, if
  updateMask
  contains `connections` and `UpdatePhotoRequest.photo.connections` is empty,
  all connections are removed.</aside> Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :photo => GoogleApi.StreetViewPublish.V1.Model.Photo.t(),
          :updateMask => String.t()
        }

  field(:photo, as: GoogleApi.StreetViewPublish.V1.Model.Photo)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.StreetViewPublish.V1.Model.UpdatePhotoRequest do
  def decode(value, options) do
    GoogleApi.StreetViewPublish.V1.Model.UpdatePhotoRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StreetViewPublish.V1.Model.UpdatePhotoRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
