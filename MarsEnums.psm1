
#-----------------------------------------------------------------------------------
# Kind of Error Code
#-----------------------------------------------------------------------------------
enum ErrorCode {
    ERR_OK      = 0
    ERR_FAILURE

    # Action
    ERR_Action = 100
    ERR_ActionTryAgain
    ERR_ActionNotPermitted
    ERR_ActionPermissionDenied

    # Buffer
    ERR_Buffer = 1000
    ERR_BufferTooSmall
    ERR_BufferWithNullPointer
    ERR_BufferWithUnmatchedSize
    ERR_BufferOutOfBoundary
    ERR_BufferCorrupted
    ERR_BufferToResize
    ERR_BufferToAllocate
    ERR_BufferToFree
    ERR_BufferExecFormatError

    # Data
    ERR_Data = 2000
    ERR_DataTypeNotDefined
    ERR_DataElementNotFound
    ERR_DataTargetNotFound
    ERR_DataTargetExistAlready
    ERR_DataToProcess
    ERR_DataToCalculate
    ERR_DataToCompress
    ERR_DataToDecompress
    ERR_DataInvalid
    ERR_DataHeaderInvalid
    ERR_DataHeaderUnsupported
    ERR_DataTooLarge

    # File
    ERR_File = 3000
    ERR_FileIsEmpty
    ERR_FileIsNotEmpty
    ERR_FileNotFound
    ERR_FileToFailed
    ERR_FileToWrite
    ERR_FileToMove
    ERR_FileToCreate
    ERR_FileToDelete
    ERR_FileToSeek
    ERR_FileSizeTooLarge
    ERR_FileSizeIsZero
    ERR_FileSizeIsInvalid
    ERR_FileNameTooLong
    ERR_FileNameNotAllowed
    ERR_FileExecFormatError

    # Folder
    ERR_Folder = 4000
    ERR_FolderEmpty
    ERR_FolderNotEmpty
    ERR_FolderToFind
    ERR_FolderToRead
    ERR_FolderToWrite
    ERR_FolderToMove
    ERR_FolderToDelete

    # Function
    ERR_Function = 5000
    ERR_FunctionUnmatched
    ERR_FunctionUnimplemented
    ERR_FunctionEmptyParameter
    ERR_FunctionArgListTooLong
    ERR_FunctionNullParamter
    ERR_FunctionInvalidParameter
    ERR_FunctionBadAddress

    # Service
    ERR_Service = 6000
    ERR_ServiceToLoad
    ERR_ServiceToUnload
    ERR_ServiceToStart
    ERR_ServiceToStop
    ERR_ServiceToPause
    ERR_ServiceToDelete
    ERR_ServiceDeny

    # System
    ERR_System = 7000
    ERR_SystemPackageNotInstall
    ERR_SystemTooManyUser
    ERR_SystemOperationAlreadyInProgress
    ERR_SystemOperationNotInProgress
    ERR_SystemQuotaExceeded
    ERR_SystemNoMediumFound
    ERR_SystemWrongMediumFound

    # FileSystem
    ERR_FileSystem = 8000

    # Network
    ERR_Network = 9000

    # Command
    ERR_Command = 10000
    ERR_CommandUndefined
    ERR_CommandUnimplemented
    ERR_CommandNoConfigFile
    ERR_CommandToParse
    ERR_CommandToLoadConfigFile
    ERR_CommandToExec
    ERR_CommandBadAddress

    # Check
    ERR_Check = 11000
    ERR_CheckGotFailure
    ERR_CheckGotAssertion
    ERR_CheckGotError
    ERR_CheckNotIdentical

    # Framework of PowerShell
    ERR_Pester = 11000
    ERR_PesterToRunUnitTest
    ERR_PesterToRunIntegratedTest
    ERR_PesterToRunSystemTest

    # Framework of Python
    ERR_PyUnitTest

    # Framework of C++
    ERR_GTest

    # CustomizedTest
    ERR_CustomizedTest

    # Unknown
    ERR_Undefined  = 99998
    ERR_Unknown    = 99999
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
    None
    Release
    Debug
}

enum BinaryBit {
    None
    X64
    X32
}

enum BitArch {
    None
    X64
    X32
    Ia64
    Arm
}

