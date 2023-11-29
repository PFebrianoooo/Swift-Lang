import UIKit

// Penggunaan array pada swift

var ShoopingList = [String]()
ShoopingList.append("telur")
ShoopingList.append("susu")
ShoopingList.append("sawi")
ShoopingList.count

for (x,y) in ShoopingList.enumerated() {
    print ("ibu membeli barang ke-\(x+1) bernama \(y)")
}


