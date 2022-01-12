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
extension DataExchange {
    ///  This operation lists a data set's revisions sorted by CreatedAt in descending order.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDataSetRevisionsPaginator(
        _ input: ListDataSetRevisionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataSetRevisionsRequest, ListDataSetRevisionsResponse> {
        return .init(
            input: input,
            command: listDataSetRevisions,
            inputKey: \ListDataSetRevisionsRequest.nextToken,
            outputKey: \ListDataSetRevisionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDataSetsPaginator(
        _ input: ListDataSetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataSetsRequest, ListDataSetsResponse> {
        return .init(
            input: input,
            command: listDataSets,
            inputKey: \ListDataSetsRequest.nextToken,
            outputKey: \ListDataSetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This operation lists your event actions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEventActionsPaginator(
        _ input: ListEventActionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEventActionsRequest, ListEventActionsResponse> {
        return .init(
            input: input,
            command: listEventActions,
            inputKey: \ListEventActionsRequest.nextToken,
            outputKey: \ListEventActionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This operation lists your jobs sorted by CreatedAt in descending order.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListJobsRequest, ListJobsResponse> {
        return .init(
            input: input,
            command: listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  This operation lists a revision's assets sorted alphabetically in descending order.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRevisionAssetsPaginator(
        _ input: ListRevisionAssetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRevisionAssetsRequest, ListRevisionAssetsResponse> {
        return .init(
            input: input,
            command: listRevisionAssets,
            inputKey: \ListRevisionAssetsRequest.nextToken,
            outputKey: \ListRevisionAssetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
