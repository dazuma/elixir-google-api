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

defmodule GoogleApi.CommentAnalyzer.V1alpha1.Model.ArticleAndParentComment do
  @moduledoc """
  A type of context specific to a comment left on a single-threaded comment message board, where comments are either a top level comment or the child of a top level comment.

  ## Attributes

  *   `article` (*type:* `GoogleApi.CommentAnalyzer.V1alpha1.Model.TextEntry.t`, *default:* `nil`) - The source content about which the comment was made (article text, article summary, video transcript, etc).
  *   `parentComment` (*type:* `GoogleApi.CommentAnalyzer.V1alpha1.Model.TextEntry.t`, *default:* `nil`) - Refers to text that is a direct parent of the source comment, such as in a one-deep threaded message board. This field will only be present for comments that are replies to other comments and will not be populated for direct comments on the article_text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :article => GoogleApi.CommentAnalyzer.V1alpha1.Model.TextEntry.t(),
          :parentComment => GoogleApi.CommentAnalyzer.V1alpha1.Model.TextEntry.t()
        }

  field(:article, as: GoogleApi.CommentAnalyzer.V1alpha1.Model.TextEntry)
  field(:parentComment, as: GoogleApi.CommentAnalyzer.V1alpha1.Model.TextEntry)
end

defimpl Poison.Decoder, for: GoogleApi.CommentAnalyzer.V1alpha1.Model.ArticleAndParentComment do
  def decode(value, options) do
    GoogleApi.CommentAnalyzer.V1alpha1.Model.ArticleAndParentComment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CommentAnalyzer.V1alpha1.Model.ArticleAndParentComment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
