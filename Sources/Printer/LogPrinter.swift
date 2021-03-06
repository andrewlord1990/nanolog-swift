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

/**
 Output a log message.

 `LogPrinter` is where the final formatted message is outputted, for example to the Xcode console.
 */
public protocol LogPrinter {
    /**
     Output the specified log message to its output location.

     - parameter message: The final formatted log message.
     */
    func printMessage(_ message: String)
}
