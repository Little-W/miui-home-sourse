.class public Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$ExifTag;,
        Landroidx/exifinterface/media/ExifInterface$ExifAttribute;,
        Landroidx/exifinterface/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final JPEG_SIGNATURE:[B

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mAttributesOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/4 v0, 0x4

    .line 2147
    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x6

    .line 2148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v5

    .line 2147
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    .line 2149
    new-array v1, v0, [Ljava/lang/Integer;

    .line 2150
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v4

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v7

    const/4 v9, 0x5

    .line 2151
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v5

    .line 2149
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    .line 2790
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 2795
    new-array v1, v2, [I

    aput v0, v1, v4

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 2800
    new-array v1, v2, [I

    aput v6, v1, v4

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 2831
    new-array v1, v5, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 2843
    new-array v1, v3, [B

    fill-array-data v1, :array_2

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v1, 0xa

    .line 2845
    new-array v10, v1, [B

    fill-array-data v10, :array_3

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    const-string v11, ""

    const-string v12, "BYTE"

    const-string v13, "STRING"

    const-string v14, "USHORT"

    const-string v15, "ULONG"

    const-string v16, "URATIONAL"

    const-string v17, "SBYTE"

    const-string v18, "UNDEFINED"

    const-string v19, "SSHORT"

    const-string v20, "SLONG"

    const-string v21, "SRATIONAL"

    const-string v22, "SINGLE"

    const-string v23, "DOUBLE"

    .line 2890
    filled-new-array/range {v11 .. v23}, [Ljava/lang/String;

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v10, 0xe

    .line 2895
    new-array v11, v10, [I

    fill-array-data v11, :array_4

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 2900
    new-array v11, v6, [B

    fill-array-data v11, :array_5

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    const/16 v11, 0x29

    .line 3346
    new-array v11, v11, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "NewSubfileType"

    const/16 v14, 0xfe

    invoke-direct {v12, v13, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v11, v4

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "SubfileType"

    const/16 v14, 0xff

    invoke-direct {v12, v13, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v11, v2

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "ImageWidth"

    const/16 v14, 0x100

    invoke-direct {v12, v13, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v12, v11, v7

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "ImageLength"

    const/16 v14, 0x101

    invoke-direct {v12, v13, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v12, v11, v5

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v12, v13, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v11, v0

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "Compression"

    const/16 v14, 0x103

    invoke-direct {v12, v13, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v11, v9

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v12, v13, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v11, v3

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v12, v13, v14, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v11, v8

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "Make"

    const/16 v14, 0x10f

    invoke-direct {v12, v13, v14, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v12, v11, v6

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "Model"

    const/16 v14, 0x110

    invoke-direct {v12, v13, v14, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x9

    aput-object v12, v11, v13

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v12, v14, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v12, v11, v1

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Orientation"

    const/16 v15, 0x112

    invoke-direct {v12, v14, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xb

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    const/16 v14, 0x115

    invoke-direct {v12, v15, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xc

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "RowsPerStrip"

    const/16 v14, 0x116

    invoke-direct {v12, v15, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v14, 0xd

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "StripByteCounts"

    const/16 v15, 0x117

    invoke-direct {v12, v14, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v12, v11, v10

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v12, v14, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0xf

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v12, v14, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x10

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v12, v14, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x11

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v12, v14, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x12

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v12, v14, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x13

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Software"

    const/16 v15, 0x131

    invoke-direct {v12, v14, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x14

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v12, v14, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x15

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v12, v14, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x16

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v14, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v12, v14, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v14, 0x17

    aput-object v12, v11, v14

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    const/16 v10, 0x13f

    invoke-direct {v12, v15, v10, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v10, 0x18

    aput-object v12, v11, v10

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v10, v12, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x19

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v10, v12, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1a

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v10, v12, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1b

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v10, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1c

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v10, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1d

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v10, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1e

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v10, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1f

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Copyright"

    const v15, 0x8298

    invoke-direct {v10, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x20

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v10, v12, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x21

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v10, v12, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x22

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SensorTopBorder"

    invoke-direct {v10, v12, v0, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x23

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SensorLeftBorder"

    invoke-direct {v10, v12, v9, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x24

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SensorBottomBorder"

    invoke-direct {v10, v12, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x25

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SensorRightBorder"

    invoke-direct {v10, v12, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x26

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ISO"

    invoke-direct {v10, v12, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x27

    aput-object v10, v11, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v10, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x28

    aput-object v10, v11, v12

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v10, 0x3b

    .line 3395
    new-array v10, v10, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ExposureTime"

    const v15, 0x829a

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v4

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "FNumber"

    const v15, 0x829d

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v2

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v7

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v5

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PhotographicSensitivity"

    const v15, 0x8827

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v0

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "OECF"

    const v15, 0x8828

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v9

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v3

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v8

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v6

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v13

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v1

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ShutterSpeedValue"

    const v15, 0x9201

    invoke-direct {v11, v12, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xb

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xc

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v11, v12, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xd

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v11, v12, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xe

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "MaxApertureValue"

    const v15, 0x9205

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xf

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubjectDistance"

    const v15, 0x9206

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x10

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "MeteringMode"

    const v15, 0x9207

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x11

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "LightSource"

    const v15, 0x9208

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x12

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Flash"

    const v15, 0x9209

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x13

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "FocalLength"

    const v15, 0x920a

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x14

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubjectArea"

    const v15, 0x9214

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x15

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "MakerNote"

    const v15, 0x927c

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x16

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "UserComment"

    const v15, 0x9286

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v14

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubSecTime"

    const v15, 0x9290

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x18

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubSecTimeOriginal"

    const v15, 0x9291

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x19

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubSecTimeDigitized"

    const v15, 0x9292

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1a

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "FlashpixVersion"

    const v15, 0xa000

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1b

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ColorSpace"

    const v15, 0xa001

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1c

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PixelXDimension"

    const v15, 0xa002

    invoke-direct {v11, v12, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v12, 0x1d

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PixelYDimension"

    const v15, 0xa003

    invoke-direct {v11, v12, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v12, 0x1e

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "RelatedSoundFile"

    const v15, 0xa004

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1f

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "InteroperabilityIFDPointer"

    const v15, 0xa005

    invoke-direct {v11, v12, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x20

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "FlashEnergy"

    const v15, 0xa20b

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x21

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SpatialFrequencyResponse"

    const v15, 0xa20c

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x22

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "FocalPlaneXResolution"

    const v15, 0xa20e

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x23

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "FocalPlaneYResolution"

    const v15, 0xa20f

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x24

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "FocalPlaneResolutionUnit"

    const v15, 0xa210

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x25

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubjectLocation"

    const v15, 0xa214

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x26

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ExposureIndex"

    const v15, 0xa215

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x27

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SensingMethod"

    const v15, 0xa217

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x28

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "FileSource"

    const v15, 0xa300

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x29

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SceneType"

    const v15, 0xa301

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x2a

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "CFAPattern"

    const v15, 0xa302

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x2b

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "CustomRendered"

    const v15, 0xa401

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x2c

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ExposureMode"

    const v15, 0xa402

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x2d

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "WhiteBalance"

    const v15, 0xa403

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x2e

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DigitalZoomRatio"

    const v15, 0xa404

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x2f

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "FocalLengthIn35mmFilm"

    const v15, 0xa405

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x30

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SceneCaptureType"

    const v15, 0xa406

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x31

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GainControl"

    const v15, 0xa407

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x32

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Contrast"

    const v15, 0xa408

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x33

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Saturation"

    const v15, 0xa409

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x34

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Sharpness"

    const v15, 0xa40a

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x35

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DeviceSettingDescription"

    const v15, 0xa40b

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x36

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubjectDistanceRange"

    const v15, 0xa40c

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x37

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ImageUniqueID"

    const v15, 0xa420

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x38

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DNGVersion"

    const v15, 0xc612

    invoke-direct {v11, v12, v15, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x39

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DefaultCropSize"

    const v15, 0xc620

    invoke-direct {v11, v12, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v12, 0x3a

    aput-object v11, v10, v12

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v10, 0x1f

    .line 3458
    new-array v10, v10, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSVersionID"

    invoke-direct {v11, v12, v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v4

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSLatitudeRef"

    invoke-direct {v11, v12, v2, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v2

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSLatitude"

    invoke-direct {v11, v12, v7, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v7

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSLongitudeRef"

    invoke-direct {v11, v12, v5, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v5

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSLongitude"

    invoke-direct {v11, v12, v0, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v0

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSAltitudeRef"

    invoke-direct {v11, v12, v9, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v9

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSAltitude"

    invoke-direct {v11, v12, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v3

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSTimeStamp"

    invoke-direct {v11, v12, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v8

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSSatellites"

    invoke-direct {v11, v12, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v6

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSStatus"

    invoke-direct {v11, v12, v13, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v13

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSMeasureMode"

    invoke-direct {v11, v12, v1, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v1

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDOP"

    const/16 v15, 0xb

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v15

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSSpeedRef"

    const/16 v15, 0xc

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v15

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSSpeed"

    const/16 v15, 0xd

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xd

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSTrackRef"

    const/16 v15, 0xe

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v15

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSTrack"

    const/16 v15, 0xf

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xf

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSImgDirectionRef"

    const/16 v15, 0x10

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x10

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSImgDirection"

    const/16 v15, 0x11

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x11

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSMapDatum"

    const/16 v15, 0x12

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x12

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLatitudeRef"

    const/16 v15, 0x13

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x13

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLatitude"

    const/16 v15, 0x14

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x14

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLongitudeRef"

    const/16 v15, 0x15

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x15

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestLongitude"

    const/16 v15, 0x16

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x16

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestBearingRef"

    invoke-direct {v11, v12, v14, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v14

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestBearing"

    const/16 v15, 0x18

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x18

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestDistanceRef"

    const/16 v15, 0x19

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x19

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDestDistance"

    const/16 v15, 0x1a

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1a

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSProcessingMethod"

    const/16 v15, 0x1b

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1b

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSAreaInformation"

    const/16 v15, 0x1c

    invoke-direct {v11, v12, v15, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1c

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDateStamp"

    const/16 v15, 0x1d

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1d

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSDifferential"

    const/16 v15, 0x1e

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1e

    aput-object v11, v10, v12

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3492
    new-array v10, v2, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "InteroperabilityIndex"

    invoke-direct {v11, v12, v2, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v4

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v10, 0x25

    .line 3496
    new-array v10, v10, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "NewSubfileType"

    const/16 v15, 0xfe

    invoke-direct {v11, v12, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v4

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v11, v12, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v2

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ThumbnailImageWidth"

    const/16 v15, 0x100

    invoke-direct {v11, v12, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v11, v10, v7

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ThumbnailImageLength"

    const/16 v15, 0x101

    invoke-direct {v11, v12, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v11, v10, v5

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v0

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Compression"

    const/16 v15, 0x103

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v9

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v3

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v8

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Make"

    const/16 v15, 0x10f

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v6

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Model"

    const/16 v15, 0x110

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v13

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v11, v12, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v11, v10, v1

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Orientation"

    const/16 v15, 0x112

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xb

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xc

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "RowsPerStrip"

    const/16 v15, 0x116

    invoke-direct {v11, v12, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v12, 0xd

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "StripByteCounts"

    const/16 v15, 0x117

    invoke-direct {v11, v12, v15, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v12, 0xe

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0xf

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x10

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x11

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x12

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v11, v12, v15, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x13

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Software"

    const/16 v15, 0x131

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x14

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x15

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v11, v12, v15, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x16

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v11, v12, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v14

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PrimaryChromaticities"

    const/16 v14, 0x13f

    invoke-direct {v11, v12, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x18

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "SubIFDPointer"

    const/16 v14, 0x14a

    invoke-direct {v11, v12, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x19

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormat"

    const/16 v14, 0x201

    invoke-direct {v11, v12, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1a

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "JPEGInterchangeFormatLength"

    const/16 v14, 0x202

    invoke-direct {v11, v12, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1b

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrCoefficients"

    const/16 v14, 0x211

    invoke-direct {v11, v12, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1c

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrSubSampling"

    const/16 v14, 0x212

    invoke-direct {v11, v12, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1d

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "YCbCrPositioning"

    const/16 v14, 0x213

    invoke-direct {v11, v12, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1e

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ReferenceBlackWhite"

    const/16 v14, 0x214

    invoke-direct {v11, v12, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x1f

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Copyright"

    const v14, 0x8298

    invoke-direct {v11, v12, v14, v7}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x20

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ExifIFDPointer"

    const v14, 0x8769

    invoke-direct {v11, v12, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x21

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "GPSInfoIFDPointer"

    const v14, 0x8825

    invoke-direct {v11, v12, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x22

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v11, v12, v14, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x23

    aput-object v11, v10, v12

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DefaultCropSize"

    const v14, 0xc620

    invoke-direct {v11, v12, v14, v5, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v12, 0x24

    aput-object v11, v10, v12

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3539
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "StripOffsets"

    const/16 v12, 0x111

    invoke-direct {v10, v11, v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3543
    new-array v10, v5, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ThumbnailImage"

    const/16 v14, 0x100

    invoke-direct {v11, v12, v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v4

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "CameraSettingsIFDPointer"

    const/16 v14, 0x2020

    invoke-direct {v11, v12, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v2

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ImageProcessingIFDPointer"

    const/16 v14, 0x2040

    invoke-direct {v11, v12, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v7

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3548
    new-array v10, v7, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PreviewImageStart"

    const/16 v14, 0x101

    invoke-direct {v11, v12, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v4

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PreviewImageLength"

    const/16 v14, 0x102

    invoke-direct {v11, v12, v14, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v2

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3552
    new-array v10, v2, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "AspectFrame"

    const/16 v14, 0x1113

    invoke-direct {v11, v12, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v4

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3556
    new-array v10, v2, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ColorSpace"

    const/16 v14, 0x37

    invoke-direct {v11, v12, v14, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v11, v10, v4

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3584
    new-array v1, v1, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v4

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v11, v1, v2

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v11, v1, v7

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v11, v1, v5

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v11, v1, v0

    aput-object v10, v1, v9

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v3

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v8

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v6

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v13

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3590
    new-array v1, v3, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SubIFDPointer"

    const/16 v11, 0x14a

    invoke-direct {v3, v10, v11, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v4

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ExifIFDPointer"

    const v11, 0x8769

    invoke-direct {v3, v10, v11, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v2

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "GPSInfoIFDPointer"

    const v11, 0x8825

    invoke-direct {v3, v10, v11, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "InteroperabilityIFDPointer"

    const v11, 0xa005

    invoke-direct {v3, v10, v11, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v5

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "CameraSettingsIFDPointer"

    const/16 v11, 0x2020

    invoke-direct {v3, v10, v11, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v0

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ImageProcessingIFDPointer"

    const/16 v11, 0x2040

    invoke-direct {v3, v10, v11, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v9

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3600
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v1, v3, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3602
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "JPEGInterchangeFormatLength"

    const/16 v10, 0x202

    invoke-direct {v1, v3, v10, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3607
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v3, v1

    new-array v3, v3, [Ljava/util/HashMap;

    sput-object v3, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3611
    array-length v1, v1

    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3613
    new-instance v1, Ljava/util/HashSet;

    const-string v3, "FNumber"

    const-string v10, "DigitalZoomRatio"

    const-string v11, "ExposureTime"

    const-string v12, "SubjectDistance"

    const-string v13, "GPSTimeStamp"

    filled-new-array {v3, v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 3618
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string v1, "US-ASCII"

    .line 3625
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 3627
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 3666
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 3667
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move v1, v4

    .line 3670
    :goto_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 3671
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    aput-object v10, v3, v1

    .line 3672
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    aput-object v10, v3, v1

    .line 3673
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v3, v3, v1

    array-length v10, v3

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v3, v11

    .line 3674
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v13, v13, v1

    iget v14, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3675
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v13, v13, v1

    iget-object v14, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3680
    :cond_1
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v3, v3, v4

    iget v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3681
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v3, v3, v2

    iget v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3682
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v2, v2, v7

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3683
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v2, v2, v5

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3684
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v0, v2, v0

    iget v0, v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3685
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v1, v1, v9

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 3709
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 3712
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_4
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_5
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3691
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3693
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 3694
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3722
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 3723
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 3725
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3726
    :try_start_1
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3728
    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 3719
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 5257
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 5258
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5259
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "DateTime"

    .line 5260
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5259
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 5264
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    .line 5265
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v4, "ImageWidth"

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5266
    invoke-static {v2, v3, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 5265
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 5268
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5269
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v4, "ImageLength"

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5270
    invoke-static {v2, v3, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 5269
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 5272
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 5273
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "Orientation"

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5274
    invoke-static {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 5273
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 5276
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 5277
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "LightSource"

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5278
    invoke-static {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 5277
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 6478
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6480
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private static convertToLongArray(Ljava/lang/Object;)[J
    .locals 4

    .line 6506
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 6507
    check-cast p0, [I

    .line 6508
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 6509
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 6510
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 6513
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 6514
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2

    const-string v0, "ISOSpeedRatings"

    .line 3759
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "PhotographicSensitivity"

    :cond_0
    const/4 v0, 0x0

    .line 3768
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3769
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4798
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    int-to-long v0, p2

    .line 4801
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4805
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 4809
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v3

    const/16 v4, -0x28

    if-ne v3, v4, :cond_10

    add-int/2addr p2, v2

    .line 4814
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_f

    add-int/2addr p2, v2

    .line 4819
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    add-int/2addr p2, v2

    const/16 v3, -0x27

    if-eq v0, v3, :cond_e

    const/16 v3, -0x26

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    .line 4830
    :cond_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 p2, p2, 0x2

    if-ltz v3, :cond_d

    const/16 v4, -0x1f

    const/4 v5, 0x0

    if-eq v0, v4, :cond_5

    const/4 v4, -0x2

    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_1

    .line 4904
    :pswitch_0
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4907
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    const-string v4, "ImageLength"

    .line 4908
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4907
    invoke-static {v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4909
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    const-string v4, "ImageWidth"

    .line 4910
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4909
    invoke-static {v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x5

    goto :goto_1

    .line 4905
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid SOFx"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4879
    :cond_2
    new-array v0, v3, [B

    .line 4880
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v3, :cond_4

    const-string v3, "UserComment"

    .line 4884
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 4885
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    const-string v4, "UserComment"

    new-instance v6, Ljava/lang/String;

    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v3, v5

    goto :goto_1

    .line 4881
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v0, 0x6

    if-ge v3, v0, :cond_6

    goto :goto_1

    .line 4848
    :cond_6
    new-array v4, v0, [B

    .line 4849
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_c

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v3, v3, -0x6

    .line 4854
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    if-lez v3, :cond_b

    .line 4865
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifOffset:I

    .line 4867
    new-array v0, v3, [B

    .line 4868
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v3, :cond_a

    add-int/2addr p2, v3

    .line 4874
    invoke-direct {p0, v0, p3}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    move v3, v5

    :goto_1
    if-ltz v3, :cond_9

    .line 4922
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    if-ne v0, v3, :cond_8

    add-int/2addr p2, v3

    goto/16 :goto_0

    .line 4923
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid JPEG segment"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4920
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4869
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4859
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4850
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4837
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4928
    :cond_e
    :goto_2
    iget-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    .line 4816
    :cond_f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid marker:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4810
    :cond_10
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid marker: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4806
    :cond_11
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid marker: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p3, v0, 0xff

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 4696
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 4697
    new-array v0, v0, [B

    .line 4698
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 4699
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 4700
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->isJpegFormat([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 4702
    :cond_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRafFormat([B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    return p1

    .line 4704
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isOrfFormat([B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    return p1

    .line 4706
    :cond_2
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRw2Format([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0xa

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5043
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5048
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 5049
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 5052
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5054
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5058
    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length p1, p1

    new-array p1, p1, [B

    .line 5059
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v2, 0x0

    .line 5060
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5061
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v2, v2

    new-array v2, v2, [B

    .line 5062
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5064
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    .line 5065
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 5066
    :cond_0
    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    .line 5067
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 5071
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5074
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 5075
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5076
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 5077
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 5080
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5082
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5089
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 5090
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 5092
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 5093
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 5098
    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-le v2, v4, :cond_6

    const/4 v2, 0x3

    aget v4, p1, v2

    aget v5, p1, v0

    if-le v4, v5, :cond_6

    .line 5100
    aget v1, p1, v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 5101
    aget v2, p1, v2

    aget p1, p1, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    add-int/2addr v1, v2

    sub-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 5108
    :cond_4
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5109
    invoke-static {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 5110
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5111
    invoke-static {v2, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5113
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5114
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_1
    const-string v0, "ExifInterface"

    .line 5094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid aspect frame values. frame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5095
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5094
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method private getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x54

    .line 4984
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v0, 0x4

    .line 4985
    new-array v1, v0, [B

    .line 4986
    new-array v2, v0, [B

    .line 4987
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4989
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 4990
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4991
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 4992
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    .line 4995
    invoke-direct {p0, p1, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    int-to-long v0, v1

    .line 4998
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5001
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5002
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5010
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 5011
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 5012
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget v5, v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    if-ne v3, v5, :cond_0

    .line 5013
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 5014
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 5015
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5016
    invoke-static {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5017
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5018
    invoke-static {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 5019
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5020
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "ImageWidth"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5026
    :cond_0
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4933
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    .line 4936
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4939
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    .line 4940
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    .line 4941
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4944
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->validateImages(Ljava/io/InputStream;)V

    .line 4946
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 4949
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 4950
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 4953
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4955
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-wide/16 v2, 0x6

    .line 4958
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/16 p1, 0x9

    .line 4961
    invoke-direct {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4964
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 4965
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 4967
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v1, v0

    const-string v1, "ColorSpace"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5125
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5128
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    .line 5129
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    .line 5131
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 5135
    :cond_0
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    const-string v0, "ISO"

    .line 5136
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5137
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    .line 5138
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 5141
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "PhotographicSensitivity"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 5609
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 5611
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 5614
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 5615
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 5618
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5619
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 5624
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 5621
    :cond_1
    :goto_0
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifOffset:I

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    if-lez v0, :cond_3

    if-lez p2, :cond_3

    const/4 v1, 0x1

    .line 5631
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 5632
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 5633
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 5634
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_3

    .line 5636
    new-array p2, p2, [B

    int-to-long v0, v0

    .line 5637
    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5638
    invoke-virtual {p1, p2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5639
    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "StripOffsets"

    .line 5649
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v1, "StripByteCounts"

    .line 5651
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 5654
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5655
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v0

    .line 5656
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5657
    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/exifinterface/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object p2

    if-nez v0, :cond_0

    const-string p1, "ExifInterface"

    const-string p2, "stripOffsets should not be null."

    .line 5660
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "ExifInterface"

    const-string p2, "stripByteCounts should not be null."

    .line 5664
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-wide/16 v1, 0x0

    .line 5669
    array-length v3, p2

    const/4 v4, 0x0

    move-wide v5, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_2

    aget-wide v7, p2, v1

    add-long/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    long-to-int v1, v5

    .line 5674
    new-array v1, v1, [B

    move v2, v4

    move v3, v2

    move v5, v3

    .line 5678
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_4

    .line 5679
    aget-wide v6, v0, v2

    long-to-int v6, v6

    .line 5680
    aget-wide v7, p2, v2

    long-to-int v7, v7

    sub-int/2addr v6, v3

    if-gez v6, :cond_3

    const-string v8, "ExifInterface"

    const-string v9, "Invalid strip offset value"

    .line 5685
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    int-to-long v8, v6

    .line 5687
    invoke-virtual {p1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    add-int/2addr v3, v6

    .line 5691
    new-array v6, v7, [B

    .line 5692
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    add-int/2addr v3, v7

    .line 5696
    array-length v7, v6

    invoke-static {v6, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5698
    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 5701
    iput-boolean p1, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 5702
    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 5703
    array-length p1, v1

    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    :cond_5
    return-void
.end method

.method private static isJpegFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 4718
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4719
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isOrfFormat([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4751
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4754
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4756
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4758
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 4759
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/16 v0, 0x4f52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5352

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isRafFormat([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FUJIFILMCCD-RAW"

    .line 4733
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 4734
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4735
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRw2Format([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4768
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4771
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4773
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4775
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 4776
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/16 v0, 0x55

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BitsPerSample"

    .line 5710
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    .line 5712
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 5714
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 5719
    :cond_0
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    const-string v1, "PhotometricInterpretation"

    .line 5721
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_3

    .line 5723
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5724
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 5725
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 5726
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 5728
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 5745
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const-string v1, "ImageWidth"

    .line 5746
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5749
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 5750
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 4207
    :goto_0
    :try_start_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4208
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4212
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 4213
    move-object p1, v1

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 4216
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4218
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 4232
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4224
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4228
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 4220
    :pswitch_3
    invoke-direct {p0, p1, v0, v0}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_1

    .line 4243
    :pswitch_4
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4251
    :goto_1
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    const/4 p1, 0x1

    .line 4252
    iput-boolean p1, p0, Landroidx/exifinterface/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 4256
    :catch_0
    :try_start_1
    iput-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4263
    :goto_2
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    return-void

    :goto_3
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5305
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5307
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5310
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 5311
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5312
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid start code: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5316
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    if-ge v0, p2, :cond_4

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_3

    .line 5322
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 5323
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t jump to first Ifd: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 5318
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid first Ifd offset: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5285
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    const/16 v0, 0x4949

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4d4d

    if-ne p1, v0, :cond_0

    .line 5296
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 5298
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5291
    :cond_1
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method private readExifSegment([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5245
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5249
    array-length p1, p1

    invoke-direct {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5252
    invoke-direct {p0, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 5332
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    iget v4, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5334
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    add-int/lit8 v3, v3, 0x2

    iget v4, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v3, v4, :cond_0

    return-void

    .line 5339
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 5343
    iget v4, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    mul-int/lit8 v5, v3, 0xc

    add-int/2addr v4, v5

    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v4, v5, :cond_1f

    if-gtz v3, :cond_1

    goto/16 :goto_b

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1a

    .line 5351
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 5352
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    .line 5353
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    .line 5355
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x4

    add-long/2addr v12, v14

    .line 5358
    sget-object v16, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v4, v16, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/4 v8, 0x7

    if-nez v4, :cond_2

    const-string v14, "ExifInterface"

    .line 5369
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    if-lez v10, :cond_8

    .line 5370
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v6, v6

    if-lt v10, v6, :cond_3

    goto :goto_2

    .line 5372
    :cond_3
    invoke-virtual {v4, v10}, Landroidx/exifinterface/media/ExifInterface$ExifTag;->isFormatCompatible(I)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "ExifInterface"

    .line 5373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skip the tag entry since data format ("

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v14, v14, v10

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ") is unexpected for tag: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-ne v10, v8, :cond_5

    .line 5377
    iget v10, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    :cond_5
    int-to-long v6, v11

    .line 5379
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v14, v14, v10

    int-to-long v14, v14

    mul-long/2addr v6, v14

    const-wide/16 v14, 0x0

    cmp-long v19, v6, v14

    if-ltz v19, :cond_7

    const-wide/32 v14, 0x7fffffff

    cmp-long v14, v6, v14

    if-lez v14, :cond_6

    goto :goto_1

    :cond_6
    const/4 v14, 0x1

    goto :goto_4

    :cond_7
    :goto_1
    const-string v14, "ExifInterface"

    .line 5381
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_4

    :cond_8
    :goto_2
    const-string v6, "ExifInterface"

    .line 5371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-wide/16 v6, 0x0

    const/4 v14, 0x0

    :goto_4
    if-nez v14, :cond_9

    .line 5388
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move/from16 v17, v3

    goto/16 :goto_9

    :cond_9
    const-wide/16 v14, 0x4

    cmp-long v8, v6, v14

    if-lez v8, :cond_10

    .line 5395
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    .line 5399
    iget v14, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v15, 0x7

    if-ne v14, v15, :cond_d

    const-string v14, "MakerNote"

    .line 5400
    iget-object v15, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 5402
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    move/from16 v17, v3

    move/from16 v18, v10

    move v15, v11

    goto/16 :goto_5

    :cond_a
    const/4 v14, 0x6

    if-ne v2, v14, :cond_c

    const-string v15, "ThumbnailImage"

    .line 5403
    iget-object v14, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 5404
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 5406
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 5407
    iput v11, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 5409
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v15, 0x6

    .line 5410
    invoke-static {v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 5411
    iget v15, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v17, v3

    int-to-long v2, v15

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5412
    invoke-static {v2, v3, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 5413
    iget v3, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    move/from16 v18, v10

    move v15, v11

    int-to-long v10, v3

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5414
    invoke-static {v10, v11, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5416
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    const-string v11, "Compression"

    invoke-virtual {v10, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5417
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    const-string v14, "JPEGInterchangeFormat"

    invoke-virtual {v10, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5419
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v11

    const-string v10, "JPEGInterchangeFormatLength"

    invoke-virtual {v2, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    move/from16 v17, v3

    move/from16 v18, v10

    move v15, v11

    goto :goto_5

    :cond_c
    move/from16 v17, v3

    move/from16 v18, v10

    move v15, v11

    goto :goto_5

    :cond_d
    move/from16 v17, v3

    move/from16 v18, v10

    move v15, v11

    const/16 v2, 0xa

    if-ne v14, v2, :cond_e

    const-string v2, "JpgFromRaw"

    .line 5423
    iget-object v3, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5424
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->mRw2JpgFromRawOffset:I

    :cond_e
    :goto_5
    int-to-long v2, v8

    add-long v10, v2, v6

    .line 5427
    iget v14, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    move/from16 v16, v15

    int-to-long v14, v14

    cmp-long v10, v10, v14

    if-gtz v10, :cond_f

    .line 5428
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_6

    :cond_f
    const-string v2, "ExifInterface"

    .line 5431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5432
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_9

    :cond_10
    move/from16 v17, v3

    move/from16 v18, v10

    move/from16 v16, v11

    .line 5438
    :goto_6
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_13

    const-wide/16 v3, -0x1

    sparse-switch v18, :sswitch_data_0

    const-wide/16 v6, 0x0

    goto :goto_7

    .line 5461
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v6, 0x0

    goto :goto_7

    .line 5452
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    int-to-long v3, v3

    const-wide/16 v6, 0x0

    goto :goto_7

    .line 5456
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    goto :goto_7

    .line 5448
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v6, 0x0

    :goto_7
    cmp-long v6, v3, v6

    if-lez v6, :cond_12

    .line 5476
    iget v6, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    int-to-long v6, v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_12

    .line 5477
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    long-to-int v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 5478
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5479
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_8

    :cond_11
    const-string v6, "ExifInterface"

    .line 5481
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_12
    const-string v2, "ExifInterface"

    .line 5485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5488
    :goto_8
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_9

    :cond_13
    long-to-int v2, v6

    .line 5492
    new-array v2, v2, [B

    .line 5493
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5494
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move/from16 v6, v16

    move/from16 v10, v18

    invoke-direct {v3, v10, v6, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 5495
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    iget-object v6, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DNGVersion"

    .line 5500
    iget-object v6, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x3

    .line 5501
    iput v2, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    :cond_14
    const-string v2, "Make"

    .line 5507
    iget-object v6, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "Model"

    iget-object v6, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5508
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "PENTAX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    const-string v2, "Compression"

    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 5509
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5510
    invoke-virtual {v3, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_18

    :cond_17
    const/16 v2, 0x8

    .line 5511
    iput v2, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 5515
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v12

    if-eqz v2, :cond_19

    .line 5516
    invoke-virtual {v1, v12, v13}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_19
    :goto_9
    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    move/from16 v2, p2

    move/from16 v3, v17

    goto/16 :goto_0

    .line 5520
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v2, v3, :cond_1e

    .line 5521
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1d

    .line 5528
    iget v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-ge v2, v5, :cond_1d

    .line 5529
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 5530
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5531
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5533
    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_a

    .line 5534
    :cond_1b
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 5535
    invoke-direct {v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_a

    :cond_1c
    const-string v1, "ExifInterface"

    .line 5538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1d
    const-string v1, "ExifInterface"

    .line 5542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_a
    return-void

    :cond_1f
    :goto_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5557
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 5558
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5559
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 5560
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 5564
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 5565
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    .line 5567
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5568
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 5571
    invoke-direct {p0, p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5578
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    .line 5581
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_1

    .line 5583
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 5584
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5586
    :pswitch_0
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 5591
    :cond_0
    :pswitch_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5592
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    .line 5599
    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 5600
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private swapBasedOnImageSize(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6433
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6440
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    .line 6441
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6442
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p1

    const-string v2, "ImageWidth"

    .line 6443
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6444
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "ImageLength"

    .line 6445
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6446
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "ImageWidth"

    .line 6447
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 6458
    :cond_2
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 6459
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 6460
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 6461
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_3

    if-ge v1, v3, :cond_3

    .line 6465
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    .line 6466
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 6467
    aput-object v1, v0, p2

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5805
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 5806
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5808
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 5809
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5810
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 5811
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5812
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 5813
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5814
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 5815
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_5

    .line 5820
    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v1, :cond_2

    .line 5821
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5822
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz p1, :cond_1

    .line 5823
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 5828
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5829
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5830
    aget-object p1, p1, v2

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5831
    invoke-static {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "ExifInterface"

    .line 5824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid crop size values. cropSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5825
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5824
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5833
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5834
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 5835
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 5840
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5841
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5842
    aget p1, p1, v2

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5843
    invoke-static {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 5845
    :goto_1
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5846
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    const-string v0, "ImageLength"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    :goto_2
    const-string p2, "ExifInterface"

    .line 5836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid crop size values. cropSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5837
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5836
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 5850
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 5851
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 5852
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 5853
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_7

    if-le v1, v2, :cond_7

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 5857
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5858
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 5859
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5860
    invoke-static {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5861
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageLength"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5862
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    const-string p2, "ImageWidth"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 5865
    :cond_6
    invoke-direct {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface;->retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private validateImages(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x5

    .line 5761
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v1, 0x4

    .line 5762
    invoke-direct {p0, p1, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 5763
    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 5768
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v4, "PixelXDimension"

    .line 5769
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5770
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "PixelYDimension"

    .line 5771
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 5773
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p1

    const-string v5, "ImageWidth"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5774
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v2, p1

    const-string v2, "ImageLength"

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5779
    :cond_0
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5780
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5781
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, p1, v0

    aput-object v2, p1, v1

    .line 5782
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, p1, v0

    .line 5787
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ExifInterface"

    const-string v0, "No image meets the size requirements of a thumbnail image."

    .line 5788
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 3785
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3787
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3788
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 3790
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3792
    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    iget p1, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const-string p1, "ExifInterface"

    .line 3794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS Timestamp format is not rational. format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3797
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz p1, :cond_3

    .line 3798
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "%02d:%02d:%02d"

    .line 3802
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    iget-wide v3, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object v4, p1, v2

    iget-wide v4, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 3803
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v3, p1, v2

    iget-wide v3, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object v4, p1, v2

    iget-wide v4, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 3804
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-object v3, p1, v2

    iget-wide v3, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v3, v3

    aget-object p1, p1, v2

    iget-wide v4, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float p1, v4

    div-float/2addr v3, p1

    float-to-int p1, v3

    .line 3805
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 3802
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string v0, "ExifInterface"

    .line 3799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid GPS Timestamp array. array="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3808
    :cond_4
    :try_start_0
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :cond_5
    return-object v1
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1

    .line 3825
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 3831
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method
