-- 1.

data Hora = H Int Int deriving (Show)

type Etapa = (Hora, Hora)

type Viagem = [Etapa]

minutesToHour :: Int -> Hora
minutesToHour minutes = H (minutes `div` 60) (mod minutes 60)

hourToMinutes :: Hora -> Int
hourToMinutes (H hour minutes) = hour * 60 + minutes

diffHours :: Hora -> Hora -> Int
diffHours hora1 hora2 = hourToMinutes hora2 - hourToMinutes hora1

isValidEtapa :: Etapa -> Bool
isValidEtapa (H startHour startMinute, H finishHour finishMinute)
  | startHour < finishHour = True
  | startHour <= finishHour && startMinute < finishMinute = True
  | otherwise = False

isValidViagem :: Viagem -> Bool
isValidViagem = foldr ((&&) . isValidEtapa) True

calcStartAndFinishViagem :: Viagem -> Etapa
calcStartAndFinishViagem etapas = (fst (head etapas), snd (last etapas))

calcViagemEffectiveDuration :: Viagem -> Hora
calcViagemEffectiveDuration viagem = minutesToHour (sum [diffHours (fst etapa) (snd etapa) | etapa <- viagem])

-- calcViagemEffectiveDuration viagem = (sum . calculaDiff) viagem where
--     calculaDiff = map (\etapa -> diffHours (fst etapa) (snd etapa))

-- calcViagemEffectiveDuration viagem =
--   minutesToHour $
--     sum [diffHours (fst etapa) (snd etapa) | etapa <- viagem]

-- calcViagemWaitingDuration :: Viagem -> Hora
-- calcViagemWaitingDuration viagem =

calcViagemTotalDuration :: Viagem -> Hora
calcViagemTotalDuration viagem = minutesToHour (diffHours arrivalTime departureTime)
  where
    (arrivalTime, departureTime) = calcStartAndFinishViagem viagem