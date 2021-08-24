import CodableCSV
import Cocoa

let completePath = "/Users/user/Downloads/download-2.csv"
let completeUrl = URL(fileURLWithPath: completePath)
print(completeUrl)
let data = try Data(contentsOf: completeUrl)
let result = try CSVReader.decode(input: data)
let rows = result.rows
var res = [String: Int]()
rows.forEach { row in
    let ios = Array(row[0])
    let version = String(ios[4...5])
    if res[version] != nil {
        var old = res[version]!
        old += Int(row[1])!
        res[version] = old
    } else {
        res[version] = Int(row[1])
    }
}

print(res)

