# 11.0-Visualizing-Chi-Square

What is a Mosaic Plot?
A mosaic plot provides a graphical representation of frequency data. In these plots the size of each block represents the number of cases. The color of each block represents whether the standardized residual is positive/negative or statistically significant. When interpreting your plot you will need to evaluate the width, height, and color of the blocks.

Let’s use an example from the text in which data were collected from 270 animals. The variables included animal (dog or cat), training (food as reward or affection as reward), and dance (yes or no). The question we are trying to answer is: Is there a relationship between training and whether or not the animal danced?

Interpreting a Mosaic Plot
Key features of a mosaic plot include its width, height, and color. The images shown below illustrate how to interpret differences in width and height in a mosaic plot.

![image](https://github.com/Xnrrrrrr/11.0-Visualizing-Chi-Square/assets/133546385/82f0f66d-ffd2-4838-ba1b-44a267d6153d)


Also note that the lines around the boxes are important.

Dashed lines show that the observed value is lower than the expected value
Solid lines indicate that the observed value is higher than the expected value
Whether or not these values are significantly higher or lower is indicated by the color. You should use the following guidelines to interpret the colors shown in a mosaic plot.

![image](https://github.com/Xnrrrrrr/11.0-Visualizing-Chi-Square/assets/133546385/14f8ceef-e93d-40e3-93b3-e5efc9bbd920)

Below is an example of a mosaic plot that includes two variables from the sample data set. These variables are Training (affection vs. food) and Dance (yes vs. no). The annotated graphic below provides a sample interpretation of this plot.

![image](https://github.com/Xnrrrrrr/11.0-Visualizing-Chi-Square/assets/133546385/631872ba-8fb4-4553-bff4-7dddcdc469cc)

Running a Mosaic Plot in R
Before you run your mosaic plot in R, you will first need to convert your data object into a contingency table. You can do that using the xtabs() function and the following command.

 

table = xtabs(~var1+var2, data = dataFrame)

 

In the syntax above substitute:

table with any name for your newly created object,
var1 (predictor/x-variable) and var2 (outcome/y-variable) with the names of the categorical variables you’d like to include in your model as the predictor and outcome, and
dataFrame with the name of the data object in your Global Environment that contains the data.
We can then use the mosaicplot() function to create a mosaic plot. The command takes the following form:

 

mosaicplot(table, shade = TRUE, main = “Title”)

 

In the syntax above substitute:

table with the name of the table object created in the previous step (if you used table in the previous step, you would use the word table here again this second step) and
Title with the name of the title you would like to use for your plot
Components of the Mosaic Plot Function

![image](https://github.com/Xnrrrrrr/11.0-Visualizing-Chi-Square/assets/133546385/9430724a-cfdd-4887-b072-c41aa82905b4)

To get some practice with this, try running and interpreting a Mosaic Plot using the following code.


![image](https://github.com/Xnrrrrrr/11.0-Visualizing-Chi-Square/assets/133546385/4134f59d-374c-453c-806a-9cd5521c8d9d)
