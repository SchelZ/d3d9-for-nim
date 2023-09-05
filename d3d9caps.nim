{.push hint[XDeclaredButNotUsed]: off.}

import winim

type D3DVSHADERCAPS2_0* = object
    Caps: DWORD
    DynamicFlowControlDepth: int
    NumTemps: int
    StaticFlowControlDepth: int

const 
    D3DVS20CAPS_PREDICATION: int = (1 shl 0)
    D3DVS20_MAX_DYNAMICFLOWCONTROLDEPTH: int = 24
    D3DVS20_MIN_DYNAMICFLOWCONTROLDEPTH: int = 0
    D3DVS20_MAX_NUMTEMPS: int = 32
    D3DVS20_MIN_NUMTEMPS: int = 12
    D3DVS20_MAX_STATICFLOWCONTROLDEPTH: int = 4
    D3DVS20_MIN_STATICFLOWCONTROLDEPTH: int = 1

type D3DPSHADERCAPS2_0* = object
    Caps: DWORD
    DynamicFlowControlDepth: int
    NumTemps: int
    StaticFlowControlDepth: int
    NumInstructionSlots: int

const 
    D3DPS20CAPS_ARBITRARYSWIZZLE: int        = (1 shl 0)
    D3DPS20CAPS_GRADIENTINSTRUCTIONS: int    = (1 shl 1)
    D3DPS20CAPS_PREDICATION: int             = (1 shl 2)
    D3DPS20CAPS_NODEPENDENTREADLIMIT: int    = (1 shl 3)
    D3DPS20CAPS_NOTEXINSTRUCTIONLIMIT: int   = (1 shl 4)

    D3DPS20_MAX_DYNAMICFLOWCONTROLDEPTH: int = 24
    D3DPS20_MIN_DYNAMICFLOWCONTROLDEPTH: int = 0
    D3DPS20_MAX_NUMTEMPS: int = 32
    D3DPS20_MIN_NUMTEMPS: int = 12
    D3DPS20_MAX_STATICFLOWCONTROLDEPTH: int = 4
    D3DPS20_MIN_STATICFLOWCONTROLDEPTH: int = 0
    D3DPS20_MAX_NUMINSTRUCTIONSLOTS: int = 512
    D3DPS20_MIN_NUMINSTRUCTIONSLOTS: int = 96

    D3DMIN30SHADERINSTRUCTIONS: int = 512
    D3DMAX30SHADERINSTRUCTIONS: int = 32768


