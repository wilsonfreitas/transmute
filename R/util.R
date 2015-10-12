
take <- function(x, ...) {
	UseMethod('take', x)
}

take.list <- function(l, k) {
	sapply(l, function(x) {
		v <- x[[k]]
		if (is.null(v))
			NA
		else
			v
	})
}