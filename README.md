# Alesis V Mini — Reason Remote Codec

Deprecated Reason Remote files (Lua codec + remote map) for using the Alesis V Mini with Reason. No longer in development; kept here as an archive.

The codec and map are my own work, written in 2017.

## Controls

- 25-key keyboard, pitch bend and modulation
- 4 knobs (CC 14–17, absolute)
- 4 pads (CC 20–23, with LED feedback)
- Sustain

## Supported devices

| Device | Knob 1 | Knob 2 | Knob 3 | Knob 4 | Pads 1–4 |
|--------|--------|--------|--------|--------|----------|
| Master Keyboard (all devices) | — | — | — | — | — |
| Combinator | Rotary 1 | Rotary 2 | Rotary 3 | Rotary 4 | Buttons 1–4 |
| Thor Polysonic Synthesizer | Filter 1 Freq | Filter 1 Res | Filter 1 Env Amount | Filter Env Decay | — |
| SubTractor Analog Synthesizer | Filter Freq | Filter Res | Filter Env Amount | Filter Env Decay | — |
| AudioRealism `se.audiorealism.reabl2` (Rack Extension) | Cutoff | Resonance | Envmod | Decay | — |
| AudioRealism ABL3 (`se.audiorealism.abl3`, Rack Extension) | Cutoff | Resonance | Envmod | Decay | — |

The Master Keyboard scope maps the keyboard, pitch bend and mod wheel for whichever device has keyboard focus.

## Install

1. Copy `V Mini.luacodec`, `V Mini.lua` and `V Mini.png` to the `Remote/Codecs/Lua Codecs/Alesis/` folder.
2. Copy `V Mini.remotemap` to the `Remote/Maps/Alesis/` folder.
3. Restart Reason, then add the surface manually in Preferences → Control Surfaces (Manufacturer: Alesis, Model: V Mini).

On macOS the Remote folder is `~/Library/Application Support/Propellerhead Software/Remote/`; on Windows it's `%APPDATA%\Propellerhead Software\Remote\`.
