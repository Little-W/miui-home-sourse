.class public Lcom/google/android/filament/TextureSampler;
.super Ljava/lang/Object;
.source "TextureSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/TextureSampler$CompareFunction;,
        Lcom/google/android/filament/TextureSampler$CompareMode;,
        Lcom/google/android/filament/TextureSampler$MagFilter;,
        Lcom/google/android/filament/TextureSampler$MinFilter;,
        Lcom/google/android/filament/TextureSampler$WrapMode;
    }
.end annotation


# instance fields
.field mSampler:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 130
    sget-object v0, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    sget-object v1, Lcom/google/android/filament/TextureSampler$MagFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MagFilter;

    sget-object v2, Lcom/google/android/filament/TextureSampler$WrapMode;->REPEAT:Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$CompareMode;)V
    .locals 1

    .line 188
    sget-object v0, Lcom/google/android/filament/TextureSampler$CompareFunction;->LESS_EQUAL:Lcom/google/android/filament/TextureSampler$CompareFunction;

    invoke-direct {p0, p1, v0}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$CompareMode;Lcom/google/android/filament/TextureSampler$CompareFunction;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$CompareMode;Lcom/google/android/filament/TextureSampler$CompareFunction;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    .line 198
    invoke-virtual {p1}, Lcom/google/android/filament/TextureSampler$CompareMode;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/filament/TextureSampler$CompareFunction;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/filament/TextureSampler;->nCreateCompareSampler(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$MagFilter;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/google/android/filament/TextureSampler$WrapMode;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-direct {p0, p1, v0}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V
    .locals 1

    .line 152
    invoke-static {p1}, Lcom/google/android/filament/TextureSampler;->minFilterFromMagFilter(Lcom/google/android/filament/TextureSampler$MagFilter;)Lcom/google/android/filament/TextureSampler$MinFilter;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p3

    .line 163
    invoke-direct/range {v0 .. v5}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;Lcom/google/android/filament/TextureSampler$WrapMode;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;Lcom/google/android/filament/TextureSampler$WrapMode;Lcom/google/android/filament/TextureSampler$WrapMode;)V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    .line 177
    invoke-virtual {p1}, Lcom/google/android/filament/TextureSampler$MinFilter;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/filament/TextureSampler$MagFilter;->ordinal()I

    move-result p2

    .line 178
    invoke-virtual {p3}, Lcom/google/android/filament/TextureSampler$WrapMode;->ordinal()I

    move-result p3

    invoke-virtual {p4}, Lcom/google/android/filament/TextureSampler$WrapMode;->ordinal()I

    move-result p4

    invoke-virtual {p5}, Lcom/google/android/filament/TextureSampler$WrapMode;->ordinal()I

    move-result p5

    .line 177
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/filament/TextureSampler;->nCreateSampler(IIIII)I

    move-result p1

    iput p1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    return-void
.end method

