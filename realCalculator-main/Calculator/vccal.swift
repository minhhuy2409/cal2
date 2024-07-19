import UIKit

class vccal: UIViewController {
    // Outlet for the label that displays the calculator's output
    @IBOutlet var formulabtns: [UIButton]!
    @IBOutlet var lbl0: UILabel!
    
    // Variables to store the current number, previous number, operation, and result
    var currentNumber: Double = 0
    var previousNumber: Double = 0
    var operation: String = ""
    var result: Double = 0

    // Called when the view controller is loaded into memory
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Button actions for numbers 1-9
    @IBAction func btn1(_ sender: UIButton) {
        // Update the label with the number 1
        lbl0.text = "1"
        // Set the current number to 1
        currentNumber = 1
    }

    @IBAction func btn2(_ sender: UIButton) {
        // Update the label with the number 2
        lbl0.text = "2"
        // Set the current number to 2
        currentNumber = 2
    }

    // ... (similar code for buttons 3-9)

    // Button action for number 0
    @IBAction func btn0(_ sender: UIButton) {
        // Update the label with the number 0
        lbl0.text = "0"
        // Set the current number to 0
        currentNumber = 0
    }

    // Button actions for operations (+, -, *, /)
    @IBAction func btnPlus(_ sender: UIButton) {
        // Set the operation to "+"
        operation = "+"
        // Store the current number in previousNumber
        previousNumber = currentNumber
        // Reset currentNumber to 0
        currentNumber = 0
        // Update the label with the operation symbol
        lbl0.text = "+"
    }

    @IBAction func btnMinus(_ sender: UIButton) {
        // Set the operation to "-"
        operation = "-"
        // Store the current number in previousNumber
        previousNumber = currentNumber
        // Reset currentNumber to 0
        currentNumber = 0
        // Update the label with the operation symbol
        lbl0.text = "-"
    }

    // ... (similar code for buttons *, /)

    // Button action for "="
    @IBAction func btnEqual(_ sender: UIButton) {
        // Perform the stored operation using previousNumber and currentNumber
        switch operation {
        case "+":
            result = previousNumber + currentNumber
        case "-":
            result = previousNumber - currentNumber
        case "*":
            result = previousNumber * currentNumber
        case "/":
            result = previousNumber / currentNumber
        default:
            break
        }
        // Update the label with the result
        lbl0.text = String(result)
    }

    // Button action for "%"
    @IBAction func btnPC(_ sender: UIButton) {
        // Calculate the square root of the current number
        result = sqrt(currentNumber)
        // Update the label with the result
        lbl0.text = String(result)
    }

    // Button action for "Clear"
    @IBAction func btnClear(_ sender: UIButton) {
        // Reset all variables to their initial state
        currentNumber = 0
        previousNumber = 0
        operation = ""
        result = 0
        // Update the label with "0"
        lbl0.text = "0"
    }

                        }