type D3DCAPS9* = object
    # DeviceType: D3DDEVTYPE 
    AdapterOrdinal: uint

    # Caps from DX7 Draw
    Caps: DWORD
    Caps2: DWORD   
    Caps3: DWORD
    PresentationIntervals: DWORD

    # Cursor Caps 
    CursorCaps: DWORD

    # 3D Device Caps 
    DevCaps: DWORD   

    PrimitiveMiscCaps: DWORD
    RasterCaps: DWORD
    ZCmpCaps: DWORD
    SrcBlendCaps: DWORD
    DestBlendCaps: DWORD
    AlphaCmpCaps: DWORD
    ShadeCaps: DWORD
    TextureCaps: DWORD
    TextureFilterCaps: DWORD          # D3DPTFILTERCAPS for IDirect3DTexture9's
    CubeTextureFilterCaps: DWORD      # D3DPTFILTERCAPS for IDirect3DCubeTexture9's
    VolumeTextureFilterCaps: DWORD     # D3DPTFILTERCAPS for IDirect3DVolumeTexture9's
    TextureAddressCaps: DWORD         # D3DPTADDRESSCAPS for IDirect3DTexture9's
    VolumeTextureAddressCaps: DWORD   # D3DPTADDRESSCAPS for IDirect3DVolumeTexture9's

    LineCaps: DWORD                   # D3DLINECAPS

    MaxTextureWidth: DWORD
    MaxTextureHeight: DWORD
    MaxVolumeExtent: DWORD

    MaxTextureRepeat: DWORD
    MaxTextureAspectRatio: DWORD
    MaxAnisotropy: DWORD
    MaxVertexW: float

    GuardBandLeft: float
    GuardBandTop: float
    GuardBandRight: float
    GuardBandBottom: float

    ExtentsAdjust: float
    StencilCaps: float

    FVFCaps: DWORD
    TextureOpCaps: DWORD
    MaxTextureBlendStages: DWORD
    MaxSimultaneousTextures: DWORD

    VertexProcessingCaps: DWORD
    MaxActiveLights: DWORD
    MaxUserClipPlanes: DWORD
    MaxVertexBlendMatrices: DWORD
    MaxVertexBlendMatrixIndex: DWORD

    MaxPointSize: float

    MaxPrimitiveCount: DWORD          # max number of primitives per DrawPrimitive call
    MaxVertexIndex: DWORD
    MaxStreams: DWORD
    MaxStreamStride: DWORD            # max stride for SetStreamSource

    VertexShaderVersion: DWORD
    MaxVertexShaderConst: DWORD       # number of vertex shader constant registers

    PixelShaderVersion: DWORD
    PixelShader1xMaxValue: float      # max value storable in registers of ps.1.x shaders

    # Here are the DX9 specific ones
    DevCaps2: DWORD

    MaxNpatchTessellationLevel: float
    Reserved5: DWORD

    MasterAdapterOrdinal: uint       # ordinal of master adaptor for adapter group
    AdapterOrdinalInGroup: uint      # ordinal inside the adapter group
    NumberOfAdaptersInGroup: uint    # number of adapters in this adapter group (only if master)
    DeclTypes: DWORD                  # Data types, supported in vertex declarations
    NumSimultaneousRTs: DWORD         # Will be at least 1
    StretchRectFilterCaps: DWORD      # Filter caps supported by StretchRect
    VS20Caps: D3DVSHADERCAPS2_0
    PS20Caps: D3DPSHADERCAPS2_0
    VertexTextureFilterCaps: DWORD              # D3DPTFILTERCAPS for IDirect3DTexture9's for texture, used in vertex shaders
    MaxVShaderInstructionsExecuted: DWORD       # maximum number of vertex shader instructions that can be executed
    MaxPShaderInstructionsExecuted: DWORD      # maximum number of pixel shader instructions that can be executed
    MaxVertexShader30InstructionSlots: DWORD 
    MaxPixelShader30InstructionSlots: DWORD


#
# BIT DEFINES FOR D3DCAPS9 DWORD MEMBERS
#

#
# Caps
#
const D3DCAPS_READ_SCANLINE: int32 = 0x00020000

#
# Caps2
#
const 
    D3DCAPS2_FULLSCREENGAMMA: int32 = 0x00020000
    D3DCAPS2_CANCALIBRATEGAMMA : int32 = 0x00100000
    D3DCAPS2_RESERVED: int32 =  0x02000000
    D3DCAPS2_CANMANAGERESOURCE: int32 = 0x10000000
    D3DCAPS2_DYNAMICTEXTURES: int32 = 0x20000000
    D3DCAPS2_CANAUTOGENMIPMAP: int32 = 0x40000000

#
# Caps3
#
const D3DCAPS3_RESERVED: int64 = 0x8000001f

# Indicates that the device can respect the ALPHABLENDENABLE render state
# when fullscreen while using the FLIP or DISCARD swap effect.
# COPY and COPYVSYNC swap effects work whether or not this flag is set.
const D3DCAPS3_ALPHA_FULLSCREEN_FLIP_OR_DISCARD: int32 = 0x00000020

# Indicates that the device can perform a gamma correction from 
# a windowed back buffer containing linear content to the sRGB desktop.
const 
    D3DCAPS3_LINEAR_TO_SRGB_PRESENTATION: int32 = 0x00000080
    D3DCAPS3_COPY_TO_VIDMEM: int32 = 0x00000100                     # Device can acclerate copies from sysmem to local vidmem 
    D3DCAPS3_COPY_TO_SYSTEMMEM: int32 = 0x00000200                  # Device can acclerate copies from local vidmem to sysmem 


#
# PresentationIntervals
#
const
    D3DPRESENT_INTERVAL_DEFAULT: int32 = 0x0000000
    D3DPRESENT_INTERVAL_ONE: int32 = 0x00000001
    D3DPRESENT_INTERVAL_TWO: int32 = 0x00000002
    D3DPRESENT_INTERVAL_THREE: int32 = 0x00000004
    D3DPRESENT_INTERVAL_FOUR: int32 = 0x00000008
    D3DPRESENT_INTERVAL_IMMEDIATE: int64 = 0x80000000

