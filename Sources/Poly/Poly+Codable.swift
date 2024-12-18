//
//  Poly+Codable.swift
//  Poly
//
//  Created by Mathew Polzin on 1/12/19.
//

// MARK: - Generic Decoding

/// Attempt to create a pretty error output for a few common decoding
/// errors.
func prettyDecodingError(error: DecodingError) -> String? {
    switch error {
    case .keyNotFound(let key, _):
        if let idx = key.intValue {
            return "The key at index \(idx) was not found." // :S doesn't make sense, pretty sure.
        }
        return "The '\(key.stringValue)' key was not found."
    case .valueNotFound(let ty, _):
        return "A value of type '\(String(describing: ty))' was expected but not found."
    case .typeMismatch(let ty, _):
        let tyDescription: String
        if ty == Dictionary<String, Any>.self {
            tyDescription = "as an Object (key/value dictionary)"
        } else {
            tyDescription = "as '\(String(describing: ty))'"
        }
        return "Found something that could not be decoded \(tyDescription)."
    default:
        return nil
    }
}

public struct PolyDecodeNoTypesMatchedError: Swift.Error, CustomDebugStringConvertible {

    public struct IndividualFailure: Swift.Error {
        public let type: Any.Type
        public let error: DecodingError
    }

    public let codingPath: [CodingKey]
    public let individualTypeFailures: [IndividualFailure]

    public var debugDescription: String {
        let codingPathString = codingPath
            .map { $0.intValue.map(String.init) ?? $0.stringValue }
            .joined(separator: "/")

        let failureStrings = individualTypeFailures.map {
            let type = $0.type
            let descriptiveError = $0.error as? CustomDebugStringConvertible
            let error = prettyDecodingError(error: $0.error)
                ?? descriptiveError?.debugDescription
                ?? String(describing: $0.error)
            return "\(String(describing: type)) could not be decoded because:\n\(error)"
        }.joined(separator: "\n\n")

        return
"""
Poly failed to decode any of its types at: "\(codingPathString)"

\(failureStrings)
"""
    }
}

internal typealias PolyTypeNotFound = PolyDecodeNoTypesMatchedError.IndividualFailure

internal func decode<Thing: Decodable>(_ type: Thing.Type, from container: SingleValueDecodingContainer) throws -> Result<Thing, PolyTypeNotFound> {
	let ret: Result<Thing, PolyTypeNotFound>
	do {
		ret = try .success(container.decode(Thing.self))
	} catch (let err as DecodingError) {
		ret = .failure(PolyTypeNotFound(type: type, error: err))
	} catch (let err) {
        ret = .failure(PolyTypeNotFound(
            type: type,
            error: DecodingError.typeMismatch(
                Thing.self,
                .init(
                    codingPath: container.codingPath,
                    debugDescription: String(describing: err),
                    underlyingError: err
                )
            )
        ))
	}
	return ret
}

// MARK: - 0 types
extension Poly1: Encodable where A: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		}
	}
}

extension Poly1: Decodable where A: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		self = .a(try container.decode(A.self))
	}
}

// MARK: - 2 types
extension Poly2: Encodable where A: Encodable, B: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		}
	}
}

extension Poly2: Decodable where A: Decodable, B: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
            try decode(A.self, from: container).map { Poly2.a($0) },
			try decode(B.self, from: container).map { Poly2.b($0) }]

		let maybeVal: Poly2<A, B>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

		guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
		}

		self = val
	}
}

// MARK: - 3 types
extension Poly3: Encodable where A: Encodable, B: Encodable, C: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		}
	}
}

extension Poly3: Decodable where A: Decodable, B: Decodable, C: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly3.a($0) },
			try decode(B.self, from: container).map { Poly3.b($0) },
			try decode(C.self, from: container).map { Poly3.c($0) }]

		let maybeVal: Poly3<A, B, C>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 4 types
extension Poly4: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		}
	}
}

extension Poly4: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly4.a($0) },
			try decode(B.self, from: container).map { Poly4.b($0) },
			try decode(C.self, from: container).map { Poly4.c($0) },
			try decode(D.self, from: container).map { Poly4.d($0) }]

		let maybeVal: Poly4<A, B, C, D>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 5 types
extension Poly5: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		case .e(let e):
			try container.encode(e)
		}
	}
}

extension Poly5: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly5.a($0) },
			try decode(B.self, from: container).map { Poly5.b($0) },
			try decode(C.self, from: container).map { Poly5.c($0) },
			try decode(D.self, from: container).map { Poly5.d($0) },
			try decode(E.self, from: container).map { Poly5.e($0) }]

		let maybeVal: Poly5<A, B, C, D, E>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 6 types
