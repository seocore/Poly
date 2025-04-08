//
//  Polys.swift
//  Customerbasepro
//
//  Created by Dmitry Neveshkin on 17.12.2024.
//

// MARK: - 15 types
public protocol _Poly16: _Poly15 {
    associatedtype P

    /// Get the value if it is of type `P`
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

// MARK: -- 17 --

public protocol _Poly17: _Poly16 {
    associatedtype Q

    /// Get the value if it is of type `Q`
    var q: Q? { get }

    init(_ q: Q)
}

public extension _Poly17 {
    subscript(_ lookup: Q.Type) -> Q? {
        return q
    }
}

public enum Poly17<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>: _Poly17 {
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
    case q(Q)

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

    public init(_ q: Q) {
        self = .q(q)
    }

    public var q: Q? {
        guard case let .q(ret) = self else { return nil }
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
        case .q(let ret): return ret
        }
    }
}

extension Poly17: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable, L: Equatable, M: Equatable, N: Equatable, O: Equatable, P: Equatable, Q: Equatable {}
extension Poly17: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable, G: Hashable, H: Hashable, I: Hashable, J: Hashable, K: Hashable, L: Hashable, M: Hashable, N: Hashable, O: Hashable, P: Hashable, Q: Hashable {}

extension Poly17: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable, P: Encodable, Q: Encodable {
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
        case .q(let q):
            try container.encode(q)
        }
    }
}

extension Poly17: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable, P: Decodable, Q: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly17.a($0) },
            try decode(B.self, from: container).map { Poly17.b($0) },
            try decode(C.self, from: container).map { Poly17.c($0) },
            try decode(D.self, from: container).map { Poly17.d($0) },
            try decode(E.self, from: container).map { Poly17.e($0) },
            try decode(F.self, from: container).map { Poly17.f($0) },
            try decode(G.self, from: container).map { Poly17.g($0) },
            try decode(H.self, from: container).map { Poly17.h($0) },
            try decode(I.self, from: container).map { Poly17.i($0) },
            try decode(J.self, from: container).map { Poly17.j($0) },
            try decode(K.self, from: container).map { Poly17.k($0) },
            try decode(L.self, from: container).map { Poly17.l($0) },
            try decode(M.self, from: container).map { Poly17.m($0) },
            try decode(N.self, from: container).map { Poly17.n($0) },
            try decode(O.self, from: container).map { Poly17.o($0) },
            try decode(P.self, from: container).map { Poly17.p($0) },
            try decode(Q.self, from: container).map { Poly17.q($0) }]

        let maybeVal: Poly17<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>? = attempts
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

extension Collection where Element: _Poly17 {
    public subscript(type: Element.Q.Type) -> [Element.Q] {
        return compactMap { $0.q }
    }
}

extension Poly17 {
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
            Q.self,
        ]
    }
}

extension Poly17: CustomStringConvertible {
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
        case .q(let q):
            str = String(describing: q)
        }

        return "Poly(\(str))"
    }
}

// MARK: -- 18 --

public protocol _Poly18: _Poly17 {
    associatedtype R

    /// Get the value if it is of type `R`
    var r: R? { get }

    init(_ r: R)
}

public extension _Poly18 {
    subscript(_ lookup: R.Type) -> R? {
        return r
    }
}

public enum Poly18<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>: _Poly18 {
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
    case q(Q)
    case r(R)

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

    public init(_ q: Q) {
        self = .q(q)
    }

    public var q: Q? {
        guard case let .q(ret) = self else { return nil }
        return ret
    }

    public init(_ r: R) {
        self = .r(r)
    }

    public var r: R? {
        guard case let .r(ret) = self else { return nil }
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
        case .q(let ret): return ret
        case .r(let ret): return ret
        }
    }
}

extension Poly18: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable, L: Equatable, M: Equatable, N: Equatable, O: Equatable, P: Equatable, Q: Equatable, R: Equatable {}
extension Poly18: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable, G: Hashable, H: Hashable, I: Hashable, J: Hashable, K: Hashable, L: Hashable, M: Hashable, N: Hashable, O: Hashable, P: Hashable, Q: Hashable, R: Hashable {}

extension Poly18: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable, P: Encodable, Q: Encodable, R: Encodable {
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
        case .q(let q):
            try container.encode(q)
        case .r(let r):
            try container.encode(r)
        }
    }
}

extension Poly18: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable, P: Decodable, Q: Decodable, R: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly18.a($0) },
            try decode(B.self, from: container).map { Poly18.b($0) },
            try decode(C.self, from: container).map { Poly18.c($0) },
            try decode(D.self, from: container).map { Poly18.d($0) },
            try decode(E.self, from: container).map { Poly18.e($0) },
            try decode(F.self, from: container).map { Poly18.f($0) },
            try decode(G.self, from: container).map { Poly18.g($0) },
            try decode(H.self, from: container).map { Poly18.h($0) },
            try decode(I.self, from: container).map { Poly18.i($0) },
            try decode(J.self, from: container).map { Poly18.j($0) },
            try decode(K.self, from: container).map { Poly18.k($0) },
            try decode(L.self, from: container).map { Poly18.l($0) },
            try decode(M.self, from: container).map { Poly18.m($0) },
            try decode(N.self, from: container).map { Poly18.n($0) },
            try decode(O.self, from: container).map { Poly18.o($0) },
            try decode(P.self, from: container).map { Poly18.p($0) },
            try decode(Q.self, from: container).map { Poly18.q($0) },
            try decode(R.self, from: container).map { Poly18.r($0) }]

        let maybeVal: Poly18<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>? = attempts
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

