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

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Macie {
    // MARK: Async API Calls

    /// (Discontinued) Associates a specified Amazon Web Services account with Amazon Macie Classic as a member account.
    public func associateMemberAccount(_ input: AssociateMemberAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AssociateMemberAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// (Discontinued) Associates specified S3 resources with Amazon Macie Classic for monitoring and data classification. If memberAccountId isn't specified, the action associates specified S3 resources with Macie Classic for the current Macie Classic administrator account. If memberAccountId is specified, the action associates specified S3 resources with Macie Classic for the specified member account.
    public func associateS3Resources(_ input: AssociateS3ResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateS3ResourcesResult {
        return try await self.client.execute(operation: "AssociateS3Resources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// (Discontinued) Removes the specified member account from Amazon Macie Classic.
    public func disassociateMemberAccount(_ input: DisassociateMemberAccountRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DisassociateMemberAccount", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// (Discontinued) Removes specified S3 resources from being monitored by Amazon Macie Classic. If memberAccountId isn't specified, the action removes specified S3 resources from Macie Classic for the current Macie Classic administrator account. If memberAccountId is specified, the action removes specified S3 resources from Macie Classic for the specified member account.
    public func disassociateS3Resources(_ input: DisassociateS3ResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateS3ResourcesResult {
        return try await self.client.execute(operation: "DisassociateS3Resources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// (Discontinued) Lists all Amazon Macie Classic member accounts for the current Macie Classic administrator account.
    public func listMemberAccounts(_ input: ListMemberAccountsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMemberAccountsResult {
        return try await self.client.execute(operation: "ListMemberAccounts", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// (Discontinued) Lists all the S3 resources associated with Amazon Macie Classic. If memberAccountId isn't specified, the action lists the S3 resources associated with Macie Classic for the current Macie Classic administrator account. If memberAccountId is specified, the action lists the S3 resources associated with Macie Classic for the specified member account.
    public func listS3Resources(_ input: ListS3ResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListS3ResourcesResult {
        return try await self.client.execute(operation: "ListS3Resources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// (Discontinued) Updates the classification types for the specified S3 resources. If memberAccountId isn't specified, the action updates the classification types of the S3 resources associated with Amazon Macie Classic for the current Macie Classic administrator account. If memberAccountId is specified, the action updates the classification types of the S3 resources associated with Macie Classic for the specified member account.
    public func updateS3Resources(_ input: UpdateS3ResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateS3ResourcesResult {
        return try await self.client.execute(operation: "UpdateS3Resources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
