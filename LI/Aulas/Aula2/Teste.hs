{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE InstanceSigs #-}
module Teste where

{- | Our example sum type.

__Examples:__

@
empty = 'Empty'
full = 'CharCode' 42 \'a\'
@
-}
data CharWithInt
    = Empty -- ^ First constructor

      -- | Second constructor
    | CharCode
        Int -- ^ first field of 'CharCode'
        Char -- ^ second field of 'CharCode'
    deriving stock
        ( Show  {- ^ Derived to show.

                 @since 0.1.0.0
                -}
        , Eq  -- ^ Derived to check for equality
        )

{- | Type class to eject some fields from the data types.

@since 0.0.0.0
-}
class Eject a where
   -- | Get 'Int' if applicable.
   getInt
       :: a  -- ^ The whole data type.
       -> Maybe Int  -- ^ Result. 'Nothing' if no 'Int' in data type.

   -- | Get 'Char' if applicable.
   getChar :: a -> Maybe Char

-- | The instance for our sum type written manually
instance Eject CharWithInt where
    getInt :: CharWithInt -> Maybe Int
    getInt Empty          = Nothing
    getInt (CharCode i _) = Just i

    getChar :: CharWithInt -> Maybe Char
    getChar Empty          = Nothing
    getChar (CharCode _ c) = Just c