#
# CursorCaps
#
# Driver supports HW color cursor in at least hi-res modes(height >=400)
const D3DCURSORCAPS_COLOR: int32 = 0x00000001
# Driver supports HW cursor also in low-res modes(height < 400)
const D3DCURSORCAPS_LOWRES: int32 = 0x00000002

#
# DevCaps
#
const 
    D3DDEVCAPS_EXECUTESYSTEMMEMORY: int32 =     0x00000010         # Device can use execute buffers from system memory 
    D3DDEVCAPS_EXECUTEVIDEOMEMORY: int32 =      0x00000020       # Device can use execute buffers from video memory 
    D3DDEVCAPS_TLVERTEXSYSTEMMEMORY: int32 =    0x00000040      # Device can use TL buffers from system memory 
    D3DDEVCAPS_TLVERTEXVIDEOMEMORY: int32 =     0x00000080       # Device can use TL buffers from video memory 
    D3DDEVCAPS_TEXTURESYSTEMMEMORY: int32 =     0x00000100       # Device can texture from system memory 
    D3DDEVCAPS_TEXTUREVIDEOMEMORY: int32 =      0x00000200       # Device can texture from device memory 
    D3DDEVCAPS_DRAWPRIMTLVERTEX: int32 =        0x00000400       # Device can draw TLVERTEX primitives 
    D3DDEVCAPS_CANRENDERAFTERFLIP: int32 =      0x00000800       # Device can render without waiting for flip to complete 
    D3DDEVCAPS_TEXTURENONLOCALVIDMEM: int32 =   0x00001000      # Device can texture from nonlocal video memory 
    D3DDEVCAPS_DRAWPRIMITIVES2: int32 =         0x00002000       # Device can support DrawPrimitives2 
    D3DDEVCAPS_SEPARATETEXTUREMEMORIES: int32 = 0x00004000    # Device is texturing from separate memory pools 
    D3DDEVCAPS_DRAWPRIMITIVES2EX: int32 =       0x00008000       # Device can support Extended DrawPrimitives2 i.e. DX7 compliant driver
    D3DDEVCAPS_HWTRANSFORMANDLIGHT: int32 =     0x00010000       # Device can support transformation and lighting in hardware and DRAWPRIMITIVES2EX must be also 
    D3DDEVCAPS_CANBLTSYSTONONLOCAL: int32 =     0x00020000       # Device supports a Tex Blt from system memory to non-local vidmem 
    D3DDEVCAPS_HWRASTERIZATION: int32 =         0x00080000       # Device has HW acceleration for rasterization 
    D3DDEVCAPS_PUREDEVICE: int32 =              0x00100000       # Device supports D3DCREATE_PUREDEVICE 
    D3DDEVCAPS_QUINTICRTPATCHES: int32 =        0x00200000       # Device supports quintic Beziers and BSplines 
    D3DDEVCAPS_RTPATCHES: int32 =               0x00400000      # Device supports Rect and Tri patches 
    D3DDEVCAPS_RTPATCHHANDLEZERO: int32 =       0x00800000       # Indicates that RT Patches may be drawn efficiently using handle 0 
    D3DDEVCAPS_NPATCHES: int32 =                0x01000000       # Device supports N-Patches 