extension Poly6: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		case .e(let e):
			try container.encode(e)
		case .f(let f):
			try container.encode(f)
		}
	}
}

extension Poly6: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly6.a($0) },
			try decode(B.self, from: container).map { Poly6.b($0) },
			try decode(C.self, from: container).map { Poly6.c($0) },
			try decode(D.self, from: container).map { Poly6.d($0) },
			try decode(E.self, from: container).map { Poly6.e($0) },
			try decode(F.self, from: container).map { Poly6.f($0) }]

		let maybeVal: Poly6<A, B, C, D, E, F>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 7 types
extension Poly7: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		case .e(let e):
			try container.encode(e)
		case .f(let f):
			try container.encode(f)
		case .g(let g):
			try container.encode(g)
		}
	}
}

extension Poly7: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly7.a($0) },
			try decode(B.self, from: container).map { Poly7.b($0) },
			try decode(C.self, from: container).map { Poly7.c($0) },
			try decode(D.self, from: container).map { Poly7.d($0) },
			try decode(E.self, from: container).map { Poly7.e($0) },
			try decode(F.self, from: container).map { Poly7.f($0) },
			try decode(G.self, from: container).map { Poly7.g($0) }]

		let maybeVal: Poly7<A, B, C, D, E, F, G>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 8 types
extension Poly8: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		case .e(let e):
			try container.encode(e)
		case .f(let f):
			try container.encode(f)
		case .g(let g):
			try container.encode(g)
		case .h(let h):
			try container.encode(h)
		}
	}
}

extension Poly8: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly8.a($0) },
			try decode(B.self, from: container).map { Poly8.b($0) },
			try decode(C.self, from: container).map { Poly8.c($0) },
			try decode(D.self, from: container).map { Poly8.d($0) },
			try decode(E.self, from: container).map { Poly8.e($0) },
			try decode(F.self, from: container).map { Poly8.f($0) },
			try decode(G.self, from: container).map { Poly8.g($0) },
			try decode(H.self, from: container).map { Poly8.h($0) }]

		let maybeVal: Poly8<A, B, C, D, E, F, G, H>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 9 types
extension Poly9: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()

		switch self {
		case .a(let a):
			try container.encode(a)
		case .b(let b):
			try container.encode(b)
		case .c(let c):
			try container.encode(c)
		case .d(let d):
			try container.encode(d)
		case .e(let e):
			try container.encode(e)
		case .f(let f):
			try container.encode(f)
		case .g(let g):
			try container.encode(g)
		case .h(let h):
			try container.encode(h)
		case .i(let i):
			try container.encode(i)
		}
	}
}

extension Poly9: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()

		let attempts = [
			try decode(A.self, from: container).map { Poly9.a($0) },
			try decode(B.self, from: container).map { Poly9.b($0) },
			try decode(C.self, from: container).map { Poly9.c($0) },
			try decode(D.self, from: container).map { Poly9.d($0) },
			try decode(E.self, from: container).map { Poly9.e($0) },
			try decode(F.self, from: container).map { Poly9.f($0) },
			try decode(G.self, from: container).map { Poly9.g($0) },
			try decode(H.self, from: container).map { Poly9.h($0) },
			try decode(I.self, from: container).map { Poly9.i($0) }]

		let maybeVal: Poly9<A, B, C, D, E, F, G, H, I>? = attempts
            .lazy
			.compactMap { $0.value }
			.first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

		self = val
	}
}

// MARK: - 10 types
extension Poly10: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .a(let a):
            try container.encode(a)
        case .b(let b):
            try container.encode(b)
        case .c(let c):
            try container.encode(c)
        case .d(let d):
            try container.encode(d)
        case .e(let e):
            try container.encode(e)
        case .f(let f):
            try container.encode(f)
        case .g(let g):
            try container.encode(g)
        case .h(let h):
            try container.encode(h)
        case .i(let i):
            try container.encode(i)
        case .j(let j):
            try container.encode(j)
        }
    }
}

extension Poly10: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly10.a($0) },
            try decode(B.self, from: container).map { Poly10.b($0) },
            try decode(C.self, from: container).map { Poly10.c($0) },
            try decode(D.self, from: container).map { Poly10.d($0) },
            try decode(E.self, from: container).map { Poly10.e($0) },
            try decode(F.self, from: container).map { Poly10.f($0) },
            try decode(G.self, from: container).map { Poly10.g($0) },
            try decode(H.self, from: container).map { Poly10.h($0) },
            try decode(I.self, from: container).map { Poly10.i($0) },
            try decode(J.self, from: container).map { Poly10.j($0) }]

        let maybeVal: Poly10<A, B, C, D, E, F, G, H, I, J>? = attempts
            .lazy
            .compactMap { $0.value }
            .first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

        self = val
    }
}

