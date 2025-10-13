-- Easily input subscript and superscript characters
local set_digraph = vim.fn.digraph_set
-- Helper function to convert hex code to character
local function char(code)
  if type(code) == 'string' then
    code = tonumber(code, 16) -- treat "22A5" as hex
  end
  return vim.fn.nr2char(code)
end

-- Combining overline (bar above character)
set_digraph('o-', char(0x0305)) -- ̄ (Combining overline)

-- Subscripts (numbers)
set_digraph('0s', char(0x2080)) -- ₀
set_digraph('1s', char(0x2081)) -- ₁
set_digraph('2s', char(0x2082)) -- ₂
set_digraph('3s', char(0x2083)) -- ₃
set_digraph('4s', char(0x2084)) -- ₄
set_digraph('5s', char(0x2085)) -- ₅
set_digraph('6s', char(0x2086)) -- ₆
set_digraph('7s', char(0x2087)) -- ₇
set_digraph('8s', char(0x2088)) -- ₈
set_digraph('9s', char(0x2089)) -- ₉
set_digraph('.s', char(0x0323)) -- ̣ (combining dot below, attaches to previous)

-- Subscripts (letters)
set_digraph('as', char(0x2090)) -- ₐ
set_digraph('es', char(0x2091)) -- ₑ
set_digraph('hs', char(0x2095)) -- ₕ
set_digraph('is', char(0x1D62)) -- ᵢ
set_digraph('js', char(0x2C7C)) -- ⱼ
set_digraph('ks', char(0x2096)) -- ₖ
set_digraph('ls', char(0x2097)) -- ₗ
set_digraph('ms', char(0x2098)) -- ₘ
set_digraph('ns', char(0x2099)) -- ₙ
set_digraph('os', char(0x2092)) -- ₒ
set_digraph('ps', char(0x209A)) -- ₚ
set_digraph('rs', char(0x1D63)) -- ᵣ
set_digraph('ss', char(0x209B)) -- ₛ
set_digraph('ts', char(0x209C)) -- ₜ
set_digraph('us', char(0x1D64)) -- ᵤ
set_digraph('vs', char(0x1D65)) -- ᵥ
set_digraph('xs', char(0x2093)) -- ₓ
set_digraph('.S', char(0x02D9)) -- ˙ (dot above)
-- (No Unicode subscripts for b, c, d, f, g, q, y, z)

-- Superscripts (numbers)
set_digraph('0S', char(0x2070)) -- ⁰
set_digraph('1S', char(0x00B9)) -- ¹
set_digraph('2S', char(0x00B2)) -- ²
set_digraph('3S', char(0x00B3)) -- ³
set_digraph('4S', char(0x2074)) -- ⁴
set_digraph('5S', char(0x2075)) -- ⁵
set_digraph('6S', char(0x2076)) -- ⁶
set_digraph('7S', char(0x2077)) -- ⁷
set_digraph('8S', char(0x2078)) -- ⁸
set_digraph('9S', char(0x2079)) -- ⁹

-- Superscripts (letters, lowercase)
set_digraph('aS', char(0x1D43)) -- ᵃ
set_digraph('bS', char(0x1D47)) -- ᵇ
set_digraph('cS', char(0x1D9C)) -- ᶜ
set_digraph('dS', char(0x1D48)) -- ᵈ
set_digraph('eS', char(0x1D49)) -- ᵉ
set_digraph('fS', char(0x1DA0)) -- ᶠ
set_digraph('gS', char(0x1D4D)) -- ᵍ
set_digraph('hS', char(0x02B0)) -- ʰ
set_digraph('iS', char(0x2071)) -- ⁱ
set_digraph('jS', char(0x02B2)) -- ʲ
set_digraph('kS', char(0x1D4F)) -- ᵏ
set_digraph('lS', char(0x02E1)) -- ˡ
set_digraph('mS', char(0x1D50)) -- ᵐ
set_digraph('nS', char(0x207F)) -- ⁿ
set_digraph('oS', char(0x1D52)) -- ᵒ
set_digraph('pS', char(0x1D56)) -- ᵖ
set_digraph('qS', char(0x107A5)) -- 𐞥 (modifier q, rarely supported)
set_digraph('rS', char(0x02B3)) -- ʳ
set_digraph('sS', char(0x02E2)) -- ˢ
set_digraph('tS', char(0x1D57)) -- ᵗ
set_digraph('uS', char(0x1D58)) -- ᵘ
set_digraph('vS', char(0x1D5B)) -- ᵛ
set_digraph('wS', char(0x02B7)) -- ʷ
set_digraph('xS', char(0x02E3)) -- ˣ
set_digraph('yS', char(0x02B8)) -- ʸ
set_digraph('zS', char(0x1DBB)) -- ᶻ

