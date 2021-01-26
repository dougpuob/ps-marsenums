
#-----------------------------------------------------------------------------------
# Kind of Error Code
#-----------------------------------------------------------------------------------
enum ErrorCode {
    EC_OK      = 0

    # Action
    EC_Action = 100
    EC_ActionTryAgain
    EC_ActionNotPermitted
    EC_ActionPermissionDenied

    # Buffer
    EC_Buffer = 1000
    EC_BufferTooSmall
    EC_BufferWithNullPointer
    EC_BufferWithUnmatchedSize
    EC_BufferOutOfBoundary
    EC_BufferCorrupted
    EC_BufferToResize
    EC_BufferToAllocate
    EC_BufferToFree
    EC_BufferExecFormatError

    # Data
    EC_Data = 2000
    EC_DataTypeNotDefined
    EC_DataElementNotFound
    EC_DataTargetNotFound
    EC_DataTargetExistAlready
    EC_DataToProcess
    EC_DataToCalculate
    EC_DataToCompress
    EC_DataToDecompress
    EC_DataInvalid
    EC_DataHeaderInvalid
    EC_DataHeaderUnsupported
    EC_DataTooLarge

    # File
    EC_File = 3000
    EC_FileIsEmpty
    EC_FileIsNotEmpty
    EC_FileNotFound
    EC_FileToFailed
    EC_FileToWrite
    EC_FileToMove
    EC_FileToCreate
    EC_FileToDelete
    EC_FileToSeek
    EC_FileSizeTooLarge
    EC_FileSizeIsZero
    EC_FileSizeIsInvalid
    EC_FileNameTooLong
    EC_FileNameNotAllowed
    EC_FileExecFormatError

    # Folder
    EC_Folder = 4000
    EC_FolderEmpty
    EC_FolderNotEmpty
    EC_FolderToFind
    EC_FolderToRead
    EC_FolderToWrite
    EC_FolderToMove
    EC_FolderToDelete

    # Function
    EC_Function = 5000
    EC_FunctionUnmatched
    EC_FunctionUnimplemented
    EC_FunctionEmptyParameter
    EC_FunctionArgListTooLong
    EC_FunctionNullParamter
    EC_FunctionInvalidParameter
    EC_FunctionBadAddress

    # Service
    EC_Service = 6000
    EC_ServiceToLoad
    EC_ServiceToUnload
    EC_ServiceToStart
    EC_ServiceToStop
    EC_ServiceToPause
    EC_ServiceToDelete
    EC_ServiceDeny

    # System
    EC_System = 7000
    EC_SystemPackageNotInstall
    EC_SystemTooManyUser
    EC_SystemOperationAlreadyInProgress
    EC_SystemOperationNotInProgress
    EC_SystemQuotaExceeded
    EC_SystemNoMediumFound
    EC_SystemWrongMediumFound


    # FileSystem
    EC_FileSystem = 8000

    # Network
    EC_Network = 9000

    # Command
    EC_Command = 10000
    EC_CommandUndefined
    EC_CommandUnimplemented
    EC_CommandNoConfigFile
    EC_CommandToParse
    EC_CommandToLoadConfigFile
    EC_CommandToExec
    EC_CommandBadAddress


    # Framework of PowerShell
    EC_Pester = 11000
    EC_PesterToRunUnitTest
    EC_PesterToRunIntegratedTest
    EC_PesterToRunSystemTest

    # Framework of Python
    EC_PyUnitTest

    # Framework of C++
    EC_GTest

    # Unknown
    EC_Undefined  = 99998
    EC_Unknown    = 99999
}

#-----------------------------------------------------------------------------------
# Kind of CPU
#-----------------------------------------------------------------------------------
enum CpuKinds {
    CK_None = 0
    CK_X86
    CK_X86_Intel
    CK_X86_AMD

    CK_ARM    =  50
    CK_RISCV  = 100

    #
    CK_Itanium
    CK_MIPS
    CK_PowerPC
    CK_SPARC
    CK_System360
    CK_System370
    CK_ZArchitecture
    CK_Z80
    CK_Alpha
    CK_VAX
    CK_AVR
    CK_AVR32
}


#-----------------------------------------------------------------------------------
#
#-----------------------------------------------------------------------------------
enum BuildType {
    Release
    Debug
}

enum BinaryBit {
    X64
    X32
}

enum CmakeGenerator {
    None = 0
    Msvc2019            # Visual Studio 16 2019        = Generates Visual Studio 2019 project files. Use -A option to specify architecture.
    Msvc2017            # Visual Studio 15 2017 [arch] = Generates Visual Studio 2017 project files. Optional [arch] can be "Win64" or "ARM".
    Msvc2015            # Visual Studio 14 2015 [arch] = Generates Visual Studio 2015 project files. Optional [arch] can be "Win64" or "ARM".
    Msvc2013            # Visual Studio 12 2013 [arch] = Generates Visual Studio 2013 project files. Optional [arch] can be "Win64" or "ARM".
    Msvc2012            # Visual Studio 11 2012 [arch] = Generates Visual Studio 2012 project files. Optional [arch] can be "Win64" or "ARM".
    Msvc2010            # Visual Studio 10 2010 [arch] = Generates Visual Studio 2010 project files. Optional [arch] can be "Win64" or "IA64".
    Msvc2008            # Visual Studio 9 2008 [arch]  = Generates Visual Studio 2008 project files.
    BorlandMakefiles    # Borland Makefiles            = Generates Borland makefiles.
    NMakeMakefiles      # NMake Makefiles              = Generates NMake makefiles.
    NMakeMakefilesJOM   # NMake Makefiles JOM          = Generates JOM makefiles.
    MSysMakefiles       # MSYS Makefiles               = Generates MSYS makefiles.
    MinGWMakefiles      # MinGW Makefiles              = Generates a make file for use with mingw32-make.
    UnixMakefiles       # Unix Makefiles               = Generates standard UNIX makefiles.
    GreenHillsMulti     # Green Hills MULTI            = Generates Green Hills MULTI files (experimental, work-in-progress).
    Ninja               # Ninja                        = Generates build.ninja files.
    NinjaMultiConfig    # Ninja Multi-Config           = Generates build-<Config>.ninja files.
    WatcomWMake         # Watcom WMake                 = Generates Watcom WMake makefiles.
    Xcode
}


#-----------------------------------------------------------------------------------
# Options in testing framework
#-----------------------------------------------------------------------------------
# The verbosity of output, options are None, Normal, Detailed and Diagnostic. (Normal, default: Normal)
 enum PesterLogEnum {
    Undefined = [ErrorCode]::EC_Undefined
    None = 0
    Normal
    Detailed
    Diagnostic
 }



#-----------------------------------------------------------------------------------
# Options for DevOps.ps1
#-----------------------------------------------------------------------------------
 enum UsageEnum {
    Undefined = [ErrorCode]::EC_Undefined
    None  = 0
    All
    Lint
    Build
    Test
    Pack
    Audit
    Clean
}

enum LogType {
    Undefined = [ErrorCode]::EC_Undefined
    None
    Error
    Warning
    Information
}

enum ClangFormatStyle {
    LLVM
    Google
    Chromium
    Mozilla
    WebKit
    Microsoft
}