extension Collection where Element: _Poly18 {
    public subscript(type: Element.R.Type) -> [Element.R] {
        return compactMap { $0.r }
    }
}

extension Poly18 {
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
            Q.self,
            R.self,
        ]
    }
}

extension Poly18: CustomStringConvertible {
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
        case .q(let q):
            str = String(describing: q)
        case .r(let r):
            str = String(describing: r)
        }

        return "Poly(\(str))"
    }
}

// MARK: -- 19 --

public protocol _Poly19: _Poly18 {
    associatedtype S

    /// Get the value if it is of type `S`
    var s: S? { get }

    init(_ s: S)
}

public extension _Poly19 {
    subscript(_ lookup: S.Type) -> S? {
        return s
    }
}

public enum Poly19<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>: _Poly19 {
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
    case q(Q)
    case r(R)
    case s(S)

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

    public init(_ q: Q) {
        self = .q(q)
    }

    public var q: Q? {
        guard case let .q(ret) = self else { return nil }
        return ret
    }

    public init(_ r: R) {
        self = .r(r)
    }

    public var r: R? {
        guard case let .r(ret) = self else { return nil }
        return ret
    }

    public init(_ s: S) {
        self = .s(s)
    }

    public var s: S? {
        guard case let .s(ret) = self else { return nil }
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
        case .q(let ret): return ret
        case .r(let ret): return ret
        case .s(let ret): return ret
        }
    }
}

extension Poly19: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable, L: Equatable, M: Equatable, N: Equatable, O: Equatable, P: Equatable, Q: Equatable, R: Equatable, S: Equatable {}
extension Poly19: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable, G: Hashable, H: Hashable, I: Hashable, J: Hashable, K: Hashable, L: Hashable, M: Hashable, N: Hashable, O: Hashable, P: Hashable, Q: Hashable, R: Hashable, S: Hashable {}

extension Poly19: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable, P: Encodable, Q: Encodable, R: Encodable, S: Encodable {
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
        case .q(let q):
            try container.encode(q)
        case .r(let r):
            try container.encode(r)
        case .s(let s):
            try container.encode(s)
        }
    }
}

extension Poly19: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable, P: Decodable, Q: Decodable, R: Decodable, S: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly19.a($0) },
            try decode(B.self, from: container).map { Poly19.b($0) },
            try decode(C.self, from: container).map { Poly19.c($0) },
            try decode(D.self, from: container).map { Poly19.d($0) },
            try decode(E.self, from: container).map { Poly19.e($0) },
            try decode(F.self, from: container).map { Poly19.f($0) },
            try decode(G.self, from: container).map { Poly19.g($0) },
            try decode(H.self, from: container).map { Poly19.h($0) },
            try decode(I.self, from: container).map { Poly19.i($0) },
            try decode(J.self, from: container).map { Poly19.j($0) },
            try decode(K.self, from: container).map { Poly19.k($0) },
            try decode(L.self, from: container).map { Poly19.l($0) },
            try decode(M.self, from: container).map { Poly19.m($0) },
            try decode(N.self, from: container).map { Poly19.n($0) },
            try decode(O.self, from: container).map { Poly19.o($0) },
            try decode(P.self, from: container).map { Poly19.p($0) },
            try decode(Q.self, from: container).map { Poly19.q($0) },
            try decode(R.self, from: container).map { Poly19.r($0) },
            try decode(S.self, from: container).map { Poly19.s($0) }]

        let maybeVal: Poly19<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>? = attempts
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

extension Collection where Element: _Poly19 {
    public subscript(type: Element.S.Type) -> [Element.S] {
        return compactMap { $0.s }
    }
}

extension Poly19 {
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
            Q.self,
            R.self,
            S.self,
        ]
    }
}

extension Poly19: CustomStringConvertible {
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
        case .q(let q):
            str = String(describing: q)
        case .r(let r):
            str = String(describing: r)
        case .s(let s):
            str = String(describing: s)
        }

        return "Poly(\(str))"
    }
}

// MARK: -- 20 --

public protocol _Poly20: _Poly19 {
    associatedtype T

    /// Get the value if it is of type `T`
    var t: T? { get }

    init(_ t: T)
}

public extension _Poly20 {
    subscript(_ lookup: T.Type) -> T? {
        return t
    }
}

public enum Poly20<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>: _Poly20 {
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
    case q(Q)
    case r(R)
    case s(S)
    case t(T)

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

    public init(_ q: Q) {
        self = .q(q)
    }

    public var q: Q? {
        guard case let .q(ret) = self else { return nil }
        return ret
    }

    public init(_ r: R) {
        self = .r(r)
    }

    public var r: R? {
        guard case let .r(ret) = self else { return nil }
        return ret
    }

    public init(_ s: S) {
        self = .s(s)
    }

    public var s: S? {
        guard case let .s(ret) = self else { return nil }
        return ret
    }

    public init(_ t: T) {
        self = .t(t)
    }

