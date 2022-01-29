exam_results <- c(0.0, 4.9, 5.0, 5.1, 9.9, 10.0)

#RIGHT = FALSE => [x, y) (Eckig = nimmt er noch)
solution <- cut(exam_results, breaks = c(0, 5.0, 10.1),
    labels = c("fail", "pass"),
    right = FALSE)

library(testthat)
a <- expect_equal(solution, 
          as.factor(c("fail", "fail", "pass", "pass", "pass", "pass")))
b <- expect_equal(solution, 
                  as.factor(c("fail", "pass", "pass", "pass", "pass", "pass")))
c <- 10
expect_equal(c, 10)
