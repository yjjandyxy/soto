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

@_exported import SotoCore

import SotoCore

// MARK: Waiters

extension ACMPCA {
    public func waitUntilAuditReportCreated(
        _ input: DescribeCertificateAuthorityAuditReportRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("auditReportStatus", expected: "SUCCESS")),
                .init(state: .failure, matcher: try! JMESPathMatcher("auditReportStatus", expected: "FAILED")),
            ],
            minDelayTime: .seconds(3),
            command: describeCertificateAuthorityAuditReport
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilCertificateAuthorityCSRCreated(
        _ input: GetCertificateAuthorityCsrRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("RequestInProgressException")),
            ],
            minDelayTime: .seconds(3),
            command: getCertificateAuthorityCsr
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilCertificateIssued(
        _ input: GetCertificateRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: AWSSuccessMatcher()),
                .init(state: .retry, matcher: AWSErrorCodeMatcher("RequestInProgressException")),
            ],
            minDelayTime: .seconds(3),
            command: getCertificate
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
