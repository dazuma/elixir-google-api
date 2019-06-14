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

defmodule GoogleApi.Plus.V1.Model.CommentFeed do
  @moduledoc """


  ## Attributes

  - etag (String.t): ETag of this response for caching purposes. Defaults to `nil`.
  - id (String.t): The ID of this collection of comments. Defaults to `nil`.
  - items (list(GoogleApi.Plus.V1.Model.Comment.t)): The comments in this page of results. Defaults to `nil`.
  - kind (String.t): Identifies this resource as a collection of comments. Value: "plus#commentFeed". Defaults to `plus#commentFeed`.
  - nextLink (String.t): Link to the next page of activities. Defaults to `nil`.
  - nextPageToken (String.t): The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. Defaults to `nil`.
  - title (String.t): The title of this collection of comments. Defaults to `nil`.
  - updated (DateTime.t): The time at which this collection of comments was last updated. Formatted as an RFC 3339 timestamp. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :id => String.t(),
          :items => list(GoogleApi.Plus.V1.Model.Comment.t()),
          :kind => String.t(),
          :nextLink => String.t(),
          :nextPageToken => String.t(),
          :title => String.t(),
          :updated => DateTime.t()
        }

  field(:etag)
  field(:id)
  field(:items, as: GoogleApi.Plus.V1.Model.Comment, type: :list)
  field(:kind)
  field(:nextLink)
  field(:nextPageToken)
  field(:title)
  field(:updated, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.CommentFeed do
  def decode(value, options) do
    GoogleApi.Plus.V1.Model.CommentFeed.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.CommentFeed do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