#
# PrimitiveMiscCaps
#
const 
    D3DPMISCCAPS_MASKZ: int32 =                       0x00000002
    D3DPMISCCAPS_CULLNONE: int32 =                    0x00000010
    D3DPMISCCAPS_CULLCW: int32 =                      0x00000020
    D3DPMISCCAPS_CULLCCW: int32 =                     0x00000040
    D3DPMISCCAPS_COLORWRITEENABLE: int32 =            0x00000080
    D3DPMISCCAPS_CLIPPLANESCALEDPOINTS: int32 =       0x00000100       # Device correctly clips scaled points to clip planes 
    D3DPMISCCAPS_CLIPTLVERTS: int32 =                 0x00000200       # device will clip post-transformed vertex primitives 
    D3DPMISCCAPS_TSSARGTEMP: int32 =                  0x00000400       # device supports D3DTA_TEMP for temporary register 
    D3DPMISCCAPS_BLENDOP: int32 =                     0x00000800       # device supports D3DRS_BLENDOP 
    D3DPMISCCAPS_NULLREFERENCE: int32 =               0x00001000       # Reference Device that doesnt render 
    D3DPMISCCAPS_INDEPENDENTWRITEMASKS: int32 =       0x00004000       # Device supports independent write masks for MET or MRT 
    D3DPMISCCAPS_PERSTAGECONSTANT: int32 =            0x00008000       # Device supports per-stage constants 
    D3DPMISCCAPS_FOGANDSPECULARALPHA: int32 =         0x00010000       # Device supports separate fog and specular alpha (many devices use the specular alpha channel to store fog factor) 
    D3DPMISCCAPS_SEPARATEALPHABLEND: int32 =          0x00020000       # Device supports separate blend settings for the alpha channel 
    D3DPMISCCAPS_MRTINDEPENDENTBITDEPTHS: int32 =     0x00040000       # Device supports different bit depths for MRT 
    D3DPMISCCAPS_MRTPOSTPIXELSHADERBLENDING: int32 =  0x00080000       # Device supports post-pixel shader operations for MRT 
    D3DPMISCCAPS_FOGVERTEXCLAMPED: int32 =            0x00100000       # Device clamps fog blend factor per vertex 

#
# LineCaps
#
const 
    D3DLINECAPS_TEXTURE: int32 =    0x00000001
    D3DLINECAPS_ZTEST: int32 =      0x00000002
    D3DLINECAPS_BLEND: int32 =      0x00000004
    D3DLINECAPS_ALPHACMP: int32 =   0x00000008
    D3DLINECAPS_FOG: int32 =        0x00000010
    D3DLINECAPS_ANTIALIAS: int32 =  0x00000020

#
# RasterCaps
#
const 
    D3DPRASTERCAPS_DITHER: int32 =                 0x00000001
    D3DPRASTERCAPS_ZTEST: int32 =                  0x00000010
    D3DPRASTERCAPS_FOGVERTEX: int32 =              0x00000080
    D3DPRASTERCAPS_FOGTABLE: int32 =               0x00000100
    D3DPRASTERCAPS_MIPMAPLODBIAS: int32 =          0x00002000
    D3DPRASTERCAPS_ZBUFFERLESSHSR: int32 =         0x00008000
    D3DPRASTERCAPS_FOGRANGE: int32 =               0x00010000
    D3DPRASTERCAPS_ANISOTROPY: int32 =             0x00020000
    D3DPRASTERCAPS_WBUFFER: int32 =                0x00040000
    D3DPRASTERCAPS_WFOG: int32 =                   0x00100000
    D3DPRASTERCAPS_ZFOG: int32 =                   0x00200000
    D3DPRASTERCAPS_COLORPERSPECTIVE: int32 =       0x00400000       # Device iterates colors perspective correct 
    D3DPRASTERCAPS_SCISSORTEST: int32 =            0x01000000
    D3DPRASTERCAPS_SLOPESCALEDEPTHBIAS: int32 =    0x02000000
    D3DPRASTERCAPS_DEPTHBIAS: int32 =              0x04000000
    D3DPRASTERCAPS_MULTISAMPLE_TOGGLE: int32 =     0x08000000

#
# ZCmpCaps, AlphaCmpCaps
#
const 
    D3DPCMPCAPS_NEVER: int32 =           0x00000001
    D3DPCMPCAPS_LESS: int32 =            0x00000002
    D3DPCMPCAPS_EQUAL: int32 =           0x00000004
    D3DPCMPCAPS_LESSEQUAL: int32 =       0x00000008
    D3DPCMPCAPS_GREATER: int32 =         0x00000010
    D3DPCMPCAPS_NOTEQUAL: int32 =        0x00000020
    D3DPCMPCAPS_GREATEREQUAL: int32 =    0x00000040
    D3DPCMPCAPS_ALWAYS: int32 =          0x00000080

