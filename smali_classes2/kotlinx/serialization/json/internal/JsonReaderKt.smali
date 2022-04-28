.class public final Lkotlinx/serialization/json/internal/JsonReaderKt;
.super Ljava/lang/Object;
.source "JsonReader.kt"


# static fields
.field private static final C2TC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x7e

    .line 55
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    const/16 v2, 0xb

    .line 57
    invoke-static {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    const/4 v3, 0x3

    .line 60
    invoke-static {v0, v1, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    const/16 v4, 0xa

    .line 61
    invoke-static {v0, v4, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    const/16 v4, 0xd

    .line 62
    invoke-static {v0, v4, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    .line 63
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    const/16 v2, 0x2c

    const/4 v3, 0x4

    .line 64
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v2, 0x3a

    const/4 v3, 0x5

    .line 65
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v2, 0x7b

    const/4 v3, 0x6

    .line 66
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v2, 0x7d

    const/4 v3, 0x7

    .line 67
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v2, 0x5b

    const/16 v3, 0x8

    .line 68
    invoke-static {v0, v2, v3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v2, 0x5d

    .line 69
    invoke-static {v0, v2, v1}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v1, 0x22

    const/4 v2, 0x1

    .line 70
    invoke-static {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    const/16 v1, 0x5c

    const/4 v2, 0x2

    .line 71
    invoke-static {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BCB)V

    .line 55
    sput-object v0, Lkotlinx/serialization/json/internal/JsonReaderKt;->C2TC:[B

    return-void
.end method

.method public static final synthetic access$rangeEquals(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/JsonReaderKt;->rangeEquals(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final charToTokenClass(C)B
    .locals 1

    const/16 v0, 0x7e

    if-ge p0, v0, :cond_0

    .line 109
    sget-object v0, Lkotlinx/serialization/json/internal/JsonReaderKt;->C2TC:[B

    aget-byte p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final escapeToChar(I)C
    .locals 1

    const/16 v0, 0x75

    if-ge p0, v0, :cond_0

    .line 111
    sget-object v0, Lkotlinx/serialization/json/internal/EscapeCharMappings;->ESCAPE_2_CHAR:[C

    aget-char p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final initC2TC([BCB)V
    .locals 0

    .line 106
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonReaderKt;->initC2TC([BIB)V

    return-void
.end method

.method private static final initC2TC([BIB)V
    .locals 0

    .line 102
    aput-byte p2, p0, p1

    return-void
.end method

.method private static final rangeEquals(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 4

    .line 352
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    move p2, v1

    :goto_0
    if-ge p2, v0, :cond_2

    add-int v2, p1, p2

    .line 354
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
