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

/// Error enum for FSx
public struct FSxErrorType: AWSErrorType {
    enum Code: String {
        case activeDirectoryError = "ActiveDirectoryError"
        case backupBeingCopied = "BackupBeingCopied"
        case backupInProgress = "BackupInProgress"
        case backupNotFound = "BackupNotFound"
        case backupRestoring = "BackupRestoring"
        case badRequest = "BadRequest"
        case dataRepositoryAssociationNotFound = "DataRepositoryAssociationNotFound"
        case dataRepositoryTaskEnded = "DataRepositoryTaskEnded"
        case dataRepositoryTaskExecuting = "DataRepositoryTaskExecuting"
        case dataRepositoryTaskNotFound = "DataRepositoryTaskNotFound"
        case fileSystemNotFound = "FileSystemNotFound"
        case incompatibleParameterError = "IncompatibleParameterError"
        case incompatibleRegionForMultiAZ = "IncompatibleRegionForMultiAZ"
        case internalServerError = "InternalServerError"
        case invalidDataRepositoryType = "InvalidDataRepositoryType"
        case invalidDestinationKmsKey = "InvalidDestinationKmsKey"
        case invalidExportPath = "InvalidExportPath"
        case invalidImportPath = "InvalidImportPath"
        case invalidNetworkSettings = "InvalidNetworkSettings"
        case invalidPerUnitStorageThroughput = "InvalidPerUnitStorageThroughput"
        case invalidRegion = "InvalidRegion"
        case invalidSourceKmsKey = "InvalidSourceKmsKey"
        case missingFileSystemConfiguration = "MissingFileSystemConfiguration"
        case missingVolumeConfiguration = "MissingVolumeConfiguration"
        case notServiceResourceError = "NotServiceResourceError"
        case resourceDoesNotSupportTagging = "ResourceDoesNotSupportTagging"
        case resourceNotFound = "ResourceNotFound"
        case serviceLimitExceeded = "ServiceLimitExceeded"
        case snapshotNotFound = "SnapshotNotFound"
        case sourceBackupUnavailable = "SourceBackupUnavailable"
        case storageVirtualMachineNotFound = "StorageVirtualMachineNotFound"
        case unsupportedOperation = "UnsupportedOperation"
        case volumeNotFound = "VolumeNotFound"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize FSx
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

    /// An Active Directory error.
    public static var activeDirectoryError: Self { .init(.activeDirectoryError) }
    /// You can't delete a backup while it's being copied.
    public static var backupBeingCopied: Self { .init(.backupBeingCopied) }
    /// Another backup is already under way. Wait for completion before initiating additional backups of this file system.
    public static var backupInProgress: Self { .init(.backupInProgress) }
    /// No Amazon FSx backups were found based upon the supplied parameters.
    public static var backupNotFound: Self { .init(.backupNotFound) }
    /// You can't delete a backup while it's being used to restore a file system.
    public static var backupRestoring: Self { .init(.backupRestoring) }
    /// A generic error indicating a failure with a client request.
    public static var badRequest: Self { .init(.badRequest) }
    /// No data repository associations were found based upon the supplied parameters.
    public static var dataRepositoryAssociationNotFound: Self { .init(.dataRepositoryAssociationNotFound) }
    /// The data repository task could not be canceled because the task has already ended.
    public static var dataRepositoryTaskEnded: Self { .init(.dataRepositoryTaskEnded) }
    /// An existing data repository task is currently executing on the file system. Wait until the existing task has completed, then create the new task.
    public static var dataRepositoryTaskExecuting: Self { .init(.dataRepositoryTaskExecuting) }
    /// The data repository task or tasks you specified could not be found.
    public static var dataRepositoryTaskNotFound: Self { .init(.dataRepositoryTaskNotFound) }
    /// No Amazon FSx file systems were found based upon supplied parameters.
    public static var fileSystemNotFound: Self { .init(.fileSystemNotFound) }
    /// The error returned when a second request is received with the same client request token but different parameters settings. A client request token should always uniquely identify a single request.
    public static var incompatibleParameterError: Self { .init(.incompatibleParameterError) }
    /// Amazon FSx doesn't support Multi-AZ Windows File Server copy backup in the destination Region, so the copied backup can't be restored.
    public static var incompatibleRegionForMultiAZ: Self { .init(.incompatibleRegionForMultiAZ) }
    /// A generic error indicating a server-side failure.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// You have filtered the response to a data repository type that is not supported.
    public static var invalidDataRepositoryType: Self { .init(.invalidDataRepositoryType) }
    /// The Key Management Service (KMS) key of the destination backup is not valid.
    public static var invalidDestinationKmsKey: Self { .init(.invalidDestinationKmsKey) }
    /// The path provided for data repository export isn't valid.
    public static var invalidExportPath: Self { .init(.invalidExportPath) }
    /// The path provided for data repository import isn't valid.
    public static var invalidImportPath: Self { .init(.invalidImportPath) }
    /// One or more network settings specified in the request are invalid.
    public static var invalidNetworkSettings: Self { .init(.invalidNetworkSettings) }
    /// An invalid value for PerUnitStorageThroughput was provided. Please create your file system again, using a valid value.
    public static var invalidPerUnitStorageThroughput: Self { .init(.invalidPerUnitStorageThroughput) }
    /// The Region provided for SourceRegion is not valid or is in a different Amazon Web Services partition.
    public static var invalidRegion: Self { .init(.invalidRegion) }
    /// The Key Management Service (KMS) key of the source backup is not valid.
    public static var invalidSourceKmsKey: Self { .init(.invalidSourceKmsKey) }
    /// A file system configuration is required for this operation.
    public static var missingFileSystemConfiguration: Self { .init(.missingFileSystemConfiguration) }
    /// A volume configuration is required for this operation.
    public static var missingVolumeConfiguration: Self { .init(.missingVolumeConfiguration) }
    /// The resource specified for the tagging operation is not a resource type owned by Amazon FSx. Use the API of the relevant service to perform the operation.
    public static var notServiceResourceError: Self { .init(.notServiceResourceError) }
    /// The resource specified does not support tagging.
    public static var resourceDoesNotSupportTagging: Self { .init(.resourceDoesNotSupportTagging) }
    /// The resource specified by the Amazon Resource Name (ARN) can't be found.
    public static var resourceNotFound: Self { .init(.resourceNotFound) }
    /// An error indicating that a particular service limit was exceeded. You can increase some service limits by contacting Amazon Web Services Support.
    public static var serviceLimitExceeded: Self { .init(.serviceLimitExceeded) }
    /// No Amazon FSx snapshots were found based on the supplied parameters.
    public static var snapshotNotFound: Self { .init(.snapshotNotFound) }
    /// The request was rejected because the lifecycle status of the source backup isn't AVAILABLE.
    public static var sourceBackupUnavailable: Self { .init(.sourceBackupUnavailable) }
    /// No FSx for ONTAP SVMs were found based upon the supplied parameters.
    public static var storageVirtualMachineNotFound: Self { .init(.storageVirtualMachineNotFound) }
    /// The requested operation is not supported for this resource or API.
    public static var unsupportedOperation: Self { .init(.unsupportedOperation) }
    /// No Amazon FSx volumes were found based upon the supplied parameters.
    public static var volumeNotFound: Self { .init(.volumeNotFound) }
}

extension FSxErrorType: Equatable {
    public static func == (lhs: FSxErrorType, rhs: FSxErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension FSxErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
