//===--- Error.swift ------------------------------------------------------===//
//Copyright (c) 2016 Daniel Leping (dileping)
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//===----------------------------------------------------------------------===//

import Foundation

public protocol AnyErrorType : ErrorType {
    init(_ error:ErrorType)
    
    var error:ErrorType {get}
}

public struct AnyError : AnyErrorType {
    public let error:ErrorType
    
    public init(_ error:ErrorType) {
        self.error = error
    }
}

public enum CError {
    case Unknown
    case Code(code:Int32)
}

public extension CError {
    public init(code:Int32) {
        self = .Code(code: code)
    }
}