import PackageDemo2

public struct PackageDemo1 {
    public var name: String = "PackageDemo1_2"
    
    public init() { }
    
    public func demo1() -> String {
        return "\(name) \(PackageDemo2().demo1())"
    }
}