-- Superscripts (letters, uppercase)
set_digraph('AS', char(0x1D2C)) -- ᴬ
set_digraph('BS', char(0x1D2E)) -- ᴮ
set_digraph('CS', char(0x1D9C)) -- ᶜ (no separate uppercase C)
set_digraph('DS', char(0x1D30)) -- ᴰ
set_digraph('ES', char(0x1D31)) -- ᴱ
set_digraph('FS', char(0x1DA0)) -- ᶠ (no distinct uppercase F)
set_digraph('GS', char(0x1D33)) -- ᴳ
set_digraph('HS', char(0x1D34)) -- ᴴ
set_digraph('IS', char(0x1D35)) -- ᴵ
set_digraph('JS', char(0x1D36)) -- ᴶ
set_digraph('KS', char(0x1D37)) -- ᴷ
set_digraph('LS', char(0x1D38)) -- ᴸ
set_digraph('MS', char(0x1D39)) -- ᴹ
set_digraph('NS', char(0x1D3A)) -- ᴺ
set_digraph('OS', char(0x1D3C)) -- ᴼ
set_digraph('PS', char(0x1D3E)) -- ᴾ
set_digraph('QS', char(0x107A5)) -- 𐞥 (rare uppercase Q modifier)
set_digraph('RS', char(0x1D3F)) -- ᴿ
set_digraph('TS', char(0x1D40)) -- ᵀ
set_digraph('US', char(0x1D41)) -- ᵁ
set_digraph('VS', char(0x2C7D)) -- ⱽ
set_digraph('WS', char(0x1D42)) -- ᵂ
-- (No good Unicode superscripts for Y, Z uppercase)

-- Square Root and Roots
set_digraph('rT', char(0x221A)) -- √
set_digraph('3r', char(0x221B)) -- ∛
set_digraph('4r', char(0x221C)) -- ∜

-- Basic Arithmetic Operators
set_digraph('+-', char(0x00B1)) -- ±
set_digraph('-+', char(0x2213)) -- ∓
set_digraph('*-', char(0x00D7)) -- ×
set_digraph('.-', char(0x00B7)) -- ·
set_digraph('-:', char(0x00F7)) -- ÷

-- Equality and Comparison
set_digraph('!=', char(0x2260)) -- ≠
set_digraph('==', char(0x2261)) -- ≡
set_digraph('=<', char(0x2264)) -- ≤
set_digraph('>=', char(0x2265)) -- ≥
set_digraph('<<', char(0x226A)) -- ≪
set_digraph('>>', char(0x226B)) -- ≫
set_digraph('~=', char(0x2245)) -- ≅
set_digraph('?=', char(0x225F)) -- ≟

-- Sets and Logic
set_digraph('EE', char(0x2208)) -- ∈
set_digraph('!E', char(0x2209)) -- ∉
set_digraph('(_', char(0x2229)) -- ∩
set_digraph(')_', char(0x222A)) -- ∪
set_digraph('AN', char(0x2227)) -- ∧
set_digraph('OR', char(0x2228)) -- ∨
set_digraph('CT', char(0x2201)) -- ∁
set_digraph('NO', char(0x220C)) -- ∌

-- Geometry
set_digraph('PP', char(0x22A5)) -- ⊥
set_digraph('||', char(0x2225)) -- ∥
set_digraph('0.', char(0x00B0)) -- °
set_digraph('^0', char(0x2070)) -- ⁰
set_digraph('^1', char(0x00B9)) -- ¹
set_digraph('^2', char(0x00B2)) -- ²
set_digraph('^3', char(0x00B3)) -- ³

-- Greek Letters (added more)
set_digraph('*a', char(0x03B1)) -- α
set_digraph('*b', char(0x03B2)) -- β
set_digraph('*g', char(0x03B3)) -- γ
set_digraph('*d', char(0x03B4)) -- δ
set_digraph('*e', char(0x03B5)) -- ε
set_digraph('*z', char(0x03B6)) -- ζ
set_digraph('*h', char(0x03B7)) -- η
set_digraph('*q', char(0x03B8)) -- θ
set_digraph('*i', char(0x03B9)) -- ι
set_digraph('*k', char(0x03BA)) -- κ
set_digraph('*l', char(0x03BB)) -- λ
set_digraph('*m', char(0x03BC)) -- μ
set_digraph('*n', char(0x03BD)) -- ν
set_digraph('*x', char(0x03BE)) -- ξ
set_digraph('*o', char(0x03BF)) -- ο
set_digraph('*p', char(0x03C0)) -- π
set_digraph('*r', char(0x03C1)) -- ρ
set_digraph('*s', char(0x03C3)) -- σ
set_digraph('*t', char(0x03C4)) -- τ
set_digraph('*u', char(0x03C5)) -- υ
set_digraph('*f', char(0x03C6)) -- φ
set_digraph('*c', char(0x03C7)) -- χ
set_digraph('*y', char(0x03C8)) -- ψ
set_digraph('*w', char(0x03C9)) -- ω

return true
