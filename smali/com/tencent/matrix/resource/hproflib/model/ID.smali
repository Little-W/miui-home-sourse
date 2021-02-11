.class public final Lcom/tencent/matrix/resource/hproflib/model/ID;
.super Ljava/lang/Object;
.source "ID.java"


# instance fields
.field private final mIdBytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    array-length v0, p1

    .line 34
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/tencent/matrix/resource/hproflib/model/ID;->mIdBytes:[B

    .line 35
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/model/ID;->mIdBytes:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static createNullID(I)Lcom/tencent/matrix/resource/hproflib/model/ID;
    .locals 1

    .line 29
    new-instance v0, Lcom/tencent/matrix/resource/hproflib/model/ID;

    new-array p0, p0, [B

    invoke-direct {v0, p0}, Lcom/tencent/matrix/resource/hproflib/model/ID;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 48
    instance-of v0, p1, Lcom/tencent/matrix/resource/hproflib/model/ID;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/model/ID;->mIdBytes:[B

    check-cast p1, Lcom/tencent/matrix/resource/hproflib/model/ID;

    iget-object p1, p1, Lcom/tencent/matrix/resource/hproflib/model/ID;->mIdBytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/model/ID;->mIdBytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/tencent/matrix/resource/hproflib/model/ID;->mIdBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lcom/tencent/matrix/resource/hproflib/model/ID;->mIdBytes:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
