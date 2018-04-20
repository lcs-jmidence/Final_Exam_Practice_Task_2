//: # Exam Prep 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![subhumans](Subhumans.png "Subhumans")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
*/

// Create a canvas object to use
let canvas = Canvas(width: 400, height: 600)

// Begin your solution here...

// REMINDER: here's how to create an n-sided polygon with a fill

//background
canvas.fillColor = Color.init(hue: 45, saturation: 100, brightness: 100, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)


canvas.fillColor = Color(hue: 120, saturation: 80, brightness: 90, alpha: 100)
canvas.drawShapesWithBorders = false

for x in stride(from: -80, to: 440, by: 130) {
    var vertices : [Point] = []
    vertices.append(Point(x: x, y: 150))
    vertices.append(Point(x: x + 20, y: 260))
    vertices.append(Point(x: x + 130 + 10, y: 260))
    vertices.append(Point(x: x + 120, y: 150))
    canvas.drawCustomShape(with: vertices)
}



// REMINDER: here's how to create text in a certain location


canvas.drawText(message: "subhumans", size: 50, x: 10, y: 330, kerning: 0)
// HINT: You can use the kerning property to change the distance between letters
//       Try adjusting the value to positive or negative values. What happens?

/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
