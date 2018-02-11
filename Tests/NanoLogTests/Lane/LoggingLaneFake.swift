// Copyright (C) 2018 Andrew Lord
//
// Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
// the License.
//
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//
// See the License for the specific language governing permissions and limitations under the License.

@testable import NanoLog

class LoggingLaneFake {
    var deliverMessage: String?
    var deliverSeverity: LogSeverity?
    var deliverTag: String?
    var deliverFile: String?
    var deliverFunction: String?
    var deliverLine: Int?
}

// MARK: - LoggingLane
extension LoggingLaneFake: LoggingLane {
    func deliver(message: @autoclosure () -> Any,
                 withSeverity severity: LogSeverity,
                 withTag tag: String,
                 forFile file: String,
                 forFunction function: String,
                 forLine line: Int) {

        deliverMessage = "\(message())"
        deliverSeverity = severity
        deliverTag = tag
        deliverFile = file
        deliverFunction = function
        deliverLine = line
    }
}