#
# SourceBlendCaps, DestBlendCaps
#
const 
    D3DPBLENDCAPS_ZERO: int32 =              0x00000001
    D3DPBLENDCAPS_ONE: int32 =               0x00000002
    D3DPBLENDCAPS_SRCCOLOR: int32 =          0x00000004
    D3DPBLENDCAPS_INVSRCCOLOR: int32 =       0x00000008
    D3DPBLENDCAPS_SRCALPHA: int32 =          0x00000010
    D3DPBLENDCAPS_INVSRCALPHA: int32 =       0x00000020
    D3DPBLENDCAPS_DESTALPHA: int32 =         0x00000040
    D3DPBLENDCAPS_INVDESTALPHA: int32 =      0x00000080
    D3DPBLENDCAPS_DESTCOLOR: int32 =         0x00000100
    D3DPBLENDCAPS_INVDESTCOLOR: int32 =      0x00000200
    D3DPBLENDCAPS_SRCALPHASAT: int32 =       0x00000400
    D3DPBLENDCAPS_BOTHSRCALPHA: int32 =      0x00000800
    D3DPBLENDCAPS_BOTHINVSRCALPHA: int32 =   0x00001000
    D3DPBLENDCAPS_BLENDFACTOR: int32 =       0x00002000       # Supports both D3DBLEND_BLENDFACTOR and D3DBLEND_INVBLENDFACTOR 

#
# ShadeCaps
#
const 
    D3DPSHADECAPS_COLORGOURAUDRGB: int32 =       0x00000008
    D3DPSHADECAPS_SPECULARGOURAUDRGB: int32 =    0x00000200
    D3DPSHADECAPS_ALPHAGOURAUDBLEND: int32 =     0x00004000
    D3DPSHADECAPS_FOGGOURAUD: int32 =            0x00080000

#
# TextureCaps
#
const 
    D3DPTEXTURECAPS_PERSPECTIVE: int32 =              0x00000001         # Perspective-correct texturing is supported 
    D3DPTEXTURECAPS_POW2: int32 =                     0x00000002         # Power-of-2 texture dimensions are required - applies to non-Cube/Volume textures only. 
    D3DPTEXTURECAPS_ALPHA: int32 =                    0x00000004         # Alpha in texture pixels is supported 
    D3DPTEXTURECAPS_SQUAREONLY: int32 =               0x00000020        # Only square textures are supported 
    D3DPTEXTURECAPS_TEXREPEATNOTSCALEDBYSIZE: int32 = 0x00000040    # Texture indices are not scaled by the texture size prior to interpolation 
    D3DPTEXTURECAPS_ALPHAPALETTE: int32 =             0x00000080         # Device can draw alpha from texture palettes 
    # Device can use non-POW2 textures if:
#  1) D3DTEXTURE_ADDRESS is set to CLAMP for this texture's stage
#  2) D3DRS_WRAP(N) is zero for this texture's coordinates
#  3) mip mapping is not enabled (use magnification filter only)
const 
    D3DPTEXTURECAPS_NONPOW2CONDITIONAL: int32 =  0x00000100
    D3DPTEXTURECAPS_PROJECTED: int32 =           0x00000400   # Device can do D3DTTFF_PROJECTED 
    D3DPTEXTURECAPS_CUBEMAP: int32 =             0x00000800   # Device can do cubemap textures 
    D3DPTEXTURECAPS_VOLUMEMAP: int32 =           0x00002000   # Device can do volume textures 
    D3DPTEXTURECAPS_MIPMAP: int32 =              0x00004000   # Device can do mipmapped textures 
    D3DPTEXTURECAPS_MIPVOLUMEMAP: int32 =        0x00008000   # Device can do mipmapped volume textures 
    D3DPTEXTURECAPS_MIPCUBEMAP: int32 =          0x00010000   # Device can do mipmapped cube maps 
    D3DPTEXTURECAPS_CUBEMAP_POW2: int32 =        0x00020000   # Device requires that cubemaps be power-of-2 dimension 
    D3DPTEXTURECAPS_VOLUMEMAP_POW2: int32 =      0x00040000   # Device requires that volume maps be power-of-2 dimension 
    D3DPTEXTURECAPS_NOPROJECTEDBUMPENV: int32 =  0x00200000   # Device does not support projected bump env lookup operation in programmable and fixed function pixel shaders 

