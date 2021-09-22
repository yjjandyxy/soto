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

#if compiler(>=5.5)

import SotoCore

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension SnowDeviceManagement {
    ///  Returns a list of the Amazon Web Services resources available for a device. Currently, Amazon EC2 instances are the only supported resource type.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeviceResourcesPaginator(
        _ input: ListDeviceResourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeviceResourcesInput, ListDeviceResourcesOutput> {
        return .init(
            input: input,
            command: listDeviceResources,
            inputKey: \ListDeviceResourcesInput.nextToken,
            outputKey: \ListDeviceResourcesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all devices on your Amazon Web Services account that have Amazon Web Services Snow Device Management enabled in the Amazon Web Services Region where the command is run.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDevicesPaginator(
        _ input: ListDevicesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDevicesInput, ListDevicesOutput> {
        return .init(
            input: input,
            command: listDevices,
            inputKey: \ListDevicesInput.nextToken,
            outputKey: \ListDevicesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the status of tasks for one or more target devices.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listExecutionsPaginator(
        _ input: ListExecutionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListExecutionsInput, ListExecutionsOutput> {
        return .init(
            input: input,
            command: listExecutions,
            inputKey: \ListExecutionsInput.nextToken,
            outputKey: \ListExecutionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of tasks that can be filtered by state.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTasksPaginator(
        _ input: ListTasksInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTasksInput, ListTasksOutput> {
        return .init(
            input: input,
            command: listTasks,
            inputKey: \ListTasksInput.nextToken,
            outputKey: \ListTasksOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5)