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

import SotoCore

/// Error enum for WellArchitected
public struct WellArchitectedErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize WellArchitected
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// User does not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The resource already exists.
    public static var conflictException: Self { .init(.conflictException) }
    /// There is a problem with the AWS Well-Architected Tool API service.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The requested resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The user has reached their resource quota.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Request was denied due to request throttling.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The user input is not valid.
    public static var validationException: Self { .init(.validationException) }
}

extension WellArchitectedErrorType: Equatable {
    public static func == (lhs: WellArchitectedErrorType, rhs: WellArchitectedErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension WellArchitectedErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}