#
# TextureFilterCaps, StretchRectFilterCaps
#
const 
    D3DPTFILTERCAPS_MINFPOINT: int32 =           0x00000100   # Min Filter 
    D3DPTFILTERCAPS_MINFLINEAR: int32 =          0x00000200
    D3DPTFILTERCAPS_MINFANISOTROPIC: int32 =     0x00000400
    D3DPTFILTERCAPS_MINFPYRAMIDALQUAD: int32 =   0x00000800
    D3DPTFILTERCAPS_MINFGAUSSIANQUAD: int32 =    0x00001000
    D3DPTFILTERCAPS_MIPFPOINT: int32 =           0x00010000   # Mip Filter 
    D3DPTFILTERCAPS_MIPFLINEAR: int32 =          0x00020000
    D3DPTFILTERCAPS_MAGFPOINT: int32 =           0x01000000   # Mag Filter 
    D3DPTFILTERCAPS_MAGFLINEAR: int32 =          0x02000000
    D3DPTFILTERCAPS_MAGFANISOTROPIC: int32 =     0x04000000
    D3DPTFILTERCAPS_MAGFPYRAMIDALQUAD: int32 =   0x08000000
    D3DPTFILTERCAPS_MAGFGAUSSIANQUAD: int32 =    0x10000000

#
# TextureAddressCaps
#
const 
    D3DPTADDRESSCAPS_WRAP: int32 =           0x00000001
    D3DPTADDRESSCAPS_MIRROR: int32 =         0x00000002
    D3DPTADDRESSCAPS_CLAMP: int32 =          0x00000004
    D3DPTADDRESSCAPS_BORDER: int32 =         0x00000008
    D3DPTADDRESSCAPS_INDEPENDENTUV: int32 =  0x00000010
    D3DPTADDRESSCAPS_MIRRORONCE: int32 =     0x00000020

#
# StencilCaps
#
const 
    D3DSTENCILCAPS_KEEP: int32 =             0x00000001
    D3DSTENCILCAPS_ZERO: int32 =             0x00000002
    D3DSTENCILCAPS_REPLACE: int32 =          0x00000004
    D3DSTENCILCAPS_INCRSAT: int32 =          0x00000008
    D3DSTENCILCAPS_DECRSAT: int32 =          0x00000010
    D3DSTENCILCAPS_INVERT: int32 =           0x00000020
    D3DSTENCILCAPS_INCR: int32 =             0x00000040
    D3DSTENCILCAPS_DECR: int32 =             0x00000080
    D3DSTENCILCAPS_TWOSIDED: int32 =         0x00000100

#
# TextureOpCaps
#
const 
    D3DTEXOPCAPS_DISABLE: int32 =                    0x00000001
    D3DTEXOPCAPS_SELECTARG1: int32 =                 0x00000002
    D3DTEXOPCAPS_SELECTARG2: int32 =                 0x00000004
    D3DTEXOPCAPS_MODULATE: int32 =                   0x00000008
    D3DTEXOPCAPS_MODULATE2X: int32 =                 0x00000010
    D3DTEXOPCAPS_MODULATE4X: int32 =                 0x00000020
    D3DTEXOPCAPS_ADD: int32 =                        0x00000040
    D3DTEXOPCAPS_ADDSIGNED: int32 =                  0x00000080
    D3DTEXOPCAPS_ADDSIGNED2X: int32 =                0x00000100
    D3DTEXOPCAPS_SUBTRACT: int32 =                   0x00000200
    D3DTEXOPCAPS_ADDSMOOTH: int32 =                  0x00000400
    D3DTEXOPCAPS_BLENDDIFFUSEALPHA: int32 =          0x00000800
    D3DTEXOPCAPS_BLENDTEXTUREALPHA: int32 =          0x00001000
    D3DTEXOPCAPS_BLENDFACTORALPHA: int32 =           0x00002000
    D3DTEXOPCAPS_BLENDTEXTUREALPHAPM: int32 =        0x00004000
    D3DTEXOPCAPS_BLENDCURRENTALPHA: int32 =          0x00008000
    D3DTEXOPCAPS_PREMODULATE: int32 =                0x00010000
    D3DTEXOPCAPS_MODULATEALPHA_ADDCOLOR: int32 =     0x00020000
    D3DTEXOPCAPS_MODULATECOLOR_ADDALPHA: int32 =     0x00040000
    D3DTEXOPCAPS_MODULATEINVALPHA_ADDCOLOR: int32 =  0x00080000
    D3DTEXOPCAPS_MODULATEINVCOLOR_ADDALPHA: int32 =  0x00100000
    D3DTEXOPCAPS_BUMPENVMAP: int32 =                 0x00200000
    D3DTEXOPCAPS_BUMPENVMAPLUMINANCE: int32 =        0x00400000
    D3DTEXOPCAPS_DOTPRODUCT3: int32 =                0x00800000
    D3DTEXOPCAPS_MULTIPLYADD: int32 =                0x01000000
    D3DTEXOPCAPS_LERP: int32 =                       0x02000000