    public var t: T? {
        guard case let .t(ret) = self else { return nil }
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
        case .q(let ret): return ret
        case .r(let ret): return ret
        case .s(let ret): return ret
        case .t(let ret): return ret
        }
    }
}

extension Poly20: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable, L: Equatable, M: Equatable, N: Equatable, O: Equatable, P: Equatable, Q: Equatable, R: Equatable, S: Equatable, T: Equatable {}
extension Poly20: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable, G: Hashable, H: Hashable, I: Hashable, J: Hashable, K: Hashable, L: Hashable, M: Hashable, N: Hashable, O: Hashable, P: Hashable, Q: Hashable, R: Hashable, S: Hashable, T: Hashable {}

extension Poly20: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable, P: Encodable, Q: Encodable, R: Encodable, S: Encodable, T: Encodable {
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
        case .q(let q):
            try container.encode(q)
        case .r(let r):
            try container.encode(r)
        case .s(let s):
            try container.encode(s)
        case .t(let t):
            try container.encode(t)
        }
    }
}

extension Poly20: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable, P: Decodable, Q: Decodable, R: Decodable, S: Decodable, T: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly20.a($0) },
            try decode(B.self, from: container).map { Poly20.b($0) },
            try decode(C.self, from: container).map { Poly20.c($0) },
            try decode(D.self, from: container).map { Poly20.d($0) },
            try decode(E.self, from: container).map { Poly20.e($0) },
            try decode(F.self, from: container).map { Poly20.f($0) },
            try decode(G.self, from: container).map { Poly20.g($0) },
            try decode(H.self, from: container).map { Poly20.h($0) },
            try decode(I.self, from: container).map { Poly20.i($0) },
            try decode(J.self, from: container).map { Poly20.j($0) },
            try decode(K.self, from: container).map { Poly20.k($0) },
            try decode(L.self, from: container).map { Poly20.l($0) },
            try decode(M.self, from: container).map { Poly20.m($0) },
            try decode(N.self, from: container).map { Poly20.n($0) },
            try decode(O.self, from: container).map { Poly20.o($0) },
            try decode(P.self, from: container).map { Poly20.p($0) },
            try decode(Q.self, from: container).map { Poly20.q($0) },
            try decode(R.self, from: container).map { Poly20.r($0) },
            try decode(S.self, from: container).map { Poly20.s($0) },
            try decode(T.self, from: container).map { Poly20.t($0) }]

        let maybeVal: Poly20<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>? = attempts
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

extension Collection where Element: _Poly20 {
    public subscript(type: Element.T.Type) -> [Element.T] {
        return compactMap { $0.t }
    }
}

extension Poly20 {
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
            Q.self,
            R.self,
            S.self,
            T.self,
        ]
    }
}

extension Poly20: CustomStringConvertible {
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
        case .q(let q):
            str = String(describing: q)
        case .r(let r):
            str = String(describing: r)
        case .s(let s):
            str = String(describing: s)
        case .t(let t):
            str = String(describing: t)
        }

        return "Poly(\(str))"
    }
}

// MARK: -- 21 --

public protocol _Poly21: _Poly20 {
    associatedtype T21

    /// Get the value if it is of type `T21`
    var t21: T21? { get }

    init(_ t21: T21)
}

public extension _Poly21 {
    subscript(_ lookup: T21.Type) -> T21? {
        return t21
    }
}

public enum Poly21<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, T21>: _Poly21 {
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
    case q(Q)
    case r(R)
    case s(S)
    case t(T)
    case t21(T21)

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

    public init(_ q: Q) {
        self = .q(q)
    }

    public var q: Q? {
        guard case let .q(ret) = self else { return nil }
        return ret
    }

    public init(_ r: R) {
        self = .r(r)
    }

    public var r: R? {
        guard case let .r(ret) = self else { return nil }
        return ret
    }

    public init(_ s: S) {
        self = .s(s)
    }

    public var s: S? {
        guard case let .s(ret) = self else { return nil }
        return ret
    }

    public init(_ t: T) {
        self = .t(t)
    }

    public var t: T? {
        guard case let .t(ret) = self else { return nil }
        return ret
    }

    public init(_ t21: T21) {
        self = .t21(t21)
    }

    public var t21: T21? {
        guard case let .t21(ret) = self else { return nil }
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
        case .q(let ret): return ret
        case .r(let ret): return ret
        case .s(let ret): return ret
        case .t(let ret): return ret
        case .t21(let ret): return ret
        }
    }
}

extension Poly21: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable, L: Equatable, M: Equatable, N: Equatable, O: Equatable, P: Equatable, Q: Equatable, R: Equatable, S: Equatable, T: Equatable, T21: Equatable {}
extension Poly21: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable, G: Hashable, H: Hashable, I: Hashable, J: Hashable, K: Hashable, L: Hashable, M: Hashable, N: Hashable, O: Hashable, P: Hashable, Q: Hashable, R: Hashable, S: Hashable, T: Hashable, T21: Hashable {}

extension Poly21: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable, P: Encodable, Q: Encodable, R: Encodable, S: Encodable, T: Encodable, T21: Encodable {
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
        case .q(let q):
            try container.encode(q)
        case .r(let r):
            try container.encode(r)
        case .s(let s):
            try container.encode(s)
        case .t(let t):
            try container.encode(t)
        case .t21(let val):
            try container.encode(val)
        }
    }
}

