.class Lcom/xiaomi/dist/handoff/system/MurmurHash3;
.super Ljava/lang/Object;


# direct methods
.method static hash([BI)I
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    move v2, p1

    move p1, v1

    :goto_0
    const v3, 0x1b873593

    const/16 v4, 0xf

    const v5, -0x3361d2af    # -8.2930312E7f

    const/4 v6, 0x4

    if-lt v0, v6, :cond_0

    invoke-static {p0, p1, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    mul-int/2addr v6, v5

    invoke-static {v6, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    mul-int/2addr v4, v3

    xor-int/2addr v2, v4

    const/16 v3, 0xd

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    const v3, -0x19ab949c

    add-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    if-eq v0, v6, :cond_3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    xor-int/2addr v1, v0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr v1, v0

    :cond_3
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    xor-int/2addr p1, v1

    mul-int/2addr p1, v5

    invoke-static {p1, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p1

    mul-int/2addr p1, v3

    xor-int/2addr v2, p1

    :goto_1
    array-length p0, p0

    xor-int/2addr p0, v2

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, -0x7a143595

    mul-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    const p1, -0x3d4d51cb

    mul-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    return p0
.end method
