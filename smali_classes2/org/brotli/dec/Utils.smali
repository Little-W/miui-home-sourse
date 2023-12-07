.class final Lorg/brotli/dec/Utils;
.super Ljava/lang/Object;


# static fields
.field private static final BYTE_ZEROES:[B

.field private static final INT_ZEROES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x400

    new-array v1, v0, [B

    sput-object v1, Lorg/brotli/dec/Utils;->BYTE_ZEROES:[B

    new-array v0, v0, [I

    sput-object v0, Lorg/brotli/dec/Utils;->INT_ZEROES:[I

    return-void
.end method

.method static fillWithZeroes([BII)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int/lit16 v2, v1, 0x400

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    sget-object v3, Lorg/brotli/dec/Utils;->BYTE_ZEROES:[B

    add-int v4, p1, v1

    invoke-static {v3, v0, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fillWithZeroes([III)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int/lit16 v2, v1, 0x400

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    sget-object v3, Lorg/brotli/dec/Utils;->INT_ZEROES:[I

    add-int v4, p1, v1

    invoke-static {v3, v0, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method
