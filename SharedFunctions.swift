//
//  SharedFunctions.swift
//  PerimeterAreaVolumeHelper
//
//  Created by Joyce Tao on 2021-03-18.
//

import Foundation

//MARK: Area
//Calculate the area of the rectangle
func areaOfRectangle(l: Double, w: Double) -> Double{
    return l * w
}
//Calculate the area of the parallelogram
func areaOfParallelogram(b: Double, h: Double) -> Double{
    return b * h
}
//Calculate the area of the triangle
func areaOfTriangle(b: Double, h: Double) -> Double{
    return b * h / 2
}
//Calculate the area of the trapezoid
func areaOfTrapezoid(a: Double, b: Double, h: Double) -> Double{
    return (a + b) * h / 2
}
//Calculate the area of the circle
func areaOfCircle(r: Double) -> Double{
    return Double.pi * pow(r,2)
}

//MARK: Volume
func volumeOfCylinder(r: Double, h: Double) -> Double{
    return Double.pi * r * r * h
}

func volumeOfSphere(r: Double) -> Double{
    return Double.pi * r * r * r * (4 / 3)
}

func volumeOfCone(r: Double, h: Double) -> Double{
    return (Double.pi * r * r * h) / 3
}

func volumeOfPyramid(b: Double, h: Double) -> Double{
    return (b * b * h) / 3
}

func volumeOfRectangularPrism(l: Double, w: Double, h: Double) -> Double{
    return l * w * h
}

func volumeOfTriangularPrism(l: Double, b: Double, h: Double) -> Double{
    return (b * l * h) / 2
}

//MARK: Surface Area
func surfaceAreaOfCylinder(r: Double, h: Double) -> Double{
    return (Double.pi * r * r * 2) + (Double.pi * r * h)
}

func surfaceAreaOfSphere(r: Double) -> Double{
    return Double.pi * r * r * 4
}

func surfaceAreaOfCone(r: Double, s: Double) -> Double{
    return (Double.pi * r * r) + (Double.pi * r * s)
}

func surfaceAreaOfPyramid(b: Double, s: Double) -> Double{
    return (b * b) + (2 * b * s)
}

func surfaceAreaOfRectangularPrism(l: Double, w: Double, h: Double) -> Double{
    return 2 * ((w * h) + (l * w) + (l * h))
}

func surfaceAreaOfTriangularPrism(l: Double, b: Double, h: Double, c:Double, a: Double) -> Double{
    return (b * l) + (a * h) + (b * h) + (c * h)
}
