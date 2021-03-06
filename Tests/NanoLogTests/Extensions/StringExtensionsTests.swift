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

import Nimble
import XCTest

@testable import NanoLog

class StringExtensionsTests: XCTestCase {
}

// MARK: - Tests
extension StringExtensionsTests {
    func test_whenSubstringCompatUpToEndIndex_thenSubstringExtracted() {
        let string = "a long.message"
        let expectedString = "a long"
        let index = string.index(of: ".")!

        let actualString = string.substringCompat(upToEndIndex: index)

        expect(actualString).to(equal(expectedString))
    }
}

#if os(Linux)
    extension StringExtensionsTests {
        static var allTests = [
            ("test_whenSubstringCompatUpToEndIndex_thenSubstringExtracted", test_whenSubstringCompatUpToEndIndex_thenSubstringExtracted)
        ]
    }
#endif