extension Poly21: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable, P: Decodable, Q: Decodable, R: Decodable, S: Decodable, T: Decodable, T21: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly21.a($0) },
            try decode(B.self, from: container).map { Poly21.b($0) },
            try decode(C.self, from: container).map { Poly21.c($0) },
            try decode(D.self, from: container).map { Poly21.d($0) },
            try decode(E.self, from: container).map { Poly21.e($0) },
            try decode(F.self, from: container).map { Poly21.f($0) },
            try decode(G.self, from: container).map { Poly21.g($0) },
            try decode(H.self, from: container).map { Poly21.h($0) },
            try decode(I.self, from: container).map { Poly21.i($0) },
            try decode(J.self, from: container).map { Poly21.j($0) },
            try decode(K.self, from: container).map { Poly21.k($0) },
            try decode(L.self, from: container).map { Poly21.l($0) },
            try decode(M.self, from: container).map { Poly21.m($0) },
            try decode(N.self, from: container).map { Poly21.n($0) },
            try decode(O.self, from: container).map { Poly21.o($0) },
            try decode(P.self, from: container).map { Poly21.p($0) },
            try decode(Q.self, from: container).map { Poly21.q($0) },
            try decode(R.self, from: container).map { Poly21.r($0) },
            try decode(S.self, from: container).map { Poly21.s($0) },
            try decode(T.self, from: container).map { Poly21.t($0) },
            try decode(T21.self, from: container).map { Poly21.t21($0) }]

        let maybeVal: Poly21<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, T21>? = attempts
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

extension Collection where Element: _Poly21 {
    public subscript(type: Element.T21.Type) -> [Element.T21] {
        return compactMap { $0.t21 }
    }
}

extension Poly21 {
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
            Q.self,
            R.self,
            S.self,
            T.self,
            T21.self,
        ]
    }
}

extension Poly21: CustomStringConvertible {
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
        case .q(let q):
            str = String(describing: q)
        case .r(let r):
            str = String(describing: r)
        case .s(let s):
            str = String(describing: s)
        case .t(let t):
            str = String(describing: t)
        case .t21(let val):
            str = String(describing: val)
        }

        return "Poly(\(str))"
    }
}

// MARK: -- 22 --

public protocol _Poly22: _Poly21 {
    associatedtype T22

    /// Get the value if it is of type `T22`
    var t22: T22? { get }

    init(_ t22: T22)
}

public extension _Poly22 {
    subscript(_ lookup: T22.Type) -> T22? {
        return t22
    }
}

public enum Poly22<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, T21, T22>: _Poly22 {
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
    case q(Q)
    case r(R)
    case s(S)
    case t(T)
    case t21(T21)
    case t22(T22)

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

    public init(_ q: Q) {
        self = .q(q)
    }

    public var q: Q? {
        guard case let .q(ret) = self else { return nil }
        return ret
    }

    public init(_ r: R) {
        self = .r(r)
    }

    public var r: R? {
        guard case let .r(ret) = self else { return nil }
        return ret
    }

    public init(_ s: S) {
        self = .s(s)
    }

    public var s: S? {
        guard case let .s(ret) = self else { return nil }
        return ret
    }

    public init(_ t: T) {
        self = .t(t)
    }

    public var t: T? {
        guard case let .t(ret) = self else { return nil }
        return ret
    }

    public init(_ t21: T21) {
        self = .t21(t21)
    }

    public var t21: T21? {
        guard case let .t21(ret) = self else { return nil }
        return ret
    }

    public init(_ t22: T22) {
        self = .t22(t22)
    }

    public var t22: T22? {
        guard case let .t22(ret) = self else { return nil }
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
        case .q(let ret): return ret
        case .r(let ret): return ret
        case .s(let ret): return ret
        case .t(let ret): return ret
        case .t21(let ret): return ret
        case .t22(let ret): return ret
        }
    }
}

extension Poly22: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable, L: Equatable, M: Equatable, N: Equatable, O: Equatable, P: Equatable, Q: Equatable, R: Equatable, S: Equatable, T: Equatable, T21: Equatable, T22: Equatable {}
extension Poly22: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable, G: Hashable, H: Hashable, I: Hashable, J: Hashable, K: Hashable, L: Hashable, M: Hashable, N: Hashable, O: Hashable, P: Hashable, Q: Hashable, R: Hashable, S: Hashable, T: Hashable, T21: Hashable, T22: Hashable {}

extension Poly22: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable, P: Encodable, Q: Encodable, R: Encodable, S: Encodable, T: Encodable, T21: Encodable, T22: Encodable {
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
        case .q(let q):
            try container.encode(q)
        case .r(let r):
            try container.encode(r)
        case .s(let s):
            try container.encode(s)
        case .t(let t):
            try container.encode(t)
        case .t21(let val):
            try container.encode(val)
        case .t22(let val):
            try container.encode(val)
        }
    }
}

