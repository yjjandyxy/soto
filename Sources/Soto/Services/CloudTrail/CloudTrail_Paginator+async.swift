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
extension CloudTrail {
    ///  Gets event data results of a query. You must specify the QueryID value returned by the StartQuery operation, and an ARN for EventDataStore.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getQueryResultsPaginator(
        _ input: GetQueryResultsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetQueryResultsRequest, GetQueryResultsResponse> {
        return .init(
            input: input,
            command: getQueryResults,
            inputKey: \GetQueryResultsRequest.nextToken,
            outputKey: \GetQueryResultsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about all event data stores in the account, in the current region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEventDataStoresPaginator(
        _ input: ListEventDataStoresRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEventDataStoresRequest, ListEventDataStoresResponse> {
        return .init(
            input: input,
            command: listEventDataStores,
            inputKey: \ListEventDataStoresRequest.nextToken,
            outputKey: \ListEventDataStoresResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.  CloudTrail uses different private and public key pairs per region. Each digest file is signed with a private key unique to its region. When you validate a digest file from a specific region, you must look in the same region for its corresponding public key.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPublicKeysPaginator(
        _ input: ListPublicKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPublicKeysRequest, ListPublicKeysResponse> {
        return .init(
            input: input,
            command: listPublicKeys,
            inputKey: \ListPublicKeysRequest.nextToken,
            outputKey: \ListPublicKeysResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of queries and query statuses for the past seven days. You must specify an ARN value for EventDataStore. Optionally, to shorten the list of results, you can specify a time range, formatted as timestamps, by adding StartTime and EndTime parameters, and a QueryStatus value. Valid values for QueryStatus include QUEUED, RUNNING, FINISHED, FAILED, TIMED_OUT, or CANCELLED.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listQueriesPaginator(
        _ input: ListQueriesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListQueriesRequest, ListQueriesResponse> {
        return .init(
            input: input,
            command: listQueries,
            inputKey: \ListQueriesRequest.nextToken,
            outputKey: \ListQueriesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the tags for the trail or event data store in the current region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsPaginator(
        _ input: ListTagsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsRequest, ListTagsResponse> {
        return .init(
            input: input,
            command: listTags,
            inputKey: \ListTagsRequest.nextToken,
            outputKey: \ListTagsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists trails that are in the current account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTrailsPaginator(
        _ input: ListTrailsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTrailsRequest, ListTrailsResponse> {
        return .init(
            input: input,
            command: listTrails,
            inputKey: \ListTrailsRequest.nextToken,
            outputKey: \ListTrailsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Looks up management events or CloudTrail Insights events that are captured by CloudTrail. You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:   Amazon Web Services access key   Event ID   Event name   Event source   Read only   Resource name   Resource type   User name   Lookup supports the following attributes for Insights events:   Event ID   Event name   Event source   All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.  The rate of lookup requests is limited to two per second, per account, per region. If this limit is exceeded, a throttling error occurs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func lookupEventsPaginator(
        _ input: LookupEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<LookupEventsRequest, LookupEventsResponse> {
        return .init(
            input: input,
            command: lookupEvents,
            inputKey: \LookupEventsRequest.nextToken,
            outputKey: \LookupEventsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
