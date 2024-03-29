.class Landroidx/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "AudioAttributesImplBase.java"

# interfaces
.implements Landroidx/media/AudioAttributesImpl;


# instance fields
.field mContentType:I

.field mFlags:I

.field mLegacyStream:I

.field mUsage:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 40
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 42
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 128
    instance-of v0, p1, Landroidx/media/AudioAttributesImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 131
    :cond_0
    check-cast p1, Landroidx/media/AudioAttributesImplBase;

    .line 132
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->getContentType()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 133
    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->getFlags()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 134
    invoke-virtual {p1}, Landroidx/media/AudioAttributesImplBase;->getUsage()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    iget p1, p1, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getContentType()I
    .locals 0

    .line 86
    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    return p0
.end method

.method public getFlags()I
    .locals 2

    .line 96
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 97
    invoke-virtual {p0}, Landroidx/media/AudioAttributesImplBase;->getLegacyStreamType()I

    move-result p0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    and-int/lit16 p0, v0, 0x111

    return p0
.end method

.method public getLegacyStreamType()I
    .locals 2

    .line 73
    iget v0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 76
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v0, v1, p0}, Landroidx/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result p0

    return p0
.end method

.method public getUsage()I
    .locals 0

    .line 91
    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 123
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " stream="

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " derived"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " usage="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    .line 146
    invoke-static {v1}, Landroidx/media/AudioAttributesCompat;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " content="

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