extension Poly22: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable, P: Decodable, Q: Decodable, R: Decodable, S: Decodable, T: Decodable, T21: Decodable, T22: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly22.a($0) },
            try decode(B.self, from: container).map { Poly22.b($0) },
            try decode(C.self, from: container).map { Poly22.c($0) },
            try decode(D.self, from: container).map { Poly22.d($0) },
            try decode(E.self, from: container).map { Poly22.e($0) },
            try decode(F.self, from: container).map { Poly22.f($0) },
            try decode(G.self, from: container).map { Poly22.g($0) },
            try decode(H.self, from: container).map { Poly22.h($0) },
            try decode(I.self, from: container).map { Poly22.i($0) },
            try decode(J.self, from: container).map { Poly22.j($0) },
            try decode(K.self, from: container).map { Poly22.k($0) },
            try decode(L.self, from: container).map { Poly22.l($0) },
            try decode(M.self, from: container).map { Poly22.m($0) },
            try decode(N.self, from: container).map { Poly22.n($0) },
            try decode(O.self, from: container).map { Poly22.o($0) },
            try decode(P.self, from: container).map { Poly22.p($0) },
            try decode(Q.self, from: container).map { Poly22.q($0) },
            try decode(R.self, from: container).map { Poly22.r($0) },
            try decode(S.self, from: container).map { Poly22.s($0) },
            try decode(T.self, from: container).map { Poly22.t($0) },
            try decode(T21.self, from: container).map { Poly22.t21($0) },
            try decode(T22.self, from: container).map { Poly22.t22($0) }]

        let maybeVal: Poly22<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, T21, T22>? = attempts
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

extension Collection where Element: _Poly22 {
    public subscript(type: Element.T22.Type) -> [Element.T22] {
        return compactMap { $0.t22 }
    }
}

extension Poly22 {
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
            Q.self,
            R.self,
            S.self,
            T.self,
            T21.self,
            T22.self,
        ]
    }
}

extension Poly22: CustomStringConvertible {
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
        case .q(let q):
            str = String(describing: q)
        case .r(let r):
            str = String(describing: r)
        case .s(let s):
            str = String(describing: s)
        case .t(let t):
            str = String(describing: t)
        case .t21(let val):
            str = String(describing: val)
        case .t22(let val):
            str = String(describing: val)
        }

        return "Poly(\(str))"
    }
}

// MARK: -- 23 --

public protocol _Poly23: _Poly22 {
    associatedtype T23

    /// Get the value if it is of type `T23`
    var t23: T23? { get }

    init(_ t23: T23)
}

public extension _Poly23 {
    subscript(_ lookup: T23.Type) -> T23? {
        return t23
    }
}

public enum Poly23<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, T21, T22, T23>: _Poly23 {
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
    case q(Q)
    case r(R)
    case s(S)
    case t(T)
    case t21(T21)
    case t22(T22)
    case t23(T23)

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

    public init(_ q: Q) {
        self = .q(q)
    }

    public var q: Q? {
        guard case let .q(ret) = self else { return nil }
        return ret
    }

    public init(_ r: R) {
        self = .r(r)
    }

    public var r: R? {
        guard case let .r(ret) = self else { return nil }
        return ret
    }

    public init(_ s: S) {
        self = .s(s)
    }

    public var s: S? {
        guard case let .s(ret) = self else { return nil }
        return ret
    }

    public init(_ t: T) {
        self = .t(t)
    }

    public var t: T? {
        guard case let .t(ret) = self else { return nil }
        return ret
    }

    public init(_ t21: T21) {
        self = .t21(t21)
    }

    public var t21: T21? {
        guard case let .t21(ret) = self else { return nil }
        return ret
    }

    public init(_ t22: T22) {
        self = .t22(t22)
    }

    public var t22: T22? {
        guard case let .t22(ret) = self else { return nil }
        return ret
    }

    public init(_ t23: T23) {
        self = .t23(t23)
    }

    public var t23: T23? {
        guard case let .t23(ret) = self else { return nil }
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
        case .q(let ret): return ret
        case .r(let ret): return ret
        case .s(let ret): return ret
        case .t(let ret): return ret
        case .t21(let ret): return ret
        case .t22(let ret): return ret
        case .t23(let ret): return ret
        }
    }
}

extension Poly23: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable, L: Equatable, M: Equatable, N: Equatable, O: Equatable, P: Equatable, Q: Equatable, R: Equatable, S: Equatable, T: Equatable, T21: Equatable, T22: Equatable, T23: Equatable {}
extension Poly23: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable, G: Hashable, H: Hashable, I: Hashable, J: Hashable, K: Hashable, L: Hashable, M: Hashable, N: Hashable, O: Hashable, P: Hashable, Q: Hashable, R: Hashable, S: Hashable, T: Hashable, T21: Hashable, T22: Hashable, T23: Hashable {}

extension Poly23: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable, P: Encodable, Q: Encodable, R: Encodable, S: Encodable, T: Encodable, T21: Encodable, T22: Encodable, T23: Encodable {
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
        case .q(let q):
            try container.encode(q)
        case .r(let r):
            try container.encode(r)
        case .s(let s):
            try container.encode(s)
        case .t(let t):
            try container.encode(t)
        case .t21(let val):
            try container.encode(val)
        case .t22(let val):
            try container.encode(val)
        case .t23(let val):
            try container.encode(val)
        }
    }
}

