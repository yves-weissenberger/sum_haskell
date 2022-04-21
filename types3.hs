module Main where

type FirstName = String 
type LastName = String

data Name = Name FirstName LastName
data Sex = Male | Female
data ViralDisease = COVID | SARS | MERS deriving Eq
data BacterialDisease = Campylobacter | Ecoli deriving Eq
data DiseaseType = Viral ViralDisease | Bacterial  BacterialDisease
data PatientData = Patient {
                            name :: Name,
                            height :: Int,
                            sex :: Sex,
                            disease :: DiseaseType
}

-- diseaseText (Viral COVID) = "COVID"
-- diseaseText (Viral MERS) = "MERS"
-- diseaseText (Viral SARS) = "SARS"

-- diseaseText (Bacterial Campylobacter) = "Campylobacter"
-- diseaseText (Bacterial Ecoli) = "Ecoli"

virusText :: ViralDisease -> String
virusText v = "Viral " ++ case v of
                                COVID -> "COVID"
                                SARS -> "SARS"
                                MERS -> "MERS"
baceterialText :: BacterialDisease -> [Char]
baceterialText v = case v of
                Campylobacter -> "Campylobacter"
                Ecoli -> "Ecoli"

diseaseText (Viral v) = virusText v
diseaseText (Bacterial b) = baceterialText b

            
main = do

   let p1 = Patient{
                name = Name "John" "Doe",
                height = 172,
                sex = Male,
                disease = Viral COVID
                   } 

   print (height p1)
   print (diseaseText (disease p1))
