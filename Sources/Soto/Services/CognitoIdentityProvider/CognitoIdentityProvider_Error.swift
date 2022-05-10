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

/// Error enum for CognitoIdentityProvider
public struct CognitoIdentityProviderErrorType: AWSErrorType {
    enum Code: String {
        case aliasExistsException = "AliasExistsException"
        case codeDeliveryFailureException = "CodeDeliveryFailureException"
        case codeMismatchException = "CodeMismatchException"
        case concurrentModificationException = "ConcurrentModificationException"
        case duplicateProviderException = "DuplicateProviderException"
        case enableSoftwareTokenMFAException = "EnableSoftwareTokenMFAException"
        case expiredCodeException = "ExpiredCodeException"
        case groupExistsException = "GroupExistsException"
        case internalErrorException = "InternalErrorException"
        case invalidEmailRoleAccessPolicyException = "InvalidEmailRoleAccessPolicyException"
        case invalidLambdaResponseException = "InvalidLambdaResponseException"
        case invalidOAuthFlowException = "InvalidOAuthFlowException"
        case invalidParameterException = "InvalidParameterException"
        case invalidPasswordException = "InvalidPasswordException"
        case invalidSmsRoleAccessPolicyException = "InvalidSmsRoleAccessPolicyException"
        case invalidSmsRoleTrustRelationshipException = "InvalidSmsRoleTrustRelationshipException"
        case invalidUserPoolConfigurationException = "InvalidUserPoolConfigurationException"
        case limitExceededException = "LimitExceededException"
        case mFAMethodNotFoundException = "MFAMethodNotFoundException"
        case notAuthorizedException = "NotAuthorizedException"
        case passwordResetRequiredException = "PasswordResetRequiredException"
        case preconditionNotMetException = "PreconditionNotMetException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case scopeDoesNotExistException = "ScopeDoesNotExistException"
        case softwareTokenMFANotFoundException = "SoftwareTokenMFANotFoundException"
        case tooManyFailedAttemptsException = "TooManyFailedAttemptsException"
        case tooManyRequestsException = "TooManyRequestsException"
        case unauthorizedException = "UnauthorizedException"
        case unexpectedLambdaException = "UnexpectedLambdaException"
        case unsupportedIdentityProviderException = "UnsupportedIdentityProviderException"
        case unsupportedOperationException = "UnsupportedOperationException"
        case unsupportedTokenTypeException = "UnsupportedTokenTypeException"
        case unsupportedUserStateException = "UnsupportedUserStateException"
        case userImportInProgressException = "UserImportInProgressException"
        case userLambdaValidationException = "UserLambdaValidationException"
        case userNotConfirmedException = "UserNotConfirmedException"
        case userNotFoundException = "UserNotFoundException"
        case userPoolAddOnNotEnabledException = "UserPoolAddOnNotEnabledException"
        case userPoolTaggingException = "UserPoolTaggingException"
        case usernameExistsException = "UsernameExistsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CognitoIdentityProvider
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