extension Poly23: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable, P: Decodable, Q: Decodable, R: Decodable, S: Decodable, T: Decodable, T21: Decodable, T22: Decodable, T23: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly23.a($0) },
            try decode(B.self, from: container).map { Poly23.b($0) },
            try decode(C.self, from: container).map { Poly23.c($0) },
            try decode(D.self, from: container).map { Poly23.d($0) },
            try decode(E.self, from: container).map { Poly23.e($0) },
            try decode(F.self, from: container).map { Poly23.f($0) },
            try decode(G.self, from: container).map { Poly23.g($0) },
            try decode(H.self, from: container).map { Poly23.h($0) },
            try decode(I.self, from: container).map { Poly23.i($0) },
            try decode(J.self, from: container).map { Poly23.j($0) },
            try decode(K.self, from: container).map { Poly23.k($0) },
            try decode(L.self, from: container).map { Poly23.l($0) },
            try decode(M.self, from: container).map { Poly23.m($0) },
            try decode(N.self, from: container).map { Poly23.n($0) },
            try decode(O.self, from: container).map { Poly23.o($0) },
            try decode(P.self, from: container).map { Poly23.p($0) },
            try decode(Q.self, from: container).map { Poly23.q($0) },
            try decode(R.self, from: container).map { Poly23.r($0) },
            try decode(S.self, from: container).map { Poly23.s($0) },
            try decode(T.self, from: container).map { Poly23.t($0) },
            try decode(T21.self, from: container).map { Poly23.t21($0) },
            try decode(T22.self, from: container).map { Poly23.t22($0) },
            try decode(T23.self, from: container).map { Poly23.t23($0) }]

        let maybeVal: Poly23<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, T21, T22, T23>? = attempts
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

extension Collection where Element: _Poly23 {
    public subscript(type: Element.T23.Type) -> [Element.T23] {
        return compactMap { $0.t23 }
    }
}

extension Poly23 {
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
            Q.self,
            R.self,
            S.self,
            T.self,
            T21.self,
            T22.self,
            T23.self,
        ]
    }
}

extension Poly23: CustomStringConvertible {
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
        case .q(let q):
            str = String(describing: q)
        case .r(let r):
            str = String(describing: r)
        case .s(let s):
            str = String(describing: s)
        case .t(let t):
            str = String(describing: t)
        case .t21(let val):
            str = String(describing: val)
        case .t22(let val):
            str = String(describing: val)
        case .t23(let val):
            str = String(describing: val)
        }

        return "Poly(\(str))"
    }
}

// MARK: -- 24 --

public protocol _Poly24: _Poly23 {
    associatedtype T24

    /// Get the value if it is of type `T24`
    var t24: T24? { get }

    init(_ t24: T24)
}

public extension _Poly24 {
    subscript(_ lookup: T24.Type) -> T24? {
        return t24
    }
}

public enum Poly24<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, T21, T22, T23, T24>: _Poly24 {
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
    case q(Q)
    case r(R)
    case s(S)
    case t(T)
    case t21(T21)
    case t22(T22)
    case t23(T23)
    case t24(T24)

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

    public init(_ q: Q) {
        self = .q(q)
    }

    public var q: Q? {
        guard case let .q(ret) = self else { return nil }
        return ret
    }

    public init(_ r: R) {
        self = .r(r)
    }

    public var r: R? {
        guard case let .r(ret) = self else { return nil }
        return ret
    }

    public init(_ s: S) {
        self = .s(s)
    }

    public var s: S? {
        guard case let .s(ret) = self else { return nil }
        return ret
    }

    public init(_ t: T) {
        self = .t(t)
    }

    public var t: T? {
        guard case let .t(ret) = self else { return nil }
        return ret
    }

    public init(_ t21: T21) {
        self = .t21(t21)
    }

    public var t21: T21? {
        guard case let .t21(ret) = self else { return nil }
        return ret
    }

    public init(_ t22: T22) {
        self = .t22(t22)
    }

    public var t22: T22? {
        guard case let .t22(ret) = self else { return nil }
        return ret
    }

    public init(_ t23: T23) {
        self = .t23(t23)
    }

    public var t23: T23? {
        guard case let .t23(ret) = self else { return nil }
        return ret
    }

    public init(_ t24: T24) {
        self = .t24(t24)
    }

    public var t24: T24? {
        guard case let .t24(ret) = self else { return nil }
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
        case .q(let ret): return ret
        case .r(let ret): return ret
        case .s(let ret): return ret
        case .t(let ret): return ret
        case .t21(let ret): return ret
        case .t22(let ret): return ret
        case .t23(let ret): return ret
        case .t24(let ret): return ret
        }
    }
}

extension Poly24: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable, L: Equatable, M: Equatable, N: Equatable, O: Equatable, P: Equatable, Q: Equatable, R: Equatable, S: Equatable, T: Equatable, T21: Equatable, T22: Equatable, T23: Equatable, T24: Equatable {}
extension Poly24: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable, G: Hashable, H: Hashable, I: Hashable, J: Hashable, K: Hashable, L: Hashable, M: Hashable, N: Hashable, O: Hashable, P: Hashable, Q: Hashable, R: Hashable, S: Hashable, T: Hashable, T21: Hashable, T22: Hashable, T23: Hashable, T24: Hashable {}