// MARK: - 11 types
extension Poly11: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .a(let a):
            try container.encode(a)
        case .b(let b):
            try container.encode(b)
        case .c(let c):
            try container.encode(c)
        case .d(let d):
            try container.encode(d)
        case .e(let e):
            try container.encode(e)
        case .f(let f):
            try container.encode(f)
        case .g(let g):
            try container.encode(g)
        case .h(let h):
            try container.encode(h)
        case .i(let i):
            try container.encode(i)
        case .j(let j):
            try container.encode(j)
        case .k(let k):
            try container.encode(k)
        }
    }
}

extension Poly11: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly11.a($0) },
            try decode(B.self, from: container).map { Poly11.b($0) },
            try decode(C.self, from: container).map { Poly11.c($0) },
            try decode(D.self, from: container).map { Poly11.d($0) },
            try decode(E.self, from: container).map { Poly11.e($0) },
            try decode(F.self, from: container).map { Poly11.f($0) },
            try decode(G.self, from: container).map { Poly11.g($0) },
            try decode(H.self, from: container).map { Poly11.h($0) },
            try decode(I.self, from: container).map { Poly11.i($0) },
            try decode(J.self, from: container).map { Poly11.j($0) },
            try decode(K.self, from: container).map { Poly11.k($0) }]

        let maybeVal: Poly11<A, B, C, D, E, F, G, H, I, J, K>? = attempts
            .lazy
            .compactMap { $0.value }
            .first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

        self = val
    }
}

// MARK: - 12 types
extension Poly12: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .a(let a):
            try container.encode(a)
        case .b(let b):
            try container.encode(b)
        case .c(let c):
            try container.encode(c)
        case .d(let d):
            try container.encode(d)
        case .e(let e):
            try container.encode(e)
        case .f(let f):
            try container.encode(f)
        case .g(let g):
            try container.encode(g)
        case .h(let h):
            try container.encode(h)
        case .i(let i):
            try container.encode(i)
        case .j(let j):
            try container.encode(j)
        case .k(let k):
            try container.encode(k)
        case .l(let l):
            try container.encode(l)
        }
    }
}

extension Poly12: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly12.a($0) },
            try decode(B.self, from: container).map { Poly12.b($0) },
            try decode(C.self, from: container).map { Poly12.c($0) },
            try decode(D.self, from: container).map { Poly12.d($0) },
            try decode(E.self, from: container).map { Poly12.e($0) },
            try decode(F.self, from: container).map { Poly12.f($0) },
            try decode(G.self, from: container).map { Poly12.g($0) },
            try decode(H.self, from: container).map { Poly12.h($0) },
            try decode(I.self, from: container).map { Poly12.i($0) },
            try decode(J.self, from: container).map { Poly12.j($0) },
            try decode(K.self, from: container).map { Poly12.k($0) },
            try decode(L.self, from: container).map { Poly12.l($0) }]

        let maybeVal: Poly12<A, B, C, D, E, F, G, H, I, J, K, L>? = attempts
            .lazy
            .compactMap { $0.value }
            .first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

        self = val
    }
}

// MARK: - 13 types
extension Poly13: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .a(let a):
            try container.encode(a)
        case .b(let b):
            try container.encode(b)
        case .c(let c):
            try container.encode(c)
        case .d(let d):
            try container.encode(d)
        case .e(let e):
            try container.encode(e)
        case .f(let f):
            try container.encode(f)
        case .g(let g):
            try container.encode(g)
        case .h(let h):
            try container.encode(h)
        case .i(let i):
            try container.encode(i)
        case .j(let j):
            try container.encode(j)
        case .k(let k):
            try container.encode(k)
        case .l(let l):
            try container.encode(l)
        case .m(let m):
            try container.encode(m)
        }
    }
}

