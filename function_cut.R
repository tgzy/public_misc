exam_points <- c(0.0, 4.9, 5.0, 5.1, 9.9, 10.0)

#RIGHT = FALSE => [x, y) (Eckig = nimmt er noch)
output_is <- cut(exam_points, breaks = c(0, 5.0, 10.1),
    labels = c("fail", "pass"),
    right = FALSE)

output_expected <- c("fail", "fail", "pass", "pass", "pass", "pass")

exam_evaluated <- data.frame(exam_points, output_is, output_expected)
head(exam_evaluated)

library(testthat)

expect_equal(output_is, 
             as.factor(output_expected))
