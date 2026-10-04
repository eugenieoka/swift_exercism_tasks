func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let safeDiameter = diameter, safeDiameter >= 0,
          let safeSlices = slices, safeSlices > 0 else {
        return nil
    }
    let radius = safeDiameter / 2
    return Double.pi * radius * radius / Double(safeSlices)
}

func biggestSlice(
    diameterA: String, slicesA: String,
    diameterB: String, slicesB: String
) -> String {
    let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))

    if let a = areaA, let b = areaB {
        if a > b { return "Slice A is bigger" }
        if a < b { return "Slice B is bigger" }
        return "Neither slice is bigger"
    } else if areaA != nil {
        return "Slice A is bigger"
    } else if areaB != nil {
        return "Slice B is bigger"
    } else {
        return "Neither slice is bigger"
    }
}