    /// This exception is thrown when a user tries to confirm the account with an email or phone number that has already been supplied as an alias from a different account. This exception tells user that an account with this email or phone already exists.
    public static var aliasExistsException: Self { .init(.aliasExistsException) }
    /// This exception is thrown when a verification code fails to deliver successfully.
    public static var codeDeliveryFailureException: Self { .init(.codeDeliveryFailureException) }
    /// This exception is thrown if the provided code doesn't match what the server was expecting.
    public static var codeMismatchException: Self { .init(.codeMismatchException) }
    /// This exception is thrown if two or more modifications are happening concurrently.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// This exception is thrown when the provider is already supported by the user pool.
    public static var duplicateProviderException: Self { .init(.duplicateProviderException) }
    /// This exception is thrown when there is a code mismatch and the service fails to configure the software token TOTP multi-factor authentication (MFA).
    public static var enableSoftwareTokenMFAException: Self { .init(.enableSoftwareTokenMFAException) }
    /// This exception is thrown if a code has expired.
    public static var expiredCodeException: Self { .init(.expiredCodeException) }
    /// This exception is thrown when Amazon Cognito encounters a group that already exists in the user pool.
    public static var groupExistsException: Self { .init(.groupExistsException) }
    /// This exception is thrown when Amazon Cognito encounters an internal error.
    public static var internalErrorException: Self { .init(.internalErrorException) }
    /// This exception is thrown when Amazon Cognito isn't allowed to use your email identity. HTTP status code: 400.
    public static var invalidEmailRoleAccessPolicyException: Self { .init(.invalidEmailRoleAccessPolicyException) }
    /// This exception is thrown when Amazon Cognito encounters an invalid Lambda response.
    public static var invalidLambdaResponseException: Self { .init(.invalidLambdaResponseException) }
    /// This exception is thrown when the specified OAuth flow is not valid.
    public static var invalidOAuthFlowException: Self { .init(.invalidOAuthFlowException) }
    /// This exception is thrown when the Amazon Cognito service encounters an invalid parameter.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// This exception is thrown when Amazon Cognito encounters an invalid password.
    public static var invalidPasswordException: Self { .init(.invalidPasswordException) }
    /// This exception is returned when the role provided for SMS configuration doesn't have permission to publish using Amazon SNS.
    public static var invalidSmsRoleAccessPolicyException: Self { .init(.invalidSmsRoleAccessPolicyException) }
    /// This exception is thrown when the trust relationship is not valid for the role provided for SMS configuration. This can happen if you don't trust cognito-idp.amazonaws.com or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.
    public static var invalidSmsRoleTrustRelationshipException: Self { .init(.invalidSmsRoleTrustRelationshipException) }
    /// This exception is thrown when the user pool configuration is not valid.
    public static var invalidUserPoolConfigurationException: Self { .init(.invalidUserPoolConfigurationException) }
    /// This exception is thrown when a user exceeds the limit for a requested Amazon Web Services resource.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// This exception is thrown when Amazon Cognito can't find a multi-factor authentication (MFA) method.
    public static var mFAMethodNotFoundException: Self { .init(.mFAMethodNotFoundException) }
    /// This exception is thrown when a user isn't authorized.
    public static var notAuthorizedException: Self { .init(.notAuthorizedException) }
    /// This exception is thrown when a password reset is required.
    public static var passwordResetRequiredException: Self { .init(.passwordResetRequiredException) }
    /// This exception is thrown when a precondition is not met.
    public static var preconditionNotMetException: Self { .init(.preconditionNotMetException) }
    /// This exception is thrown when the Amazon Cognito service can't find the requested resource.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// This exception is thrown when the specified scope doesn't exist.
    public static var scopeDoesNotExistException: Self { .init(.scopeDoesNotExistException) }
    /// This exception is thrown when the software token time-based one-time password (TOTP) multi-factor authentication (MFA) isn't activated for the user pool.
    public static var softwareTokenMFANotFoundException: Self { .init(.softwareTokenMFANotFoundException) }
    /// This exception is thrown when the user has made too many failed attempts for a given action, such as sign-in.
    public static var tooManyFailedAttemptsException: Self { .init(.tooManyFailedAttemptsException) }
    /// This exception is thrown when the user has made too many requests for a given operation.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
    /// Exception that is thrown when the request isn't authorized. This can happen due to an invalid access token in the request.
    public static var unauthorizedException: Self { .init(.unauthorizedException) }
    /// This exception is thrown when Amazon Cognito encounters an unexpected exception with Lambda.
    public static var unexpectedLambdaException: Self { .init(.unexpectedLambdaException) }
    /// This exception is thrown when the specified identifier isn't supported.
    public static var unsupportedIdentityProviderException: Self { .init(.unsupportedIdentityProviderException) }
    /// Exception that is thrown when you attempt to perform an operation that isn't enabled for the user pool client.
    public static var unsupportedOperationException: Self { .init(.unsupportedOperationException) }
    /// Exception that is thrown when an unsupported token is passed to an operation.
    public static var unsupportedTokenTypeException: Self { .init(.unsupportedTokenTypeException) }
    /// The request failed because the user is in an unsupported state.
    public static var unsupportedUserStateException: Self { .init(.unsupportedUserStateException) }
    /// This exception is thrown when you're trying to modify a user pool while a user import job is in progress for that pool.
    public static var userImportInProgressException: Self { .init(.userImportInProgressException) }
    /// This exception is thrown when the Amazon Cognito service encounters a user validation exception with the Lambda service.
    public static var userLambdaValidationException: Self { .init(.userLambdaValidationException) }
    /// This exception is thrown when a user isn't confirmed successfully.
    public static var userNotConfirmedException: Self { .init(.userNotConfirmedException) }
    /// This exception is thrown when a user isn't found.
    public static var userNotFoundException: Self { .init(.userNotFoundException) }
    /// This exception is thrown when user pool add-ons aren't enabled.
    public static var userPoolAddOnNotEnabledException: Self { .init(.userPoolAddOnNotEnabledException) }
    /// This exception is thrown when a user pool tag can't be set or updated.
    public static var userPoolTaggingException: Self { .init(.userPoolTaggingException) }
    /// This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.
    public static var usernameExistsException: Self { .init(.usernameExistsException) }
}

extension CognitoIdentityProviderErrorType: Equatable {
    public static func == (lhs: CognitoIdentityProviderErrorType, rhs: CognitoIdentityProviderErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CognitoIdentityProviderErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
