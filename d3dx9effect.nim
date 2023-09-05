{.push hint[XDeclaredButNotUsed]: off.}

import winim/com

const 
    D3DXFX_DONOTSAVESTATE: int =         (1 shl 0)
    D3DXFX_DONOTSAVESHADERSTATE: int =   (1 shl 1)

#----------------------------------------------------------------------------
# D3DX_PARAMETER_SHARED
#   Indicates that the value of a parameter will be shared with all effects
#   which share the same namespace.  Changing the value in one effect will
#   change it in all.
#
# D3DX_PARAMETER_LITERAL
#   Indicates that the value of this parameter can be treated as literal.
#   Literal parameters can be marked when the effect is compiled, and their
#   cannot be changed after the effect is compiled.  Shared parameters cannot
#   be literal.
#----------------------------------------------------------------------------

const 
    D3DX_PARAMETER_SHARED: int =       (1 shl 0)
    D3DX_PARAMETER_LITERAL: int =      (1 shl 1)
    D3DX_PARAMETER_ANNOTATION: int =   (1 shl 2)

type D3DXEFFECT_DESC* = object
    Creator: LPCSTR     # Creator string
    Parameters: uint      # Number of parameters
    Techniques: uint      # Number of techniques
    Functions:  uint      # Number of function entrypoints

#----------------------------------------------------------------------------
# D3DXPARAMETER_DESC:
#----------------------------------------------------------------------------

type D3DXPARAMETER_DESC* = object
    Name: LPCSTR                      # Parameter name
    Semantic: LPCSTR                   # Parameter semantic
    # Class: D3DXPARAMETER_CLASS         # Class
    # Type: D3DXPARAMETER_TYPE            # Component type
    Rows: uint                         # Number of rows
    Columns: uint                      # Number of columns
    Elements: uint                     # Number of array elements
    Annotations: uint                  # Number of annotations
    StructMembers: uint                # Number of structure member sub-parameters
    Flags: DWORD                       # D3DX_PARAMETER_* flags
    Bytes: uint                        # Parameter size, in bytes


#----------------------------------------------------------------------------
# D3DXTECHNIQUE_DESC:
#----------------------------------------------------------------------------

type D3DXTECHNIQUE_DESC* = object
    Name: LPCSTR                        # Technique name
    Passes: uint                        # Number of passes
    Annotations: uint                   # Number of annotations

type D3DXPASS_DESC* = object
    Name: LPCSTR                        # Pass name
    Annotations: uint                   # Number of annotations

    VSVersion: DWORD                    # Vertex shader version (0 in case of NULL shader)
    PSVersion: DWORD                    # Pixel shader version (0 in case of NULL shader)

    VSSemanticsUsed: uint
    # D3DXSEMANTIC VSSemantics[MAXD3DDECLLENGTH];

    PSSemanticsUsed: uint
    # D3DXSEMANTIC PSSemantics[MAXD3DDECLLENGTH];

    PSSamplersUsed: uint
    PSSamplers: array[0..16, LPCSTR]


#----------------------------------------------------------------------------
# D3DXFUNCTION_DESC:
#----------------------------------------------------------------------------
type D3DXFUNCTION_DESC* = object
    Name: LPCSTR                  # Function name
    Annotations: uint                 # Number of annotations


#----------------------------------------------------------------------------
## ID3DXEffectPool:
#----------------------------------------------------------------------------

type 
    ID3DXEffectPool* = object
    LPD3DXEFFECTPOOL* = ref ptr ID3DXEffectPool     ## ?


## {53CA7768-C0D0-4664-8E79-D156E4F5B7E0}
const IID_ID3DXEffectPool = DEFINE_GUID("53CA7768-C0D0-4664-8E79-D156E4F5B7E0")