#
# FVFCaps
#
const 
    D3DFVFCAPS_TEXCOORDCOUNTMASK: int32 =    0x0000ffff     # mask for texture coordinate count field 
    D3DFVFCAPS_DONOTSTRIPELEMENTS: int32 =   0x00080000     # Device prefers that vertex elements not be stripped 
    D3DFVFCAPS_PSIZE: int32 =                0x00100000     # Device can receive point size 

#
# VertexProcessingCaps
#
const 
    D3DVTXPCAPS_TEXGEN: int32 =                    0x00000001     # device can do texgen 
    D3DVTXPCAPS_MATERIALSOURCE7: int32 =           0x00000002     # device can do DX7-level colormaterialsource ops 
    D3DVTXPCAPS_DIRECTIONALLIGHTS: int32 =         0x00000008     # device can do directional lights 
    D3DVTXPCAPS_POSITIONALLIGHTS: int32 =          0x00000010     # device can do positional lights (includes point and spot) 
    D3DVTXPCAPS_LOCALVIEWER: int32 =               0x00000020     # device can do local viewer 
    D3DVTXPCAPS_TWEENING: int32 =                  0x00000040     # device can do vertex tweening 
    D3DVTXPCAPS_TEXGEN_SPHEREMAP: int32 =          0x00000100     # device supports D3DTSS_TCI_SPHEREMAP 
    D3DVTXPCAPS_NO_TEXGEN_NONLOCALVIEWER: int32 =  0x00000200     # device does not support TexGen in non-local viewer mode 

#
# DevCaps2
#
const 
    D3DDEVCAPS2_STREAMOFFSET: int32 =                        0x00000001    # Device supports offsets in streams. Must be set by DX9 drivers 
    D3DDEVCAPS2_DMAPNPATCH: int32 =                          0x00000002    # Device supports displacement maps for N-Patches
    D3DDEVCAPS2_ADAPTIVETESSRTPATCH: int32 =                 0x00000004    # Device supports adaptive tesselation of RT-patches
    D3DDEVCAPS2_ADAPTIVETESSNPATCH: int32 =                  0x00000008    # Device supports adaptive tesselation of N-patches
    D3DDEVCAPS2_CAN_STRETCHRECT_FROM_TEXTURES: int32 =       0x00000010    # Device supports StretchRect calls with a texture as the source
    D3DDEVCAPS2_PRESAMPLEDDMAPNPATCH: int32 =                0x00000020    # Device supports presampled displacement maps for N-Patches 
    D3DDEVCAPS2_VERTEXELEMENTSCANSHARESTREAMOFFSET: int32 =  0x00000040    # Vertex elements in a vertex declaration can share the same stream offset 

#
# DeclTypes
#
const 
    D3DDTCAPS_UBYTE4: int32 =     0x00000001
    D3DDTCAPS_UBYTE4N: int32 =    0x00000002
    D3DDTCAPS_SHORT2N: int32 =    0x00000004
    D3DDTCAPS_SHORT4N: int32 =    0x00000008
    D3DDTCAPS_USHORT2N: int32 =   0x00000010
    D3DDTCAPS_USHORT4N: int32 =   0x00000020
    D3DDTCAPS_UDEC3: int32 =      0x00000040
    D3DDTCAPS_DEC3N: int32 =      0x00000080
    D3DDTCAPS_FLOAT16_2: int32 =  0x00000100
    D3DDTCAPS_FLOAT16_4: int32 =  0x00000200
