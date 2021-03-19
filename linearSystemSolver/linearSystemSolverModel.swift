//
//  linearSystemSolverModel.swift
//  linearSystemSolver
//
//  Created by Alessio Garzia Marotta Brusco on 26/02/2021.
//

import Foundation

enum linearSystem {
    case compatible, incompatible, undetermined, notALinearSystem
}
enum method{
    case cramer, gauss
}


struct System2x2 {
    let method: method
    var compatibility: linearSystem{
        if (x1 == 0 && x2 == 0) || (y1 == 0 && y2 == 0) || (x1 == 0 && y1 == 0) || (x2 == 0 && y2 == 0){
            return .notALinearSystem
            
        }else{
            if ((x1/x2) != (y1/y2)) || (y1 == 0 || y2 == 0 || x1 == 0 || x2 == 0) {
                return .compatible
                
            } else {
                if (x1/x2) == (n1/n2){
                    return .undetermined
                } else{
                    return .incompatible
                }
            }
        }
    }
    
    var x1: Double
    var x2: Double
    var y1: Double
    var y2: Double
    var n1: Double
    var n2: Double
    
    mutating func solution() -> [Double]{
        if compatibility == .compatible {
            if method == .cramer{
                let D = (x1 * y2) - (x2 * y1)
                let Dx = (n1 * y2) - (n2 * y1)
                let Dy = (x1 * n2) - (x2 * n1)
                print([(Dx/D), (Dy/D)])
                return [(Dx/D), (Dy/D)]
            } else if x1 == 0{
                var solution = [0.0, 0.0]
                solution[1] = n1/y1
                solution[0] = (n2-((y2*n1)/y1))/x2
                return solution
            }else{
                if x1 != 0 {
                    var solution = [0.0, 0.0]
                    let x12 = x1/x2
                    
                    print(self.x2)
                    self.x2 = x1-(x2*x12)
                    print(self.x2)
                    
                    print(self.y2)
                    self.y2 = y1-(y2*x12)
                    print(self.y2)
                    
                    print(self.n2)
                    self.n2 = n1-(n2*x12)
                    print(self.n2)
                    
                    solution[1] = n2/y2
                    
                    solution[0] = (n1-y1*solution[1])/x1
                    
                    print(solution)
                    return solution
                }else{
                        var solution = [0.0, 0.0]
                        solution[1] = n1/y1
                        solution[0] = (n2-((y2*n1)/y1))/x2
                        return solution
            }
        }
    }
        return [Double]()
    }
            
            
            func compatibility(x1: Double, x2: Double, y1: Double, y2: Double) -> linearSystem {
                if (x1 == 0 && x2 == 0) || (y1 == 0 && y2 == 0) || (x1 == 0 && y1 == 0) || (x2 == 0 && y2 == 0){
                    return .notALinearSystem
                }else{
                    if ((x1/x2) != (y1/y2)) || (y1 == 0 || y2 == 0 || x1 == 0 || x2 == 0) {
                        return .compatible
                        
                    } else {
                        if (x1/x2) == (n1/n2){
                            return .undetermined
                            
                        } else{
                            return .incompatible
                        }
                    }
                }
                
            }
}
 

