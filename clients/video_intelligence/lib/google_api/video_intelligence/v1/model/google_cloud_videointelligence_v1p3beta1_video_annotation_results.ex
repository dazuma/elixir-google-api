# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults do
  @moduledoc """
  Annotation results for a single video.

  ## Attributes

  - error (GoogleRpcStatus): If set, indicates an error. Note that for a single &#x60;AnnotateVideoRequest&#x60; some videos may succeed and some may fail. Defaults to: `null`.
  - explicitAnnotation (GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation): Explicit content annotation. Defaults to: `null`.
  - frameLabelAnnotations ([GoogleCloudVideointelligenceV1p3beta1LabelAnnotation]): Label annotations on frame level. There is exactly one element for each unique label. Defaults to: `null`.
  - inputUri (String.t): Video file location in [Google Cloud Storage](https://cloud.google.com/storage/). Defaults to: `null`.
  - logoRecognitionAnnotations ([GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation]): Annotations for list of logos detected, tracked and recognized in video. Defaults to: `null`.
  - objectAnnotations ([GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation]): Annotations for list of objects detected and tracked in video. Defaults to: `null`.
  - segmentLabelAnnotations ([GoogleCloudVideointelligenceV1p3beta1LabelAnnotation]): Label annotations on video level or user specified segment level. There is exactly one element for each unique label. Defaults to: `null`.
  - shotAnnotations ([GoogleCloudVideointelligenceV1p3beta1VideoSegment]): Shot annotations. Each shot is represented as a video segment. Defaults to: `null`.
  - shotLabelAnnotations ([GoogleCloudVideointelligenceV1p3beta1LabelAnnotation]): Label annotations on shot level. There is exactly one element for each unique label. Defaults to: `null`.
  - speechTranscriptions ([GoogleCloudVideointelligenceV1p3beta1SpeechTranscription]): Speech transcription. Defaults to: `null`.
  - textAnnotations ([GoogleCloudVideointelligenceV1p3beta1TextAnnotation]): OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.VideoIntelligence.V1.Model.GoogleRpcStatus.t(),
          :explicitAnnotation =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation.t(),
          :frameLabelAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation.t()
            ),
          :inputUri => any(),
          :logoRecognitionAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation.t()
            ),
          :objectAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation.t()
            ),
          :segmentLabelAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation.t()
            ),
          :shotAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1VideoSegment.t()
            ),
          :shotLabelAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation.t()
            ),
          :speechTranscriptions =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription.t()
            ),
          :textAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1TextAnnotation.t()
            )
        }

  field(:error, as: GoogleApi.VideoIntelligence.V1.Model.GoogleRpcStatus)

  field(
    :explicitAnnotation,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1ExplicitContentAnnotation
  )

  field(
    :frameLabelAnnotations,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation,
    type: :list
  )

  field(:inputUri)

  field(
    :logoRecognitionAnnotations,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1LogoRecognitionAnnotation,
    type: :list
  )

  field(
    :objectAnnotations,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1ObjectTrackingAnnotation,
    type: :list
  )

  field(
    :segmentLabelAnnotations,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation,
    type: :list
  )

  field(
    :shotAnnotations,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1VideoSegment,
    type: :list
  )

  field(
    :shotLabelAnnotations,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1LabelAnnotation,
    type: :list
  )

  field(
    :speechTranscriptions,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1SpeechTranscription,
    type: :list
  )

  field(
    :textAnnotations,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1TextAnnotation,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1VideoAnnotationResults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
