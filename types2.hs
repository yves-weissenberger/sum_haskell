module Main where


data Personality = Personality String String String
data RhType = Positive | Negative
data ABOType = A | B | AB | O
data BloodType = BloodType2 ABOType RhType


type FirstName = String 
type LastName = String

data PatientData = PatientData FirstName LastName BloodType


showABO :: ABOType -> String
showABO v = case v of
                A -> "A"
                B -> "B"
                AB -> "AB"
                O -> "O"


showRH :: RhType -> String 
showRH t = case t of
            Positive -> "+"
            Negative -> "-"

showBloodType :: BloodType -> String 
showBloodType ( BloodType2 abt rht) = "You are: " ++ showABO abt ++ showRH rht


showPatientData :: PatientData -> String
showPatientData (PatientData fName lName  (BloodType2 ab rh) ) = fName ++ " " ++ lName ++ " has blood type: " ++ showABO ab ++ showRH rh
main = do

    -- Define a function that takes ABO type
    let x = A
    print (showABO x)

    let patientBlood = BloodType2 AB Negative
    print (showBloodType patientBlood)


    let p = PatientData "John" "Smith" (BloodType2 O Negative)
    print (showPatientData p)