extension Poly13: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly13.a($0) },
            try decode(B.self, from: container).map { Poly13.b($0) },
            try decode(C.self, from: container).map { Poly13.c($0) },
            try decode(D.self, from: container).map { Poly13.d($0) },
            try decode(E.self, from: container).map { Poly13.e($0) },
            try decode(F.self, from: container).map { Poly13.f($0) },
            try decode(G.self, from: container).map { Poly13.g($0) },
            try decode(H.self, from: container).map { Poly13.h($0) },
            try decode(I.self, from: container).map { Poly13.i($0) },
            try decode(J.self, from: container).map { Poly13.j($0) },
            try decode(K.self, from: container).map { Poly13.k($0) },
            try decode(L.self, from: container).map { Poly13.l($0) },
            try decode(M.self, from: container).map { Poly13.m($0) }]

        let maybeVal: Poly13<A, B, C, D, E, F, G, H, I, J, K, L, M>? = attempts
            .lazy
            .compactMap { $0.value }
            .first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

        self = val
    }
}

// MARK: - 14 types
extension Poly14: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .a(let a):
            try container.encode(a)
        case .b(let b):
            try container.encode(b)
        case .c(let c):
            try container.encode(c)
        case .d(let d):
            try container.encode(d)
        case .e(let e):
            try container.encode(e)
        case .f(let f):
            try container.encode(f)
        case .g(let g):
            try container.encode(g)
        case .h(let h):
            try container.encode(h)
        case .i(let i):
            try container.encode(i)
        case .j(let j):
            try container.encode(j)
        case .k(let k):
            try container.encode(k)
        case .l(let l):
            try container.encode(l)
        case .m(let m):
            try container.encode(m)
        case .n(let n):
            try container.encode(n)
        }
    }
}

extension Poly14: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly14.a($0) },
            try decode(B.self, from: container).map { Poly14.b($0) },
            try decode(C.self, from: container).map { Poly14.c($0) },
            try decode(D.self, from: container).map { Poly14.d($0) },
            try decode(E.self, from: container).map { Poly14.e($0) },
            try decode(F.self, from: container).map { Poly14.f($0) },
            try decode(G.self, from: container).map { Poly14.g($0) },
            try decode(H.self, from: container).map { Poly14.h($0) },
            try decode(I.self, from: container).map { Poly14.i($0) },
            try decode(J.self, from: container).map { Poly14.j($0) },
            try decode(K.self, from: container).map { Poly14.k($0) },
            try decode(L.self, from: container).map { Poly14.l($0) },
            try decode(M.self, from: container).map { Poly14.m($0) },
            try decode(N.self, from: container).map { Poly14.n($0) }]

        let maybeVal: Poly14<A, B, C, D, E, F, G, H, I, J, K, L, M, N>? = attempts
            .lazy
            .compactMap { $0.value }
            .first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

        self = val
    }
}

// MARK: - 15 types
extension Poly15: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .a(let a):
            try container.encode(a)
        case .b(let b):
            try container.encode(b)
        case .c(let c):
            try container.encode(c)
        case .d(let d):
            try container.encode(d)
        case .e(let e):
            try container.encode(e)
        case .f(let f):
            try container.encode(f)
        case .g(let g):
            try container.encode(g)
        case .h(let h):
            try container.encode(h)
        case .i(let i):
            try container.encode(i)
        case .j(let j):
            try container.encode(j)
        case .k(let k):
            try container.encode(k)
        case .l(let l):
            try container.encode(l)
        case .m(let m):
            try container.encode(m)
        case .n(let n):
            try container.encode(n)
        case .o(let o):
            try container.encode(o)
        }
    }
}

extension Poly15: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly15.a($0) },
            try decode(B.self, from: container).map { Poly15.b($0) },
            try decode(C.self, from: container).map { Poly15.c($0) },
            try decode(D.self, from: container).map { Poly15.d($0) },
            try decode(E.self, from: container).map { Poly15.e($0) },
            try decode(F.self, from: container).map { Poly15.f($0) },
            try decode(G.self, from: container).map { Poly15.g($0) },
            try decode(H.self, from: container).map { Poly15.h($0) },
            try decode(I.self, from: container).map { Poly15.i($0) },
            try decode(J.self, from: container).map { Poly15.j($0) },
            try decode(K.self, from: container).map { Poly15.k($0) },
            try decode(L.self, from: container).map { Poly15.l($0) },
            try decode(M.self, from: container).map { Poly15.m($0) },
            try decode(N.self, from: container).map { Poly15.n($0) },
            try decode(O.self, from: container).map { Poly15.o($0) }]

        let maybeVal: Poly15<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>? = attempts
            .lazy
            .compactMap { $0.value }
            .first

        guard let val = maybeVal else {
            let individualFailures = attempts.map { $0.error }.compactMap { $0 }

            throw PolyDecodeNoTypesMatchedError(codingPath: decoder.codingPath,
                                                individualTypeFailures: individualFailures)
        }

        self = val
    }
}
