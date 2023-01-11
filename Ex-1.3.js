const sumLargerSquares = (a, b, c) => {
  let sorted = [a,b,c].sort()
  console.log((sorted[sorted.length-1]*sorted[sorted.length-1]) + (sorted[sorted.length-2]*sorted[sorted.length-2]))
}

return sumLargerSquares(3,5,2)

