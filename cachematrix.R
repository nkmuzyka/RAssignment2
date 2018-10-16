open.account <- function(total) {
	list(
		deposit = function(amount) {
			if(amount <= 0)
				stop("You have negative deposits!\n")
		total <<- total + amount
		cat(amount, "deposited. Your balance is", total, "\n\n")
		},
		withdraw = function(amount) {
			if(amount > total)
				stop("You are out of money, bro!\n")
		total <<- total - amount
		cat(amount, "withdrawn. Your balance is", total, "\n\n")
		},
		balance = function() {
			cat("Your balance is", total, "\n\n")
		}
	)
}