extension Poly24: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable, P: Encodable, Q: Encodable, R: Encodable, S: Encodable, T: Encodable, T21: Encodable, T22: Encodable, T23: Encodable, T24: Encodable {
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
        case .q(let q):
            try container.encode(q)
        case .r(let r):
            try container.encode(r)
        case .s(let s):
            try container.encode(s)
        case .t(let t):
            try container.encode(t)
        case .t21(let val):
            try container.encode(val)
        case .t22(let val):
            try container.encode(val)
        case .t23(let val):
            try container.encode(val)
        case .t24(let val):
            try container.encode(val)
        }
    }
}

extension Poly24: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable, P: Decodable, Q: Decodable, R: Decodable, S: Decodable, T: Decodable, T21: Decodable, T22: Decodable, T23: Decodable, T24: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly24.a($0) },
            try decode(B.self, from: container).map { Poly24.b($0) },
            try decode(C.self, from: container).map { Poly24.c($0) },
            try decode(D.self, from: container).map { Poly24.d($0) },
            try decode(E.self, from: container).map { Poly24.e($0) },
            try decode(F.self, from: container).map { Poly24.f($0) },
            try decode(G.self, from: container).map { Poly24.g($0) },
            try decode(H.self, from: container).map { Poly24.h($0) },
            try decode(I.self, from: container).map { Poly24.i($0) },
            try decode(J.self, from: container).map { Poly24.j($0) },
            try decode(K.self, from: container).map { Poly24.k($0) },
            try decode(L.self, from: container).map { Poly24.l($0) },
            try decode(M.self, from: container).map { Poly24.m($0) },
            try decode(N.self, from: container).map { Poly24.n($0) },
            try decode(O.self, from: container).map { Poly24.o($0) },
            try decode(P.self, from: container).map { Poly24.p($0) },
            try decode(Q.self, from: container).map { Poly24.q($0) },
            try decode(R.self, from: container).map { Poly24.r($0) },
            try decode(S.self, from: container).map { Poly24.s($0) },
            try decode(T.self, from: container).map { Poly24.t($0) },
            try decode(T21.self, from: container).map { Poly24.t21($0) },
            try decode(T22.self, from: container).map { Poly24.t22($0) },
            try decode(T23.self, from: container).map { Poly24.t23($0) },
            try decode(T24.self, from: container).map { Poly24.t24($0) }]

        let maybeVal: Poly24<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, T21, T22, T23, T24>? = attempts
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

extension Collection where Element: _Poly24 {
    public subscript(type: Element.T24.Type) -> [Element.T24] {
        return compactMap { $0.t24 }
    }
}

extension Poly24 {
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
            Q.self,
            R.self,
            S.self,
            T.self,
            T21.self,
            T22.self,
            T23.self,
            T24.self,
        ]
    }
}

extension Poly24: CustomStringConvertible {
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
        case .q(let q):
            str = String(describing: q)
        case .r(let r):
            str = String(describing: r)
        case .s(let s):
            str = String(describing: s)
        case .t(let t):
            str = String(describing: t)
        case .t21(let val):
            str = String(describing: val)
        case .t22(let val):
            str = String(describing: val)
        case .t23(let val):
            str = String(describing: val)
        case .t24(let val):
            str = String(describing: val)
        }

        return "Poly(\(str))"
    }
}

// MARK: -- 25 --

public protocol _Poly25: _Poly24 {
    associatedtype T25

    /// Get the value if it is of type `T25`
    var t25: T25? { get }

    init(_ t25: T25)
}

public extension _Poly25 {
    subscript(_ lookup: T25.Type) -> T25? {
        return t25
    }
}

public enum Poly25<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, T21, T22, T23, T24, T25>: _Poly25 {
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
    case q(Q)
    case r(R)
    case s(S)
    case t(T)
    case t21(T21)
    case t22(T22)
    case t23(T22)
    case t24(T24)
    case t25(T25)

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

    public init(_ q: Q) {
        self = .q(q)
    }

    public var q: Q? {
        guard case let .q(ret) = self else { return nil }
        return ret
    }

    public init(_ r: R) {
        self = .r(r)
    }

    public var r: R? {
        guard case let .r(ret) = self else { return nil }
        return ret
    }

    public init(_ s: S) {
        self = .s(s)
    }

    public var s: S? {
        guard case let .s(ret) = self else { return nil }
        return ret
    }

    public init(_ t: T) {
        self = .t(t)
    }

    public var t: T? {
        guard case let .t(ret) = self else { return nil }
        return ret
    }

    public init(_ t21: T21) {
        self = .t21(t21)
    }

    public var t21: T21? {
        guard case let .t21(ret) = self else { return nil }
        return ret
    }

    public init(_ t22: T22) {
        self = .t22(t22)
    }

    public var t22: T22? {
        guard case let .t22(ret) = self else { return nil }
        return ret
    }

    public init(_ t23: T23) {
        self = .t23(t23)
    }

    public var t23: T23? {
        guard case let .t23(ret) = self else { return nil }
        return ret
    }

    public init(_ t24: T24) {
        self = .t24(t24)
    }

    public var t24: T24? {
        guard case let .t24(ret) = self else { return nil }
        return ret
    }

    public init(_ t25: T25) {
        self = .t25(t25)
    }

