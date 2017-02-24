module Haks.Types where

import BasicPrelude hiding (empty)
import Control.Monad.Reader
import Data.Sequence
import Data.Maybe
import Data.Text hiding (empty)

type Hakshara b = Reader (SyllableConfig b) (Seq Syllable)

data SyllableConfig b = SyllableConfig
  { tokenizer_hc     :: (Text -> Maybe b)
  , syllablinator_hc :: (Seq Syllable -> Glyph -> Seq Syllable)
  , glyphinate_hc    :: (Seq Glyph -> b -> Seq Glyph)
  }
data Glyph = Glyph
  { glyph_g      :: Text
  , strength_g   :: Strength
  , tone_g       :: Tone
  }

data Syllable = Syllable
  { syllable_a   :: Text
  , strength_a :: Strength
  , tone_a     :: Tone
  }

data Token 
  = Chinese
  | TIBETAN_ROMAN
  | TIBETAN_UCHEN
  | SANSKRIT_UNICODE
  | SANSKRIT_DEVA
data Strength = Strength
data Tone     = Tone

init_glyph :: Seq Glyph
init_glyph = empty

init_syllable :: Seq Syllable
init_syllable = empty
