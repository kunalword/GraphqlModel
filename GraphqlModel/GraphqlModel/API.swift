// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class AddProductMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddProduct($id: Int!, $name: String!, $price: Float!, $category: Int!, $vendor: Int!) {
      addProduct(id: $id, name: $name, price: $price, category: $category, vendor: $vendor) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "AddProduct"

  public var id: Int
  public var name: String
  public var price: Double
  public var category: Int
  public var vendor: Int

  public init(id: Int, name: String, price: Double, category: Int, vendor: Int) {
    self.id = id
    self.name = name
    self.price = price
    self.category = category
    self.vendor = vendor
  }

  public var variables: GraphQLMap? {
    return ["id": id, "name": name, "price": price, "category": category, "vendor": vendor]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addProduct", arguments: ["id": GraphQLVariable("id"), "name": GraphQLVariable("name"), "price": GraphQLVariable("price"), "category": GraphQLVariable("category"), "vendor": GraphQLVariable("vendor")], type: .nonNull(.object(AddProduct.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addProduct: AddProduct) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addProduct": addProduct.resultMap])
    }

    public var addProduct: AddProduct {
      get {
        return AddProduct(unsafeResultMap: resultMap["addProduct"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addProduct")
      }
    }

    public struct AddProduct: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Product"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int) {
        self.init(unsafeResultMap: ["__typename": "Product", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class DeleteProductMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteProduct($id: Int!) {
      deleteProduct(id: $id) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "DeleteProduct"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteProduct", arguments: ["id": GraphQLVariable("id")], type: .object(DeleteProduct.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteProduct: DeleteProduct? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteProduct": deleteProduct.flatMap { (value: DeleteProduct) -> ResultMap in value.resultMap }])
    }

    public var deleteProduct: DeleteProduct? {
      get {
        return (resultMap["deleteProduct"] as? ResultMap).flatMap { DeleteProduct(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "deleteProduct")
      }
    }

    public struct DeleteProduct: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Product"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int) {
        self.init(unsafeResultMap: ["__typename": "Product", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class UpdateProductMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateProduct($id: Int!, $name: String!, $price: Float!, $vendor: Int!) {
      updateProduct(id: $id, name: $name, price: $price, vendor: $vendor) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "UpdateProduct"

  public var id: Int
  public var name: String
  public var price: Double
  public var vendor: Int

  public init(id: Int, name: String, price: Double, vendor: Int) {
    self.id = id
    self.name = name
    self.price = price
    self.vendor = vendor
  }

  public var variables: GraphQLMap? {
    return ["id": id, "name": name, "price": price, "vendor": vendor]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateProduct", arguments: ["id": GraphQLVariable("id"), "name": GraphQLVariable("name"), "price": GraphQLVariable("price"), "vendor": GraphQLVariable("vendor")], type: .object(UpdateProduct.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateProduct: UpdateProduct? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateProduct": updateProduct.flatMap { (value: UpdateProduct) -> ResultMap in value.resultMap }])
    }

    public var updateProduct: UpdateProduct? {
      get {
        return (resultMap["updateProduct"] as? ResultMap).flatMap { UpdateProduct(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateProduct")
      }
    }

    public struct UpdateProduct: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Product"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int) {
        self.init(unsafeResultMap: ["__typename": "Product", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class ProudctListQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ProudctList {
      products {
        __typename
        name
        price
        id
        vendor {
          __typename
          name
          id
        }
      }
    }
    """

  public let operationName: String = "ProudctList"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("products", type: .list(.nonNull(.object(Product.selections)))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(products: [Product]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "products": products.flatMap { (value: [Product]) -> [ResultMap] in value.map { (value: Product) -> ResultMap in value.resultMap } }])
    }

    public var products: [Product]? {
      get {
        return (resultMap["products"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Product] in value.map { (value: ResultMap) -> Product in Product(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Product]) -> [ResultMap] in value.map { (value: Product) -> ResultMap in value.resultMap } }, forKey: "products")
      }
    }

    public struct Product: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Product"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("price", type: .nonNull(.scalar(Double.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("vendor", type: .nonNull(.object(Vendor.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String, price: Double, id: Int, vendor: Vendor) {
        self.init(unsafeResultMap: ["__typename": "Product", "name": name, "price": price, "id": id, "vendor": vendor.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var price: Double {
        get {
          return resultMap["price"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "price")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var vendor: Vendor {
        get {
          return Vendor(unsafeResultMap: resultMap["vendor"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "vendor")
        }
      }

      public struct Vendor: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Vendor"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String, id: Int) {
          self.init(unsafeResultMap: ["__typename": "Vendor", "name": name, "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}

public final class ProudctFilterListQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ProudctFilterList {
      products {
        __typename
        name
        id
        vendor {
          __typename
          name
          id
        }
      }
    }
    """

  public let operationName: String = "ProudctFilterList"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("products", type: .list(.nonNull(.object(Product.selections)))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(products: [Product]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "products": products.flatMap { (value: [Product]) -> [ResultMap] in value.map { (value: Product) -> ResultMap in value.resultMap } }])
    }

    public var products: [Product]? {
      get {
        return (resultMap["products"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Product] in value.map { (value: ResultMap) -> Product in Product(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Product]) -> [ResultMap] in value.map { (value: Product) -> ResultMap in value.resultMap } }, forKey: "products")
      }
    }

    public struct Product: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Product"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("vendor", type: .nonNull(.object(Vendor.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String, id: Int, vendor: Vendor) {
        self.init(unsafeResultMap: ["__typename": "Product", "name": name, "id": id, "vendor": vendor.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var vendor: Vendor {
        get {
          return Vendor(unsafeResultMap: resultMap["vendor"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "vendor")
        }
      }

      public struct Vendor: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Vendor"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String, id: Int) {
          self.init(unsafeResultMap: ["__typename": "Vendor", "name": name, "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var id: Int {
          get {
            return resultMap["id"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}
