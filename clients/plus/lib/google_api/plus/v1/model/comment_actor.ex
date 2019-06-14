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

defmodule GoogleApi.Plus.V1.Model.CommentActor do
  @moduledoc """
  The person who posted this comment.

  ## Attributes

  - clientSpecificActorInfo (GoogleApi.Plus.V1.Model.CommentActorClientSpecificActorInfo.t): Actor info specific to particular clients. Defaults to `nil`.
  - displayName (String.t): The name of this actor, suitable for display. Defaults to `nil`.
  - id (String.t): The ID of the actor. Defaults to `nil`.
  - image (GoogleApi.Plus.V1.Model.CommentActorImage.t): The image representation of this actor. Defaults to `nil`.
  - url (String.t): A link to the Person resource for this actor. Defaults to `nil`.
  - verification (GoogleApi.Plus.V1.Model.CommentActorVerification.t): Verification status of actor. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientSpecificActorInfo =>
            GoogleApi.Plus.V1.Model.CommentActorClientSpecificActorInfo.t(),
          :displayName => String.t(),
          :id => String.t(),
          :image => GoogleApi.Plus.V1.Model.CommentActorImage.t(),
          :url => String.t(),
          :verification => GoogleApi.Plus.V1.Model.CommentActorVerification.t()
        }

  field(:clientSpecificActorInfo, as: GoogleApi.Plus.V1.Model.CommentActorClientSpecificActorInfo)
  field(:displayName)
  field(:id)
  field(:image, as: GoogleApi.Plus.V1.Model.CommentActorImage)
  field(:url)
  field(:verification, as: GoogleApi.Plus.V1.Model.CommentActorVerification)
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.CommentActor do
  def decode(value, options) do
    GoogleApi.Plus.V1.Model.CommentActor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.CommentActor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