enum PackItemType {
    None
    File
    Dir
}

enum OsName {
    None
    All
    Windows
    Linux
    MacOs
}

enum CmakeGenerator {
    None = 0
    Default
    #--------------------------------------------------
    # Supported with CMake
    #--------------------------------------------------
    Msvc2019            # Visual Studio 16 2019        = Generates Visual Studio 2019 project files. Use -A option to specify architecture.
    Msvc2017            # Visual Studio 15 2017 [arch] = Generates Visual Studio 2017 project files. Optional [arch] can be "Win64" or "ARM".
    Msvc2015            # Visual Studio 14 2015 [arch] = Generates Visual Studio 2015 project files. Optional [arch] can be "Win64" or "ARM".
    Msvc2013            # Visual Studio 12 2013 [arch] = Generates Visual Studio 2013 project files. Optional [arch] can be "Win64" or "ARM".
    Msvc2012            # Visual Studio 11 2012 [arch] = Generates Visual Studio 2012 project files. Optional [arch] can be "Win64" or "ARM".
    Msvc2010            # Visual Studio 10 2010 [arch] = Generates Visual Studio 2010 project files. Optional [arch] can be "Win64" or "IA64".
    Msvc2008            # Visual Studio 9 2008 [arch]  = Generates Visual Studio 2008 project files.
    BorlandMakefiles    # Borland Makefiles            = Generates Borland makefiles.
    NMakeMakefiles      # NMake Makefiles              = Generates NMake makefiles.
    NMakeMakefilesJom   # NMake Makefiles JOM          = Generates JOM makefiles.
    MSysMakefiles       # MSYS Makefiles               = Generates MSYS makefiles.
    MinGWMakefiles      # MinGW Makefiles              = Generates a make file for use with mingw32-make.
    UnixMakefiles       # Unix Makefiles               = Generates standard UNIX makefiles.
    GreenHillsMulti     # Green Hills MULTI            = Generates Green Hills MULTI files (experimental, work-in-progress).
    Ninja               # Ninja                        = Generates build.ninja files.
    NinjaMultiConfig    # Ninja Multi-Config           = Generates build-<Config>.ninja files.
    WatcomWMake         # Watcom WMake                 = Generates Watcom WMake makefiles.
    Xcode               # Apple's IDE ofr macOS.

    #--------------------------------------------------
    # Not defined in CMake
    #--------------------------------------------------
    MSBuild             # Microsoft Build Engine

    # Conan
    SunGcc
    Gcc
    Clang
    AppleClang
    Qcc
    Intel
}


#-----------------------------------------------------------------------------------
# Options in testing framework
#-----------------------------------------------------------------------------------
# The verbosity of output, options are None, Normal, Detailed and Diagnostic. (Normal, default: Normal)
 enum PesterLogEnum {
    Undefined = [ErrorCode]::ERR_Undefined
    None = 0
    Normal
    Detailed
    Diagnostic
 }



#-----------------------------------------------------------------------------------
# Options for DevOps.ps1
#-----------------------------------------------------------------------------------
 enum UsageEnum {
    Undefined = [ErrorCode]::ERR_Undefined
    None = 0
    Info
    Result
    Clear
    Config
    Lint
    LintFmt
    LintTidy
    Start
    Build
    Pack
    Test
    Audit
    All
}

enum LogType {
    Undefined = [ErrorCode]::ERR_Undefined
    None = 0
    Error
    Warning
    Information
}

enum ClangFormatStyle {
    None = 0
    LLVM
    Google
    Chromium
    Mozilla
    WebKit
    Microsoft
}

enum TestType {
    Unknown = 0
    UnitTest
    IntegratedTest
    SystemTest
}

enum ProjectType {
    Default = 0
    #
    # GUI Frameworks
    #
    Qt
    MFC
    WxWidgets
    #
    # Libraries
    #
    Library
    StaticLibrary
    DynamicLibrary
    #
    # System Drivers
    #
    WindowsDriver
    LinuxDriver
    #
    # Script languages
    #
    PowerShell
    Python
    #
    # Deprecated
    #
    Console
    WDM
    WDF
}

enum PackMethod {
    NestedDir
    FlatDir
    LastDir
}