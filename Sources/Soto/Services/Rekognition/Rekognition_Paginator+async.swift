//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Rekognition {
    ///  Lists and describes the versions of a model in an Amazon Rekognition Custom Labels project. You can specify up to 10 model versions in ProjectVersionArns. If you don't specify a value, descriptions for all model versions in the project are returned. This operation requires permissions to perform the rekognition:DescribeProjectVersions action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeProjectVersionsPaginator(
        _ input: DescribeProjectVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeProjectVersionsRequest, DescribeProjectVersionsResponse> {
        return .init(
            input: input,
            command: describeProjectVersions,
            inputKey: \DescribeProjectVersionsRequest.nextToken,
            outputKey: \DescribeProjectVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about your Amazon Rekognition Custom Labels projects.  This operation requires permissions to perform the rekognition:DescribeProjects action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeProjectsPaginator(
        _ input: DescribeProjectsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeProjectsRequest, DescribeProjectsResponse> {
        return .init(
            input: input,
            command: describeProjects,
            inputKey: \DescribeProjectsRequest.nextToken,
            outputKey: \DescribeProjectsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the celebrity recognition results for a Amazon Rekognition Video analysis started by StartCelebrityRecognition. Celebrity recognition in a video is an asynchronous operation. Analysis is started by a call to StartCelebrityRecognition which returns a job identifier (JobId).  When the celebrity recognition operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartCelebrityRecognition. To get the results of the celebrity recognition analysis, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetCelebrityDetection and pass the job identifier (JobId) from the initial call to StartCelebrityDetection.  For more information, see Working With Stored Videos in the Amazon Rekognition Developer Guide.  GetCelebrityRecognition returns detected celebrities and the time(s) they are detected in an array (Celebrities) of CelebrityRecognition objects. Each CelebrityRecognition contains information about the celebrity in a CelebrityDetail object and the time, Timestamp, the celebrity was detected. This CelebrityDetail object stores information about the detected celebrity's face attributes, a face bounding box, known gender, the celebrity's name, and a confidence estimate.   GetCelebrityRecognition only returns the default facial attributes (BoundingBox, Confidence, Landmarks, Pose, and Quality). The BoundingBox field only applies to the detected face instance. The other facial attributes listed in the Face object of the following response syntax are not returned. For more information, see FaceDetail in the Amazon Rekognition Developer Guide.   By default, the Celebrities array is sorted by time (milliseconds from the start of the video). You can also sort the array by celebrity by specifying the value ID in the SortBy input parameter. The CelebrityDetail object includes the celebrity identifer and additional information urls. If you don't store the additional information urls, you can get them later by calling GetCelebrityInfo with the celebrity identifer. No information is returned for faces not recognized as celebrities. Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetCelebrityDetection and populate the NextToken request parameter with the token value returned from the previous call to GetCelebrityRecognition.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCelebrityRecognitionPaginator(
        _ input: GetCelebrityRecognitionRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCelebrityRecognitionRequest, GetCelebrityRecognitionResponse> {
        return .init(
            input: input,
            command: getCelebrityRecognition,
            inputKey: \GetCelebrityRecognitionRequest.nextToken,
            outputKey: \GetCelebrityRecognitionResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the inappropriate, unwanted, or offensive content analysis results for a Amazon Rekognition Video analysis started by StartContentModeration. For a list of moderation labels in Amazon Rekognition, see Using the image and video moderation APIs. Amazon Rekognition Video inappropriate or offensive content detection in a stored video is an asynchronous operation. You start analysis by calling StartContentModeration which returns a job identifier (JobId). When analysis finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartContentModeration. To get the results of the content analysis, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetContentModeration and pass the job identifier (JobId) from the initial call to StartContentModeration.  For more information, see Working with Stored Videos in the Amazon Rekognition Devlopers Guide.  GetContentModeration returns detected inappropriate, unwanted, or offensive content moderation labels, and the time they are detected, in an array, ModerationLabels, of ContentModerationDetection objects.  By default, the moderated labels are returned sorted by time, in milliseconds from the start of the video. You can also sort them by moderated label by specifying NAME for the SortBy input parameter.  Since video analysis can return a large number of results, use the MaxResults parameter to limit the number of labels returned in a single call to GetContentModeration. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetContentModeration and populate the NextToken request parameter with the value of NextToken returned from the previous call to GetContentModeration. For more information, see moderating content in the Amazon Rekognition Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getContentModerationPaginator(
        _ input: GetContentModerationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetContentModerationRequest, GetContentModerationResponse> {
        return .init(
            input: input,
            command: getContentModeration,
            inputKey: \GetContentModerationRequest.nextToken,
            outputKey: \GetContentModerationResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets face detection results for a Amazon Rekognition Video analysis started by StartFaceDetection. Face detection with Amazon Rekognition Video is an asynchronous operation. You start face detection by calling StartFaceDetection which returns a job identifier (JobId). When the face detection operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartFaceDetection. To get the results of the face detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetFaceDetection and pass the job identifier (JobId) from the initial call to StartFaceDetection.  GetFaceDetection returns an array of detected faces (Faces) sorted by the time the faces were detected.  Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetFaceDetection and populate the NextToken request parameter with the token value returned from the previous call to GetFaceDetection.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getFaceDetectionPaginator(
        _ input: GetFaceDetectionRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetFaceDetectionRequest, GetFaceDetectionResponse> {
        return .init(
            input: input,
            command: getFaceDetection,
            inputKey: \GetFaceDetectionRequest.nextToken,
            outputKey: \GetFaceDetectionResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the face search results for Amazon Rekognition Video face search started by StartFaceSearch. The search returns faces in a collection that match the faces of persons detected in a video. It also includes the time(s) that faces are matched in the video. Face search in a video is an asynchronous operation. You start face search by calling to StartFaceSearch which returns a job identifier (JobId). When the search operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartFaceSearch. To get the search results, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetFaceSearch and pass the job identifier (JobId) from the initial call to StartFaceSearch. For more information, see Searching Faces in a Collection in the Amazon Rekognition Developer Guide. The search results are retured in an array, Persons, of PersonMatch objects. EachPersonMatch element contains details about the matching faces in the input collection, person information (facial attributes, bounding boxes, and person identifer) for the matched person, and the time the person was matched in the video.   GetFaceSearch only returns the default facial attributes (BoundingBox, Confidence, Landmarks, Pose, and Quality). The other facial attributes listed in the Face object of the following response syntax are not returned. For more information, see FaceDetail in the Amazon Rekognition Developer Guide.   By default, the Persons array is sorted by the time, in milliseconds from the start of the video, persons are matched. You can also sort by persons by specifying INDEX for the SORTBY input parameter.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getFaceSearchPaginator(
        _ input: GetFaceSearchRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetFaceSearchRequest, GetFaceSearchResponse> {
        return .init(
            input: input,
            command: getFaceSearch,
            inputKey: \GetFaceSearchRequest.nextToken,
            outputKey: \GetFaceSearchResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the label detection results of a Amazon Rekognition Video analysis started by StartLabelDetection.  The label detection operation is started by a call to StartLabelDetection which returns a job identifier (JobId). When the label detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartlabelDetection. To get the results of the label detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetLabelDetection and pass the job identifier (JobId) from the initial call to StartLabelDetection.  GetLabelDetection returns an array of detected labels (Labels) sorted by the time the labels were detected. You can also sort by the label name by specifying NAME for the SortBy input parameter. The labels returned include the label name, the percentage confidence in the accuracy of the detected label, and the time the label was detected in the video. The returned labels also include bounding box information for common objects, a hierarchical taxonomy of detected labels, and the version of the label model used for detection. Use MaxResults parameter to limit the number of labels returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetlabelDetection and populate the NextToken request parameter with the token value returned from the previous call to GetLabelDetection.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getLabelDetectionPaginator(
        _ input: GetLabelDetectionRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetLabelDetectionRequest, GetLabelDetectionResponse> {
        return .init(
            input: input,
            command: getLabelDetection,
            inputKey: \GetLabelDetectionRequest.nextToken,
            outputKey: \GetLabelDetectionResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the path tracking results of a Amazon Rekognition Video analysis started by StartPersonTracking. The person path tracking operation is started by a call to StartPersonTracking which returns a job identifier (JobId). When the operation finishes, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartPersonTracking. To get the results of the person path tracking operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If so, call GetPersonTracking and pass the job identifier (JobId) from the initial call to StartPersonTracking.  GetPersonTracking returns an array, Persons, of tracked persons and the time(s) their paths were tracked in the video.    GetPersonTracking only returns the default facial attributes (BoundingBox, Confidence, Landmarks, Pose, and Quality). The other facial attributes listed in the Face object of the following response syntax are not returned.  For more information, see FaceDetail in the Amazon Rekognition Developer Guide.  By default, the array is sorted by the time(s) a person's path is tracked in the video. You can sort by tracked persons by specifying INDEX for the SortBy input parameter. Use the MaxResults parameter to limit the number of items returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetPersonTracking and populate the NextToken request parameter with the token value returned from the previous call to GetPersonTracking.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getPersonTrackingPaginator(
        _ input: GetPersonTrackingRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetPersonTrackingRequest, GetPersonTrackingResponse> {
        return .init(
            input: input,
            command: getPersonTracking,
            inputKey: \GetPersonTrackingRequest.nextToken,
            outputKey: \GetPersonTrackingResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the segment detection results of a Amazon Rekognition Video analysis started by StartSegmentDetection. Segment detection with Amazon Rekognition Video is an asynchronous operation. You start segment detection by calling StartSegmentDetection which returns a job identifier (JobId). When the segment detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartSegmentDetection. To get the results of the segment detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. if so, call GetSegmentDetection and pass the job identifier (JobId) from the initial call of StartSegmentDetection.  GetSegmentDetection returns detected segments in an array (Segments) of SegmentDetection objects. Segments is sorted by the segment types specified in the SegmentTypes input parameter of StartSegmentDetection. Each element of the array includes the detected segment, the precentage confidence in the acuracy of the detected segment, the type of the segment, and the frame in which the segment was detected. Use SelectedSegmentTypes to find out the type of segment detection requested in the call to StartSegmentDetection. Use the MaxResults parameter to limit the number of segment detections returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetSegmentDetection and populate the NextToken request parameter with the token value returned from the previous call to GetSegmentDetection. For more information, see Detecting video segments in stored video in the Amazon Rekognition Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getSegmentDetectionPaginator(
        _ input: GetSegmentDetectionRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetSegmentDetectionRequest, GetSegmentDetectionResponse> {
        return .init(
            input: input,
            command: getSegmentDetection,
            inputKey: \GetSegmentDetectionRequest.nextToken,
            outputKey: \GetSegmentDetectionResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the text detection results of a Amazon Rekognition Video analysis started by StartTextDetection. Text detection with Amazon Rekognition Video is an asynchronous operation. You start text detection by calling StartTextDetection which returns a job identifier (JobId) When the text detection operation finishes, Amazon Rekognition publishes a completion status to the Amazon Simple Notification Service topic registered in the initial call to StartTextDetection. To get the results of the text detection operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. if so, call GetTextDetection and pass the job identifier (JobId) from the initial call of StartLabelDetection.  GetTextDetection returns an array of detected text (TextDetections) sorted by the time the text was detected, up to 50 words per frame of video. Each element of the array includes the detected text, the precentage confidence in the acuracy of the detected text, the time the text was detected, bounding box information for where the text was located, and unique identifiers for words and their lines. Use MaxResults parameter to limit the number of text detections returned. If there are more results than specified in MaxResults, the value of NextToken in the operation response contains a pagination token for getting the next set of results. To get the next page of results, call GetTextDetection and populate the NextToken request parameter with the token value returned from the previous call to GetTextDetection.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getTextDetectionPaginator(
        _ input: GetTextDetectionRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetTextDetectionRequest, GetTextDetectionResponse> {
        return .init(
            input: input,
            command: getTextDetection,
            inputKey: \GetTextDetectionRequest.nextToken,
            outputKey: \GetTextDetectionResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns list of collection IDs in your account. If the result is truncated, the response also provides a NextToken that you can use in the subsequent request to fetch the next set of collection IDs. For an example, see Listing collections in the Amazon Rekognition Developer Guide. This operation requires permissions to perform the rekognition:ListCollections action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCollectionsPaginator(
        _ input: ListCollectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCollectionsRequest, ListCollectionsResponse> {
        return .init(
            input: input,
            command: listCollections,
            inputKey: \ListCollectionsRequest.nextToken,
            outputKey: \ListCollectionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Lists the entries (images) within a dataset. An entry is a JSON Line that contains the information for a single image, including the image location, assigned labels, and object location bounding boxes. For more information, see Creating a manifest file. JSON Lines in the response include information about non-terminal errors found in the dataset. Non terminal errors are reported in errors lists within each JSON Line. The same information is reported in the training and testing validation result manifests that Amazon Rekognition Custom Labels creates during model training.  You can filter the response in variety of ways, such as choosing which labels to return and returning JSON Lines created after a specific date.  This operation requires permissions to perform the rekognition:ListDatasetEntries action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetEntriesPaginator(
        _ input: ListDatasetEntriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetEntriesRequest, ListDatasetEntriesResponse> {
        return .init(
            input: input,
            command: listDatasetEntries,
            inputKey: \ListDatasetEntriesRequest.nextToken,
            outputKey: \ListDatasetEntriesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the labels in a dataset. Amazon Rekognition Custom Labels uses labels to describe images. For more information, see Labeling images.   Lists the labels in a dataset. Amazon Rekognition Custom Labels uses labels to describe images. For more information, see Labeling images in the Amazon Rekognition Custom Labels Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetLabelsPaginator(
        _ input: ListDatasetLabelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetLabelsRequest, ListDatasetLabelsResponse> {
        return .init(
            input: input,
            command: listDatasetLabels,
            inputKey: \ListDatasetLabelsRequest.nextToken,
            outputKey: \ListDatasetLabelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns metadata for faces in the specified collection. This metadata includes information such as the bounding box coordinates, the confidence (that the bounding box contains a face), and face ID. For an example, see Listing Faces in a Collection in the Amazon Rekognition Developer Guide. This operation requires permissions to perform the rekognition:ListFaces action.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFacesPaginator(
        _ input: ListFacesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFacesRequest, ListFacesResponse> {
        return .init(
            input: input,
            command: listFaces,
            inputKey: \ListFacesRequest.nextToken,
            outputKey: \ListFacesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of stream processors that you have created with CreateStreamProcessor.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStreamProcessorsPaginator(
        _ input: ListStreamProcessorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStreamProcessorsRequest, ListStreamProcessorsResponse> {
        return .init(
            input: input,
            command: listStreamProcessors,
            inputKey: \ListStreamProcessorsRequest.nextToken,
            outputKey: \ListStreamProcessorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
