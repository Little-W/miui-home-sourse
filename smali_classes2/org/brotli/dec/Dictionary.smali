.class final Lorg/brotli/dec/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/dec/Dictionary$DataHolder;,
        Lorg/brotli/dec/Dictionary$DataHolder2;,
        Lorg/brotli/dec/Dictionary$DataHolder1;,
        Lorg/brotli/dec/Dictionary$DataHolder0;
    }
.end annotation


# static fields
.field static final OFFSETS_BY_LENGTH:[I

.field static final SIZE_BITS_BY_LENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x19

    .line 69
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/brotli/dec/Dictionary;->OFFSETS_BY_LENGTH:[I

    .line 74
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/brotli/dec/Dictionary;->SIZE_BITS_BY_LENGTH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1000
        0x2400
        0x5400
        0x8c00
        0xac00
        0xd000
        0xf800
        0x12400
        0x15400
        0x16e00
        0x18a00
        0x19900
        0x1a100
        0x1a980
        0x1bb80
        0x1c500
        0x1cf00
        0x1d440
        0x1d9c0
        0x1dca0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0xa
        0xa
        0xb
        0xb
        0xa
        0xa
        0xa
        0xa
        0xa
        0x9
        0x9
        0x8
        0x7
        0x7
        0x8
        0x7
        0x7
        0x6
        0x6
        0x5
        0x5
    .end array-data
.end method

.method static getData()[B
    .locals 1

    .line 66
    invoke-static {}, Lorg/brotli/dec/Dictionary$DataHolder;->access$300()[B

    move-result-object v0

    return-object v0
.end method
