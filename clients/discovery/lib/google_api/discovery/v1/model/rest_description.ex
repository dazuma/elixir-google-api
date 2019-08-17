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

defmodule GoogleApi.Discovery.V1.Model.RestDescription do
  @moduledoc """


  ## Attributes

  *   `auth` (*type:* `GoogleApi.Discovery.V1.Model.RestDescriptionAuth.t`, *default:* `nil`) - Authentication information.
  *   `basePath` (*type:* `String.t`, *default:* `nil`) - [DEPRECATED] The base path for REST requests.
  *   `baseUrl` (*type:* `String.t`, *default:* `nil`) - [DEPRECATED] The base URL for REST requests.
  *   `batchPath` (*type:* `String.t`, *default:* `nil`) - The path for REST batch requests.
  *   `canonicalName` (*type:* `String.t`, *default:* `nil`) - Indicates how the API name should be capitalized and split into various parts. Useful for generating pretty class names.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of this API.
  *   `discoveryVersion` (*type:* `String.t`, *default:* `v1`) - Indicate the version of the Discovery API used to generate this doc.
  *   `documentationLink` (*type:* `String.t`, *default:* `nil`) - A link to human readable documentation for the API.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The ETag for this response.
  *   `exponentialBackoffDefault` (*type:* `boolean()`, *default:* `nil`) - Enable exponential backoff for suitable methods in the generated clients.
  *   `features` (*type:* `list(String.t)`, *default:* `nil`) - A list of supported features for this API.
  *   `icons` (*type:* `GoogleApi.Discovery.V1.Model.RestDescriptionIcons.t`, *default:* `nil`) - Links to 16x16 and 32x32 icons representing the API.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The ID of this API.
  *   `kind` (*type:* `String.t`, *default:* `discovery#restDescription`) - The kind for this response.
  *   `labels` (*type:* `list(String.t)`, *default:* `nil`) - Labels for the status of this API, such as labs or deprecated.
  *   `methods` (*type:* `%{optional(String.t) => GoogleApi.Discovery.V1.Model.RestMethod.t}`, *default:* `nil`) - API-level methods for this API.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of this API.
  *   `ownerDomain` (*type:* `String.t`, *default:* `nil`) - The domain of the owner of this API. Together with the ownerName and a packagePath values, this can be used to generate a library for this API which would have a unique fully qualified name.
  *   `ownerName` (*type:* `String.t`, *default:* `nil`) - The name of the owner of this API. See ownerDomain.
  *   `packagePath` (*type:* `String.t`, *default:* `nil`) - The package of the owner of this API. See ownerDomain.
  *   `parameters` (*type:* `%{optional(String.t) => GoogleApi.Discovery.V1.Model.JsonSchema.t}`, *default:* `nil`) - Common parameters that apply across all apis.
  *   `protocol` (*type:* `String.t`, *default:* `rest`) - The protocol described by this document.
  *   `resources` (*type:* `%{optional(String.t) => GoogleApi.Discovery.V1.Model.RestResource.t}`, *default:* `nil`) - The resources in this API.
  *   `revision` (*type:* `String.t`, *default:* `nil`) - The version of this API.
  *   `rootUrl` (*type:* `String.t`, *default:* `nil`) - The root URL under which all API services live.
  *   `schemas` (*type:* `%{optional(String.t) => GoogleApi.Discovery.V1.Model.JsonSchema.t}`, *default:* `nil`) - The schemas for this API.
  *   `servicePath` (*type:* `String.t`, *default:* `nil`) - The base path for all REST requests.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of this API.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of this API.
  *   `version_module` (*type:* `boolean()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :auth => GoogleApi.Discovery.V1.Model.RestDescriptionAuth.t(),
          :basePath => String.t(),
          :baseUrl => String.t(),
          :batchPath => String.t(),
          :canonicalName => String.t(),
          :description => String.t(),
          :discoveryVersion => String.t(),
          :documentationLink => String.t(),
          :etag => String.t(),
          :exponentialBackoffDefault => boolean(),
          :features => list(String.t()),
          :icons => GoogleApi.Discovery.V1.Model.RestDescriptionIcons.t(),
          :id => String.t(),
          :kind => String.t(),
          :labels => list(String.t()),
          :methods => %{optional(String.t()) => GoogleApi.Discovery.V1.Model.RestMethod.t()},
          :name => String.t(),
          :ownerDomain => String.t(),
          :ownerName => String.t(),
          :packagePath => String.t(),
          :parameters => %{optional(String.t()) => GoogleApi.Discovery.V1.Model.JsonSchema.t()},
          :protocol => String.t(),
          :resources => %{optional(String.t()) => GoogleApi.Discovery.V1.Model.RestResource.t()},
          :revision => String.t(),
          :rootUrl => String.t(),
          :schemas => %{optional(String.t()) => GoogleApi.Discovery.V1.Model.JsonSchema.t()},
          :servicePath => String.t(),
          :title => String.t(),
          :version => String.t(),
          :version_module => boolean()
        }

  field(:auth, as: GoogleApi.Discovery.V1.Model.RestDescriptionAuth)
  field(:basePath)
  field(:baseUrl)
  field(:batchPath)
  field(:canonicalName)
  field(:description)
  field(:discoveryVersion)
  field(:documentationLink)
  field(:etag)
  field(:exponentialBackoffDefault)
  field(:features, type: :list)
  field(:icons, as: GoogleApi.Discovery.V1.Model.RestDescriptionIcons)
  field(:id)
  field(:kind)
  field(:labels, type: :list)
  field(:methods, as: GoogleApi.Discovery.V1.Model.RestMethod, type: :map)
  field(:name)
  field(:ownerDomain)
  field(:ownerName)
  field(:packagePath)
  field(:parameters, as: GoogleApi.Discovery.V1.Model.JsonSchema, type: :map)
  field(:protocol)
  field(:resources, as: GoogleApi.Discovery.V1.Model.RestResource, type: :map)
  field(:revision)
  field(:rootUrl)
  field(:schemas, as: GoogleApi.Discovery.V1.Model.JsonSchema, type: :map)
  field(:servicePath)
  field(:title)
  field(:version)
  field(:version_module)
end

defimpl Poison.Decoder, for: GoogleApi.Discovery.V1.Model.RestDescription do
  def decode(value, options) do
    GoogleApi.Discovery.V1.Model.RestDescription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Discovery.V1.Model.RestDescription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
