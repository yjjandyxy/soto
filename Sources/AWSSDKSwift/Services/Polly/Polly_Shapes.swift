// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Polly {

    public struct SynthesisTask: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TaskStatus", required: false, type: .enum), 
            AWSShapeMember(label: "TaskId", required: false, type: .string), 
            AWSShapeMember(label: "TaskStatusReason", required: false, type: .string), 
            AWSShapeMember(label: "OutputUri", required: false, type: .string), 
            AWSShapeMember(label: "SpeechMarkTypes", required: false, type: .list), 
            AWSShapeMember(label: "CreationTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "SampleRate", required: false, type: .string), 
            AWSShapeMember(label: "RequestCharacters", required: false, type: .integer), 
            AWSShapeMember(label: "VoiceId", required: false, type: .enum), 
            AWSShapeMember(label: "SnsTopicArn", required: false, type: .string), 
            AWSShapeMember(label: "LexiconNames", required: false, type: .list), 
            AWSShapeMember(label: "TextType", required: false, type: .enum), 
            AWSShapeMember(label: "OutputFormat", required: false, type: .enum)
        ]
        /// Current status of the individual speech synthesis task.
        public let taskStatus: TaskStatus?
        /// The Amazon Polly generated identifier for a speech synthesis task.
        public let taskId: String?
        /// Reason for the current status of a specific speech synthesis task, including errors if the task has failed.
        public let taskStatusReason: String?
        /// Pathway for the output speech file.
        public let outputUri: String?
        /// The type of speech marks returned for the input text.
        public let speechMarkTypes: [SpeechMarkType]?
        /// Timestamp for the time the synthesis task was started.
        public let creationTime: TimeStamp?
        /// Optional language code for a synthesis task. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
        public let languageCode: LanguageCode?
        /// The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", and "22050". The default value is "22050". Valid values for pcm are "8000" and "16000" The default value is "16000". 
        public let sampleRate: String?
        /// Number of billable characters synthesized.
        public let requestCharacters: Int32?
        /// Voice ID to use for the synthesis. 
        public let voiceId: VoiceId?
        /// ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
        public let snsTopicArn: String?
        /// List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. 
        public let lexiconNames: [String]?
        /// Specifies whether the input text is plain text or SSML. The default value is plain text. 
        public let textType: TextType?
        /// The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. 
        public let outputFormat: OutputFormat?

        public init(taskStatus: TaskStatus? = nil, taskId: String? = nil, taskStatusReason: String? = nil, outputUri: String? = nil, speechMarkTypes: [SpeechMarkType]? = nil, creationTime: TimeStamp? = nil, languageCode: LanguageCode? = nil, sampleRate: String? = nil, requestCharacters: Int32? = nil, voiceId: VoiceId? = nil, snsTopicArn: String? = nil, lexiconNames: [String]? = nil, textType: TextType? = nil, outputFormat: OutputFormat? = nil) {
            self.taskStatus = taskStatus
            self.taskId = taskId
            self.taskStatusReason = taskStatusReason
            self.outputUri = outputUri
            self.speechMarkTypes = speechMarkTypes
            self.creationTime = creationTime
            self.languageCode = languageCode
            self.sampleRate = sampleRate
            self.requestCharacters = requestCharacters
            self.voiceId = voiceId
            self.snsTopicArn = snsTopicArn
            self.lexiconNames = lexiconNames
            self.textType = textType
            self.outputFormat = outputFormat
        }

        private enum CodingKeys: String, CodingKey {
            case taskStatus = "TaskStatus"
            case taskId = "TaskId"
            case taskStatusReason = "TaskStatusReason"
            case outputUri = "OutputUri"
            case speechMarkTypes = "SpeechMarkTypes"
            case creationTime = "CreationTime"
            case languageCode = "LanguageCode"
            case sampleRate = "SampleRate"
            case requestCharacters = "RequestCharacters"
            case voiceId = "VoiceId"
            case snsTopicArn = "SnsTopicArn"
            case lexiconNames = "LexiconNames"
            case textType = "TextType"
            case outputFormat = "OutputFormat"
        }
    }

    public struct DeleteLexiconOutput: AWSShape {

    }

    public struct ListLexiconsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Lexicons", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// A list of lexicon names and attributes.
        public let lexicons: [LexiconDescription]?
        /// The pagination token to use in the next request to continue the listing of lexicons. NextToken is returned only if the response is truncated.
        public let nextToken: String?

        public init(lexicons: [LexiconDescription]? = nil, nextToken: String? = nil) {
            self.lexicons = lexicons
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case lexicons = "Lexicons"
            case nextToken = "NextToken"
        }
    }

    public struct DescribeVoicesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Voices", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// A list of voices with their properties.
        public let voices: [Voice]?
        /// The pagination token to use in the next request to continue the listing of voices. NextToken is returned only if the response is truncated.
        public let nextToken: String?

        public init(voices: [Voice]? = nil, nextToken: String? = nil) {
            self.voices = voices
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case voices = "Voices"
            case nextToken = "NextToken"
        }
    }

    public struct GetLexiconOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "LexiconAttributes", required: false, type: .structure), 
            AWSShapeMember(label: "Lexicon", required: false, type: .structure)
        ]
        /// Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.
        public let lexiconAttributes: LexiconAttributes?
        /// Lexicon object that provides name and the string content of the lexicon. 
        public let lexicon: Lexicon?

        public init(lexiconAttributes: LexiconAttributes? = nil, lexicon: Lexicon? = nil) {
            self.lexiconAttributes = lexiconAttributes
            self.lexicon = lexicon
        }

        private enum CodingKeys: String, CodingKey {
            case lexiconAttributes = "LexiconAttributes"
            case lexicon = "Lexicon"
        }
    }

    public enum LanguageCode: String, CustomStringConvertible, Codable {
        case cmnCn = "cmn-CN"
        case cyGb = "cy-GB"
        case daDk = "da-DK"
        case deDe = "de-DE"
        case enAu = "en-AU"
        case enGb = "en-GB"
        case enGbWls = "en-GB-WLS"
        case enIn = "en-IN"
        case enUs = "en-US"
        case esEs = "es-ES"
        case esMx = "es-MX"
        case esUs = "es-US"
        case frCa = "fr-CA"
        case frFr = "fr-FR"
        case isIs = "is-IS"
        case itIt = "it-IT"
        case jaJp = "ja-JP"
        case hiIn = "hi-IN"
        case koKr = "ko-KR"
        case nbNo = "nb-NO"
        case nlNl = "nl-NL"
        case plPl = "pl-PL"
        case ptBr = "pt-BR"
        case ptPt = "pt-PT"
        case roRo = "ro-RO"
        case ruRu = "ru-RU"
        case svSe = "sv-SE"
        case trTr = "tr-TR"
        public var description: String { return self.rawValue }
    }

    public enum SpeechMarkType: String, CustomStringConvertible, Codable {
        case sentence = "sentence"
        case ssml = "ssml"
        case viseme = "viseme"
        case word = "word"
        public var description: String { return self.rawValue }
    }

    public struct SynthesizeSpeechOutput: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "AudioStream"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AudioStream", required: false, type: .blob), 
            AWSShapeMember(label: "RequestCharacters", location: .header(locationName: "x-amzn-RequestCharacters"), required: false, type: .integer), 
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string)
        ]
        ///  Stream containing the synthesized speech. 
        public let audioStream: Data?
        /// Number of characters synthesized.
        public let requestCharacters: Int32?
        ///  Specifies the type audio stream. This should reflect the OutputFormat parameter in your request.     If you request mp3 as the OutputFormat, the ContentType returned is audio/mpeg.     If you request ogg_vorbis as the OutputFormat, the ContentType returned is audio/ogg.     If you request pcm as the OutputFormat, the ContentType returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.    If you request json as the OutputFormat, the ContentType returned is audio/json.    
        public let contentType: String?

        public init(audioStream: Data? = nil, requestCharacters: Int32? = nil, contentType: String? = nil) {
            self.audioStream = audioStream
            self.requestCharacters = requestCharacters
            self.contentType = contentType
        }

        private enum CodingKeys: String, CodingKey {
            case audioStream = "AudioStream"
            case requestCharacters = "x-amzn-RequestCharacters"
            case contentType = "Content-Type"
        }
    }

    public struct StartSpeechSynthesisTaskInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "OutputFormat", required: true, type: .enum), 
            AWSShapeMember(label: "VoiceId", required: true, type: .enum), 
            AWSShapeMember(label: "OutputS3KeyPrefix", required: false, type: .string), 
            AWSShapeMember(label: "SnsTopicArn", required: false, type: .string), 
            AWSShapeMember(label: "OutputS3BucketName", required: true, type: .string), 
            AWSShapeMember(label: "SpeechMarkTypes", required: false, type: .list), 
            AWSShapeMember(label: "SampleRate", required: false, type: .string), 
            AWSShapeMember(label: "Text", required: true, type: .string), 
            AWSShapeMember(label: "LexiconNames", required: false, type: .list), 
            AWSShapeMember(label: "TextType", required: false, type: .enum), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum)
        ]
        /// The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. 
        public let outputFormat: OutputFormat
        /// Voice ID to use for the synthesis. 
        public let voiceId: VoiceId
        /// The Amazon S3 key prefix for the output speech file.
        public let outputS3KeyPrefix: String?
        /// ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
        public let snsTopicArn: String?
        /// Amazon S3 bucket name to which the output file will be saved.
        public let outputS3BucketName: String
        /// The type of speech marks returned for the input text.
        public let speechMarkTypes: [SpeechMarkType]?
        /// The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", and "22050". The default value is "22050". Valid values for pcm are "8000" and "16000" The default value is "16000". 
        public let sampleRate: String?
        /// The input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text. 
        public let text: String
        /// List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. 
        public let lexiconNames: [String]?
        /// Specifies whether the input text is plain text or SSML. The default value is plain text. 
        public let textType: TextType?
        /// Optional language code for the Speech Synthesis request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
        public let languageCode: LanguageCode?

        public init(outputFormat: OutputFormat, voiceId: VoiceId, outputS3KeyPrefix: String? = nil, snsTopicArn: String? = nil, outputS3BucketName: String, speechMarkTypes: [SpeechMarkType]? = nil, sampleRate: String? = nil, text: String, lexiconNames: [String]? = nil, textType: TextType? = nil, languageCode: LanguageCode? = nil) {
            self.outputFormat = outputFormat
            self.voiceId = voiceId
            self.outputS3KeyPrefix = outputS3KeyPrefix
            self.snsTopicArn = snsTopicArn
            self.outputS3BucketName = outputS3BucketName
            self.speechMarkTypes = speechMarkTypes
            self.sampleRate = sampleRate
            self.text = text
            self.lexiconNames = lexiconNames
            self.textType = textType
            self.languageCode = languageCode
        }

        private enum CodingKeys: String, CodingKey {
            case outputFormat = "OutputFormat"
            case voiceId = "VoiceId"
            case outputS3KeyPrefix = "OutputS3KeyPrefix"
            case snsTopicArn = "SnsTopicArn"
            case outputS3BucketName = "OutputS3BucketName"
            case speechMarkTypes = "SpeechMarkTypes"
            case sampleRate = "SampleRate"
            case text = "Text"
            case lexiconNames = "LexiconNames"
            case textType = "TextType"
            case languageCode = "LanguageCode"
        }
    }

    public struct PutLexiconInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .uri(locationName: "LexiconName"), required: true, type: .string), 
            AWSShapeMember(label: "Content", required: true, type: .string)
        ]
        /// Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric string up to 20 characters long. 
        public let name: String
        /// Content of the PLS lexicon as string data.
        public let content: String

        public init(name: String, content: String) {
            self.name = name
            self.content = content
        }

        private enum CodingKeys: String, CodingKey {
            case name = "LexiconName"
            case content = "Content"
        }
    }

    public struct Voice: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Gender", required: false, type: .enum), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "Id", required: false, type: .enum), 
            AWSShapeMember(label: "AdditionalLanguageCodes", required: false, type: .list), 
            AWSShapeMember(label: "LanguageName", required: false, type: .string), 
            AWSShapeMember(label: "Name", required: false, type: .string)
        ]
        /// Gender of the voice.
        public let gender: Gender?
        /// Language code of the voice.
        public let languageCode: LanguageCode?
        /// Amazon Polly assigned voice ID. This is the ID that you specify when calling the SynthesizeSpeech operation.
        public let id: VoiceId?
        /// Additional codes for languages available for the specified voice in addition to its default language.  For example, the default language for Aditi is Indian English (en-IN) because it was first used for that language. Since Aditi is bilingual and fluent in both Indian English and Hindi, this parameter would show the code hi-IN.
        public let additionalLanguageCodes: [LanguageCode]?
        /// Human readable name of the language in English.
        public let languageName: String?
        /// Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable voice name that you might display in your application.
        public let name: String?

        public init(gender: Gender? = nil, languageCode: LanguageCode? = nil, id: VoiceId? = nil, additionalLanguageCodes: [LanguageCode]? = nil, languageName: String? = nil, name: String? = nil) {
            self.gender = gender
            self.languageCode = languageCode
            self.id = id
            self.additionalLanguageCodes = additionalLanguageCodes
            self.languageName = languageName
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case gender = "Gender"
            case languageCode = "LanguageCode"
            case id = "Id"
            case additionalLanguageCodes = "AdditionalLanguageCodes"
            case languageName = "LanguageName"
            case name = "Name"
        }
    }

    public struct LexiconAttributes: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "LastModified", required: false, type: .timestamp), 
            AWSShapeMember(label: "LexiconArn", required: false, type: .string), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "Size", required: false, type: .integer), 
            AWSShapeMember(label: "Alphabet", required: false, type: .string), 
            AWSShapeMember(label: "LexemesCount", required: false, type: .integer)
        ]
        /// Date lexicon was last modified (a timestamp value).
        public let lastModified: TimeStamp?
        /// Amazon Resource Name (ARN) of the lexicon.
        public let lexiconArn: String?
        /// Language code that the lexicon applies to. A lexicon with a language code such as "en" would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.
        public let languageCode: LanguageCode?
        /// Total size of the lexicon, in characters.
        public let size: Int32?
        /// Phonetic alphabet used in the lexicon. Valid values are ipa and x-sampa.
        public let alphabet: String?
        /// Number of lexemes in the lexicon.
        public let lexemesCount: Int32?

        public init(lastModified: TimeStamp? = nil, lexiconArn: String? = nil, languageCode: LanguageCode? = nil, size: Int32? = nil, alphabet: String? = nil, lexemesCount: Int32? = nil) {
            self.lastModified = lastModified
            self.lexiconArn = lexiconArn
            self.languageCode = languageCode
            self.size = size
            self.alphabet = alphabet
            self.lexemesCount = lexemesCount
        }

        private enum CodingKeys: String, CodingKey {
            case lastModified = "LastModified"
            case lexiconArn = "LexiconArn"
            case languageCode = "LanguageCode"
            case size = "Size"
            case alphabet = "Alphabet"
            case lexemesCount = "LexemesCount"
        }
    }

    public struct GetSpeechSynthesisTaskOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SynthesisTask", required: false, type: .structure)
        ]
        /// SynthesisTask object that provides information from the requested task, including output format, creation time, task status, and so on.
        public let synthesisTask: SynthesisTask?

        public init(synthesisTask: SynthesisTask? = nil) {
            self.synthesisTask = synthesisTask
        }

        private enum CodingKeys: String, CodingKey {
            case synthesisTask = "SynthesisTask"
        }
    }

    public struct ListLexiconsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string)
        ]
        /// An opaque pagination token returned from previous ListLexicons operation. If present, indicates where to continue the list of lexicons.
        public let nextToken: String?

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
        }
    }

    public enum TaskStatus: String, CustomStringConvertible, Codable {
        case scheduled = "scheduled"
        case inprogress = "inProgress"
        case completed = "completed"
        case failed = "failed"
        public var description: String { return self.rawValue }
    }

    public struct SynthesizeSpeechInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "OutputFormat", required: true, type: .enum), 
            AWSShapeMember(label: "VoiceId", required: true, type: .enum), 
            AWSShapeMember(label: "SpeechMarkTypes", required: false, type: .list), 
            AWSShapeMember(label: "Text", required: true, type: .string), 
            AWSShapeMember(label: "SampleRate", required: false, type: .string), 
            AWSShapeMember(label: "LexiconNames", required: false, type: .list), 
            AWSShapeMember(label: "TextType", required: false, type: .enum), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum)
        ]
        ///  The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.  When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. 
        public let outputFormat: OutputFormat
        ///  Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the DescribeVoices operation. 
        public let voiceId: VoiceId
        /// The type of speech marks returned for the input text.
        public let speechMarkTypes: [SpeechMarkType]?
        ///  Input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text. 
        public let text: String
        ///  The audio frequency specified in Hz.  The valid values for mp3 and ogg_vorbis are "8000", "16000", and "22050". The default value is "22050".   Valid values for pcm are "8000" and "16000" The default value is "16000". 
        public let sampleRate: String?
        /// List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see PutLexicon.
        public let lexiconNames: [String]?
        ///  Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see Using SSML.
        public let textType: TextType?
        /// Optional language code for the Synthesize Speech request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
        public let languageCode: LanguageCode?

        public init(outputFormat: OutputFormat, voiceId: VoiceId, speechMarkTypes: [SpeechMarkType]? = nil, text: String, sampleRate: String? = nil, lexiconNames: [String]? = nil, textType: TextType? = nil, languageCode: LanguageCode? = nil) {
            self.outputFormat = outputFormat
            self.voiceId = voiceId
            self.speechMarkTypes = speechMarkTypes
            self.text = text
            self.sampleRate = sampleRate
            self.lexiconNames = lexiconNames
            self.textType = textType
            self.languageCode = languageCode
        }

        private enum CodingKeys: String, CodingKey {
            case outputFormat = "OutputFormat"
            case voiceId = "VoiceId"
            case speechMarkTypes = "SpeechMarkTypes"
            case text = "Text"
            case sampleRate = "SampleRate"
            case lexiconNames = "LexiconNames"
            case textType = "TextType"
            case languageCode = "LanguageCode"
        }
    }

    public struct DeleteLexiconInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .uri(locationName: "LexiconName"), required: true, type: .string)
        ]
        /// The name of the lexicon to delete. Must be an existing lexicon in the region.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "LexiconName"
        }
    }

    public struct GetSpeechSynthesisTaskInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TaskId", location: .uri(locationName: "TaskId"), required: true, type: .string)
        ]
        /// The Amazon Polly generated identifier for a speech synthesis task.
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        private enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    public struct StartSpeechSynthesisTaskOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SynthesisTask", required: false, type: .structure)
        ]
        /// SynthesisTask object that provides information and attributes about a newly submitted speech synthesis task.
        public let synthesisTask: SynthesisTask?

        public init(synthesisTask: SynthesisTask? = nil) {
            self.synthesisTask = synthesisTask
        }

        private enum CodingKeys: String, CodingKey {
            case synthesisTask = "SynthesisTask"
        }
    }

    public enum TextType: String, CustomStringConvertible, Codable {
        case ssml = "ssml"
        case text = "text"
        public var description: String { return self.rawValue }
    }

    public struct Lexicon: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Content", required: false, type: .string)
        ]
        /// Name of the lexicon.
        public let name: String?
        /// Lexicon content in string format. The content of a lexicon must be in PLS format.
        public let content: String?

        public init(name: String? = nil, content: String? = nil) {
            self.name = name
            self.content = content
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case content = "Content"
        }
    }

    public struct ListSpeechSynthesisTasksOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "SynthesisTasks", required: false, type: .list)
        ]
        /// An opaque pagination token returned from the previous List operation in this request. If present, this indicates where to continue the listing.
        public let nextToken: String?
        /// List of SynthesisTask objects that provides information from the specified task in the list request, including output format, creation time, task status, and so on.
        public let synthesisTasks: [SynthesisTask]?

        public init(nextToken: String? = nil, synthesisTasks: [SynthesisTask]? = nil) {
            self.nextToken = nextToken
            self.synthesisTasks = synthesisTasks
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case synthesisTasks = "SynthesisTasks"
        }
    }

    public struct GetLexiconInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .uri(locationName: "LexiconName"), required: true, type: .string)
        ]
        /// Name of the lexicon.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "LexiconName"
        }
    }

    public struct PutLexiconOutput: AWSShape {

    }

    public enum Gender: String, CustomStringConvertible, Codable {
        case female = "Female"
        case male = "Male"
        public var description: String { return self.rawValue }
    }

    public struct DescribeVoicesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "LanguageCode", location: .querystring(locationName: "LanguageCode"), required: false, type: .enum), 
            AWSShapeMember(label: "IncludeAdditionalLanguageCodes", location: .querystring(locationName: "IncludeAdditionalLanguageCodes"), required: false, type: .boolean), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string)
        ]
        ///  The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned. 
        public let languageCode: LanguageCode?
        /// Boolean value indicating whether to return any bilingual voices that use the specified language as an additional language. For instance, if you request all languages that use US English (es-US), and there is an Italian voice that speaks both Italian (it-IT) and US English, that voice will be included if you specify yes but not if you specify no.
        public let includeAdditionalLanguageCodes: Bool?
        /// An opaque pagination token returned from the previous DescribeVoices operation. If present, this indicates where to continue the listing.
        public let nextToken: String?

        public init(languageCode: LanguageCode? = nil, includeAdditionalLanguageCodes: Bool? = nil, nextToken: String? = nil) {
            self.languageCode = languageCode
            self.includeAdditionalLanguageCodes = includeAdditionalLanguageCodes
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case languageCode = "LanguageCode"
            case includeAdditionalLanguageCodes = "IncludeAdditionalLanguageCodes"
            case nextToken = "NextToken"
        }
    }

    public struct LexiconDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Attributes", required: false, type: .structure)
        ]
        /// Name of the lexicon.
        public let name: String?
        /// Provides lexicon metadata.
        public let attributes: LexiconAttributes?

        public init(name: String? = nil, attributes: LexiconAttributes? = nil) {
            self.name = name
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case attributes = "Attributes"
        }
    }

    public enum OutputFormat: String, CustomStringConvertible, Codable {
        case json = "json"
        case mp3 = "mp3"
        case oggVorbis = "ogg_vorbis"
        case pcm = "pcm"
        public var description: String { return self.rawValue }
    }

    public enum VoiceId: String, CustomStringConvertible, Codable {
        case geraint = "Geraint"
        case gwyneth = "Gwyneth"
        case mads = "Mads"
        case naja = "Naja"
        case hans = "Hans"
        case marlene = "Marlene"
        case nicole = "Nicole"
        case russell = "Russell"
        case amy = "Amy"
        case brian = "Brian"
        case emma = "Emma"
        case raveena = "Raveena"
        case ivy = "Ivy"
        case joanna = "Joanna"
        case joey = "Joey"
        case justin = "Justin"
        case kendra = "Kendra"
        case kimberly = "Kimberly"
        case matthew = "Matthew"
        case salli = "Salli"
        case conchita = "Conchita"
        case enrique = "Enrique"
        case miguel = "Miguel"
        case penelope = "Penelope"
        case chantal = "Chantal"
        case celine = "Celine"
        case lea = "Lea"
        case mathieu = "Mathieu"
        case dora = "Dora"
        case karl = "Karl"
        case carla = "Carla"
        case giorgio = "Giorgio"
        case mizuki = "Mizuki"
        case liv = "Liv"
        case lotte = "Lotte"
        case ruben = "Ruben"
        case ewa = "Ewa"
        case jacek = "Jacek"
        case jan = "Jan"
        case maja = "Maja"
        case ricardo = "Ricardo"
        case vitoria = "Vitoria"
        case cristiano = "Cristiano"
        case ines = "Ines"
        case carmen = "Carmen"
        case maxim = "Maxim"
        case tatyana = "Tatyana"
        case astrid = "Astrid"
        case filiz = "Filiz"
        case vicki = "Vicki"
        case takumi = "Takumi"
        case seoyeon = "Seoyeon"
        case aditi = "Aditi"
        case zhiyu = "Zhiyu"
        case bianca = "Bianca"
        case lucia = "Lucia"
        case mia = "Mia"
        public var description: String { return self.rawValue }
    }

    public struct ListSpeechSynthesisTasksInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Status", location: .querystring(locationName: "Status"), required: false, type: .enum), 
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "MaxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string)
        ]
        /// Status of the speech synthesis tasks returned in a List operation
        public let status: TaskStatus?
        /// Maximum number of speech synthesis tasks returned in a List operation.
        public let maxResults: Int32?
        /// The pagination token to use in the next request to continue the listing of speech synthesis tasks. 
        public let nextToken: String?

        public init(status: TaskStatus? = nil, maxResults: Int32? = nil, nextToken: String? = nil) {
            self.status = status
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case status = "Status"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

}