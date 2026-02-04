# Create a simple data frame manually
patients <- data.frame(
  PatientID = c("P001", "P002", "P003"),  # Character vector (anonymized IDs)
  Age = c(45, 52, 38),                     # Numeric vector (patient ages in years)
  BloodPressure = c(120.5, 145.0, 135.5),  # Numeric vector with decimals (systolic BP in mm Hg)
  Hypertension = c(FALSE, TRUE, FALSE)     # Logical vector (TRUE if BP > 140, else FALSE)
)

# View the data frame
print(patients)

str(patients) #details of the data frame structure

# Access a column by name (returns a vector)
patients$Age  # All ages

# Access by index (row, column; 1-based)
patients[2, 3]  # Row 2, Column 3: Blood Pressure of P002

# Access a row
patients[1, ]  # All data for P001

# Access multiple columns
patients[, c("PatientID", "Hypertension")]  # Subset columns


## Importing data from a CSV file

data_csv <- read.csv("dummy_data.csv")  
# data_csv <- read.csv("prshnttw.csv") 
data_csv #view the imported data
View(data_csv)
list.files() # List files in the current working directory
head(data_csv) # View the first few rows of the imported data frame
str(data_csv) 
summary(data_csv)

#importing the excel files
install.packages("readxl") # installs the package required
install.packages("openxlsx")  # For future writing needs
library(readxl) # starting the package

data_excel <- read_excel("cancer_patients.xlsx")
head(data_excel)
excel_sheets("cancer_patients.xlsx")
read_excel("cancer_patients.xlsx", sheet = 2)


class(data_csv)
dim(data_csv)
colnames(data_csv)

View(data_csv)

# error while importing the dataset due to incorrect path
wrong_data<- read.csv("prshnttw.csv")
list.files() #list files in current folder
data_csv <- read.csv("prshnttw.csv")
head(data_csv)
