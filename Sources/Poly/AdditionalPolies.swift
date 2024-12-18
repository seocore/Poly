//
//  Polys.swift
//  Customerbasepro
//
//  Created by Dmitry Neveshkin on 17.12.2024.
//

// MARK: - 15 types
public protocol _Poly16: _Poly15 {
    associatedtype P

    /// Get the value if it is of type `L`
    var p: P? { get }

    init(_ p: P)
}

public extension _Poly16 {
    subscript(_ lookup: P.Type) -> P? {
        return p
    }
}

public enum Poly16<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>: _Poly16 {
    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    case g(G)
    case h(H)
    case i(I)
    case j(J)
    case k(K)
    case l(L)
    case m(M)
    case n(N)
    case o(O)
    case p(P)

    public var a: A? {
        guard case let .a(ret) = self else { return nil }
        return ret
    }

    public init(_ a: A) {
        self = .a(a)
    }

    public var b: B? {
        guard case let .b(ret) = self else { return nil }
        return ret
    }

    public init(_ b: B) {
        self = .b(b)
    }

    public var c: C? {
        guard case let .c(ret) = self else { return nil }
        return ret
    }

    public init(_ c: C) {
        self = .c(c)
    }

    public var d: D? {
        guard case let .d(ret) = self else { return nil }
        return ret
    }

    public init(_ d: D) {
        self = .d(d)
    }

    public var e: E? {
        guard case let .e(ret) = self else { return nil }
        return ret
    }

    public init(_ e: E) {
        self = .e(e)
    }

    public var f: F? {
        guard case let .f(ret) = self else { return nil }
        return ret
    }

    public init(_ f: F) {
        self = .f(f)
    }

    public var g: G? {
        guard case let .g(ret) = self else { return nil }
        return ret
    }

    public init(_ g: G) {
        self = .g(g)
    }

    public var h: H? {
        guard case let .h(ret) = self else { return nil }
        return ret
    }

    public init(_ h: H) {
        self = .h(h)
    }

    public var i: I? {
        guard case let .i(ret) = self else { return nil }
        return ret
    }

    public init(_ i: I) {
        self = .i(i)
    }

    public var j: J? {
        guard case let .j(ret) = self else { return nil }
        return ret
    }

    public init(_ j: J) {
        self = .j(j)
    }

    public var k: K? {
        guard case let .k(ret) = self else { return nil }
        return ret
    }

    public init(_ k: K) {
        self = .k(k)
    }

    public var l: L? {
        guard case let .l(ret) = self else { return nil }
        return ret
    }

    public init(_ l: L) {
        self = .l(l)
    }

    public var m: M? {
        guard case let .m(ret) = self else { return nil }
        return ret
    }

    public init(_ m: M) {
        self = .m(m)
    }

    public var n: N? {
        guard case let .n(ret) = self else { return nil }
        return ret
    }

    public init(_ n: N) {
        self = .n(n)
    }

    public var o: O? {
        guard case let .o(ret) = self else { return nil }
        return ret
    }

    public init(_ o: O) {
        self = .o(o)
    }

    public init(_ p: P) {
        self = .p(p)
    }

    public var p: P? {
        guard case let .p(ret) = self else { return nil }
        return ret
    }

    public var value: Any {
        switch self {
        case .a(let ret): return ret
        case .b(let ret): return ret
        case .c(let ret): return ret
        case .d(let ret): return ret
        case .e(let ret): return ret
        case .f(let ret): return ret
        case .g(let ret): return ret
        case .h(let ret): return ret
        case .i(let ret): return ret
        case .j(let ret): return ret
        case .k(let ret): return ret
        case .l(let ret): return ret
        case .m(let ret): return ret
        case .n(let ret): return ret
        case .o(let ret): return ret
        case .p(let ret): return ret
        }
    }
}

extension Poly16: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable, L: Equatable, M: Equatable, N: Equatable, O: Equatable, P: Equatable {}
extension Poly16: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable, G: Hashable, H: Hashable, I: Hashable, J: Hashable, K: Hashable, L: Hashable, M: Hashable, N: Hashable, O: Hashable, P: Hashable {}

// MARK: - 16 types
extension Poly16: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable, P: Encodable {
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
        case .p(let p):
            try container.encode(p)
        }
    }
}

extension Poly16: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable, P: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly16.a($0) },
            try decode(B.self, from: container).map { Poly16.b($0) },
            try decode(C.self, from: container).map { Poly16.c($0) },
            try decode(D.self, from: container).map { Poly16.d($0) },
            try decode(E.self, from: container).map { Poly16.e($0) },
            try decode(F.self, from: container).map { Poly16.f($0) },
            try decode(G.self, from: container).map { Poly16.g($0) },
            try decode(H.self, from: container).map { Poly16.h($0) },
            try decode(I.self, from: container).map { Poly16.i($0) },
            try decode(J.self, from: container).map { Poly16.j($0) },
            try decode(K.self, from: container).map { Poly16.k($0) },
            try decode(L.self, from: container).map { Poly16.l($0) },
            try decode(M.self, from: container).map { Poly16.m($0) },
            try decode(N.self, from: container).map { Poly16.n($0) },
            try decode(O.self, from: container).map { Poly16.o($0) },
            try decode(P.self, from: container).map { Poly16.p($0) }]

        let maybeVal: Poly16<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>? = attempts
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

// MARK: 16 types
extension Collection where Element: _Poly16 {
    public subscript(type: Element.P.Type) -> [Element.P] {
        return compactMap { $0.p }
    }
}

extension Poly16 {
    public static var allTypes: [Any.Type] {
        [
            A.self,
            B.self,
            C.self,
            D.self,
            E.self,
            F.self,
            G.self,
            H.self,
            I.self,
            J.self,
            K.self,
            L.self,
            M.self,
            N.self,
            O.self,
            P.self,
        ]
    }
}

extension Poly16: CustomStringConvertible {
    public var description: String {
        let str: String
        switch self {
        case .a(let a):
            str = String(describing: a)
        case .b(let b):
            str = String(describing: b)
        case .c(let c):
            str = String(describing: c)
        case .d(let d):
            str = String(describing: d)
        case .e(let e):
            str = String(describing: e)
        case .f(let f):
            str = String(describing: f)
        case .g(let g):
            str = String(describing: g)
        case .h(let h):
            str = String(describing: h)
        case .i(let i):
            str = String(describing: i)
        case .j(let j):
            str = String(describing: j)
        case .k(let k):
            str = String(describing: k)
        case .l(let l):
            str = String(describing: l)
        case .m(let m):
            str = String(describing: m)
        case .n(let n):
            str = String(describing: n)
        case .o(let o):
            str = String(describing: o)
        case .p(let p):
            str = String(describing: p)
        }

        return "Poly(\(str))"
    }
}