    public var t25: T25? {
        guard case let .t25(ret) = self else { return nil }
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
        case .q(let ret): return ret
        case .r(let ret): return ret
        case .s(let ret): return ret
        case .t(let ret): return ret
        case .t21(let ret): return ret
        case .t22(let ret): return ret
        case .t23(let ret): return ret
        case .t24(let ret): return ret
        case .t25(let ret): return ret
        }
    }
}

extension Poly25: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable, G: Equatable, H: Equatable, I: Equatable, J: Equatable, K: Equatable, L: Equatable, M: Equatable, N: Equatable, O: Equatable, P: Equatable, Q: Equatable, R: Equatable, S: Equatable, T: Equatable, T21: Equatable, T22: Equatable, T23: Equatable, T24: Equatable, T25: Equatable {}
extension Poly25: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable, G: Hashable, H: Hashable, I: Hashable, J: Hashable, K: Hashable, L: Hashable, M: Hashable, N: Hashable, O: Hashable, P: Hashable, Q: Hashable, R: Hashable, S: Hashable, T: Hashable, T21: Hashable, T22: Hashable, T23: Hashable, T24: Hashable, T25: Hashable {}

extension Poly25: Encodable where A: Encodable, B: Encodable, C: Encodable, D: Encodable, E: Encodable, F: Encodable, G: Encodable, H: Encodable, I: Encodable, J: Encodable, K: Encodable, L: Encodable, M: Encodable, N: Encodable, O: Encodable, P: Encodable, Q: Encodable, R: Encodable, S: Encodable, T: Encodable, T21: Encodable, T22: Encodable, T23: Encodable, T24: Encodable, T25: Encodable {
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
        case .q(let q):
            try container.encode(q)
        case .r(let r):
            try container.encode(r)
        case .s(let s):
            try container.encode(s)
        case .t(let t):
            try container.encode(t)
        case .t21(let val):
            try container.encode(val)
        case .t22(let val):
            try container.encode(val)
        case .t23(let val):
            try container.encode(val)
        case .t24(let val):
            try container.encode(val)
        case .t25(let val):
            try container.encode(val)
        }
    }
}

extension Poly25: Decodable where A: Decodable, B: Decodable, C: Decodable, D: Decodable, E: Decodable, F: Decodable, G: Decodable, H: Decodable, I: Decodable, J: Decodable, K: Decodable, L: Decodable, M: Decodable, N: Decodable, O: Decodable, P: Decodable, Q: Decodable, R: Decodable, S: Decodable, T: Decodable, T21: Decodable, T22: Decodable, T23: Decodable, T24: Decodable, T25: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()

        let attempts = [
            try decode(A.self, from: container).map { Poly25.a($0) },
            try decode(B.self, from: container).map { Poly25.b($0) },
            try decode(C.self, from: container).map { Poly25.c($0) },
            try decode(D.self, from: container).map { Poly25.d($0) },
            try decode(E.self, from: container).map { Poly25.e($0) },
            try decode(F.self, from: container).map { Poly25.f($0) },
            try decode(G.self, from: container).map { Poly25.g($0) },
            try decode(H.self, from: container).map { Poly25.h($0) },
            try decode(I.self, from: container).map { Poly25.i($0) },
            try decode(J.self, from: container).map { Poly25.j($0) },
            try decode(K.self, from: container).map { Poly25.k($0) },
            try decode(L.self, from: container).map { Poly25.l($0) },
            try decode(M.self, from: container).map { Poly25.m($0) },
            try decode(N.self, from: container).map { Poly25.n($0) },
            try decode(O.self, from: container).map { Poly25.o($0) },
            try decode(P.self, from: container).map { Poly25.p($0) },
            try decode(Q.self, from: container).map { Poly25.q($0) },
            try decode(R.self, from: container).map { Poly25.r($0) },
            try decode(S.self, from: container).map { Poly25.s($0) },
            try decode(T.self, from: container).map { Poly25.t($0) },
            try decode(T21.self, from: container).map { Poly25.t21($0) },
            try decode(T22.self, from: container).map { Poly25.t22($0) },
            try decode(T23.self, from: container).map { Poly25.t23($0) },
            try decode(T24.self, from: container).map { Poly25.t24($0) },
            try decode(T25.self, from: container).map { Poly25.t25($0) }]

        let maybeVal: Poly25<A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, T21, T22, T23, T24, T25>? = attempts
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

extension Collection where Element: _Poly25 {
    public subscript(type: Element.T25.Type) -> [Element.T25] {
        return compactMap { $0.t25 }
    }
}

extension Poly25 {
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
            Q.self,
            R.self,
            S.self,
            T.self,
            T21.self,
            T22.self,
            T23.self,
            T24.self,
            T25.self,
        ]
    }
}

extension Poly25: CustomStringConvertible {
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
        case .q(let q):
            str = String(describing: q)
        case .r(let r):
            str = String(describing: r)
        case .s(let s):
            str = String(describing: s)
        case .t(let t):
            str = String(describing: t)
        case .t21(let val):
            str = String(describing: val)
        case .t22(let val):
            str = String(describing: val)
        case .t23(let val):
            str = String(describing: val)
        case .t24(let val):
            str = String(describing: val)
        case .t25(let val):
            str = String(describing: val)
        }

        return "Poly(\(str))"
    }
}