.method private static minFilterFromMagFilter(Lcom/google/android/filament/TextureSampler$MagFilter;)Lcom/google/android/filament/TextureSampler$MinFilter;
    .locals 1

    .line 328
    sget-object v0, Lcom/google/android/filament/TextureSampler$1;->$SwitchMap$com$google$android$filament$TextureSampler$MagFilter:[I

    invoke-virtual {p0}, Lcom/google/android/filament/TextureSampler$MagFilter;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 333
    sget-object p0, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    return-object p0

    .line 330
    :cond_0
    sget-object p0, Lcom/google/android/filament/TextureSampler$MinFilter;->NEAREST:Lcom/google/android/filament/TextureSampler$MinFilter;

    return-object p0
.end method

.method private static native nCreateCompareSampler(II)I
.end method

.method private static native nCreateSampler(IIIII)I
.end method

.method private static native nGetAnisotropy(I)F
.end method

.method private static native nGetCompareFunction(I)I
.end method

.method private static native nGetCompareMode(I)I
.end method

.method private static native nGetMagFilter(I)I
.end method

.method private static native nGetMinFilter(I)I
.end method

.method private static native nGetWrapModeR(I)I
.end method

.method private static native nGetWrapModeS(I)I
.end method

.method private static native nGetWrapModeT(I)I
.end method

.method private static native nSetAnisotropy(IF)I
.end method

.method private static native nSetCompareFunction(II)I
.end method

.method private static native nSetCompareMode(II)I
.end method

.method private static native nSetMagFilter(II)I
.end method

.method private static native nSetMinFilter(II)I
.end method

.method private static native nSetWrapModeR(II)I
.end method

.method private static native nSetWrapModeS(II)I
.end method

.method private static native nSetWrapModeT(II)I
.end method


# virtual methods
.method public getAnisotropy()F
    .locals 1

    .line 283
    iget v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-static {v0}, Lcom/google/android/filament/TextureSampler;->nGetAnisotropy(I)F

    move-result v0

    return v0
.end method

.method public getCompareFunction()Lcom/google/android/filament/TextureSampler$CompareFunction;
    .locals 2

    .line 316
    invoke-static {}, Lcom/google/android/filament/TextureSampler$CompareFunction;->values()[Lcom/google/android/filament/TextureSampler$CompareFunction;

    move-result-object v0

    iget v1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-static {v1}, Lcom/google/android/filament/TextureSampler;->nGetCompareFunction(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCompareMode()Lcom/google/android/filament/TextureSampler$CompareMode;
    .locals 2

    .line 300
    invoke-static {}, Lcom/google/android/filament/TextureSampler$CompareMode;->values()[Lcom/google/android/filament/TextureSampler$CompareMode;

    move-result-object v0

    iget v1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-static {v1}, Lcom/google/android/filament/TextureSampler;->nGetCompareMode(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMagFilter()Lcom/google/android/filament/TextureSampler$MagFilter;
    .locals 2

    .line 221
    invoke-static {}, Lcom/google/android/filament/TextureSampler$MagFilter;->values()[Lcom/google/android/filament/TextureSampler$MagFilter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-static {v1}, Lcom/google/android/filament/TextureSampler;->nGetMagFilter(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMinFilter()Lcom/google/android/filament/TextureSampler$MinFilter;
    .locals 2

    .line 205
    invoke-static {}, Lcom/google/android/filament/TextureSampler$MinFilter;->values()[Lcom/google/android/filament/TextureSampler$MinFilter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-static {v1}, Lcom/google/android/filament/TextureSampler;->nGetMinFilter(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWrapModeR()Lcom/google/android/filament/TextureSampler$WrapMode;
    .locals 2

    .line 267
    invoke-static {}, Lcom/google/android/filament/TextureSampler$WrapMode;->values()[Lcom/google/android/filament/TextureSampler$WrapMode;

    move-result-object v0

    iget v1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-static {v1}, Lcom/google/android/filament/TextureSampler;->nGetWrapModeR(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWrapModeS()Lcom/google/android/filament/TextureSampler$WrapMode;
    .locals 2

    .line 237
    invoke-static {}, Lcom/google/android/filament/TextureSampler$WrapMode;->values()[Lcom/google/android/filament/TextureSampler$WrapMode;

    move-result-object v0

    iget v1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-static {v1}, Lcom/google/android/filament/TextureSampler;->nGetWrapModeS(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getWrapModeT()Lcom/google/android/filament/TextureSampler$WrapMode;
    .locals 2

    .line 252
    invoke-static {}, Lcom/google/android/filament/TextureSampler$WrapMode;->values()[Lcom/google/android/filament/TextureSampler$WrapMode;

    move-result-object v0

    iget v1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-static {v1}, Lcom/google/android/filament/TextureSampler;->nGetWrapModeT(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setAnisotropy(F)V
    .locals 1

    .line 293
    iget v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-static {v0, p1}, Lcom/google/android/filament/TextureSampler;->nSetAnisotropy(IF)I

    move-result p1

    iput p1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    return-void
.end method

.method public setCompareFunction(Lcom/google/android/filament/TextureSampler$CompareFunction;)V
    .locals 1

    .line 324
    iget v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-virtual {p1}, Lcom/google/android/filament/TextureSampler$CompareFunction;->ordinal()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/filament/TextureSampler;->nSetCompareFunction(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    return-void
.end method

.method public setCompareMode(Lcom/google/android/filament/TextureSampler$CompareMode;)V
    .locals 1

    .line 309
    iget v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-virtual {p1}, Lcom/google/android/filament/TextureSampler$CompareMode;->ordinal()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/filament/TextureSampler;->nSetCompareMode(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    return-void
.end method

.method public setMagFilter(Lcom/google/android/filament/TextureSampler$MagFilter;)V
    .locals 1

    .line 230
    iget v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-virtual {p1}, Lcom/google/android/filament/TextureSampler$MagFilter;->ordinal()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/filament/TextureSampler;->nSetMagFilter(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    return-void
.end method

.method public setMinFilter(Lcom/google/android/filament/TextureSampler$MinFilter;)V
    .locals 1

    .line 214
    iget v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-virtual {p1}, Lcom/google/android/filament/TextureSampler$MinFilter;->ordinal()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/filament/TextureSampler;->nSetMinFilter(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    return-void
.end method

.method public setWrapModeR(Lcom/google/android/filament/TextureSampler$WrapMode;)V
    .locals 1

    .line 275
    iget v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-virtual {p1}, Lcom/google/android/filament/TextureSampler$WrapMode;->ordinal()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/filament/TextureSampler;->nSetWrapModeR(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    return-void
.end method

.method public setWrapModeS(Lcom/google/android/filament/TextureSampler$WrapMode;)V
    .locals 1

    .line 245
    iget v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-virtual {p1}, Lcom/google/android/filament/TextureSampler$WrapMode;->ordinal()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/filament/TextureSampler;->nSetWrapModeS(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    return-void
.end method

.method public setWrapModeT(Lcom/google/android/filament/TextureSampler$WrapMode;)V
    .locals 1

    .line 260
    iget v0, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    invoke-virtual {p1}, Lcom/google/android/filament/TextureSampler$WrapMode;->ordinal()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/filament/TextureSampler;->nSetWrapModeT(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/filament/TextureSampler;->mSampler:I

    return-void
.end method
