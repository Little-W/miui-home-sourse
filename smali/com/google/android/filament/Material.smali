.class public Lcom/google/android/filament/Material;
.super Ljava/lang/Object;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Material$Builder;,
        Lcom/google/android/filament/Material$Parameter;,
        Lcom/google/android/filament/Material$CullingMode;,
        Lcom/google/android/filament/Material$VertexDomain;,
        Lcom/google/android/filament/Material$RefractionType;,
        Lcom/google/android/filament/Material$RefractionMode;,
        Lcom/google/android/filament/Material$BlendingMode;,
        Lcom/google/android/filament/Material$Interpolation;,
        Lcom/google/android/filament/Material$Shading;
    }
.end annotation


# instance fields
.field private final mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

.field private mNativeObject:J

.field private mRequiredAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/filament/VertexBuffer$VertexAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .locals 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-wide p1, p0, Lcom/google/android/filament/Material;->mNativeObject:J

    .line 279
    invoke-static {p1, p2}, Lcom/google/android/filament/Material;->nGetDefaultInstance(J)J

    move-result-wide p1

    .line 280
    new-instance v0, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/filament/MaterialInstance;-><init>(Lcom/google/android/filament/Material;J)V

    iput-object v0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    return-void
.end method

.method static synthetic access$000(JLjava/nio/Buffer;I)J
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Material;->nBuilderBuild(JLjava/nio/Buffer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native nBuilderBuild(JLjava/nio/Buffer;I)J
.end method

.method private static native nCreateInstance(J)J
.end method

.method private static native nCreateInstanceWithName(JLjava/lang/String;)J
.end method

.method private static native nGetBlendingMode(J)I
.end method

.method private static native nGetCullingMode(J)I
.end method

.method private static native nGetDefaultInstance(J)J
.end method

.method private static native nGetInterpolation(J)I
.end method

.method private static native nGetMaskThreshold(J)F
.end method

.method private static native nGetName(J)Ljava/lang/String;
.end method

.method private static native nGetParameterCount(J)I
.end method

.method private static native nGetParameters(JLjava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/google/android/filament/Material$Parameter;",
            ">;I)V"
        }
    .end annotation
.end method

.method private static native nGetRefractionMode(J)I
.end method

.method private static native nGetRefractionType(J)I
.end method

.method private static native nGetRequiredAttributes(J)I
.end method

.method private static native nGetShading(J)I
.end method

.method private static native nGetSpecularAntiAliasingThreshold(J)F
.end method

.method private static native nGetSpecularAntiAliasingVariance(J)F
.end method

.method private static native nGetVertexDomain(J)I
.end method

.method private static native nHasParameter(JLjava/lang/String;)Z
.end method

.method private static native nIsColorWriteEnabled(J)Z
.end method

.method private static native nIsDepthCullingEnabled(J)Z
.end method

.method private static native nIsDepthWriteEnabled(J)Z
.end method

.method private static native nIsDoubleSided(J)Z
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 894
    iput-wide v0, p0, Lcom/google/android/filament/Material;->mNativeObject:J

    return-void
.end method

.method public createInstance()Lcom/google/android/filament/MaterialInstance;
    .locals 4

    .line 326
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nCreateInstance(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 328
    new-instance v2, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/filament/MaterialInstance;-><init>(Lcom/google/android/filament/Material;J)V

    return-object v2

    .line 327
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create MaterialInstance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createInstance(Ljava/lang/String;)Lcom/google/android/filament/MaterialInstance;
    .locals 4

    .line 341
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Material;->nCreateInstanceWithName(JLjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 343
    new-instance p1, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/filament/MaterialInstance;-><init>(Lcom/google/android/filament/Material;J)V

    return-object p1

    .line 342
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t create MaterialInstance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBlendingMode()Lcom/google/android/filament/Material$BlendingMode;
    .locals 3

    .line 393
    invoke-static {}, Lcom/google/android/filament/Material$BlendingMode;->values()[Lcom/google/android/filament/Material$BlendingMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetBlendingMode(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getCullingMode()Lcom/google/android/filament/Material$CullingMode;
    .locals 3

    .line 438
    invoke-static {}, Lcom/google/android/filament/Material$CullingMode;->values()[Lcom/google/android/filament/Material$CullingMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetCullingMode(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getDefaultInstance()Lcom/google/android/filament/MaterialInstance;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    return-object p0
.end method

.method public getInterpolation()Lcom/google/android/filament/Material$Interpolation;
    .locals 3

    .line 382
    invoke-static {}, Lcom/google/android/filament/Material$Interpolation;->values()[Lcom/google/android/filament/Material$Interpolation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetInterpolation(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getMaskThreshold()F
    .locals 2

    .line 493
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetMaskThreshold(J)F

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetName(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNativeObject()J
    .locals 4

    .line 887
    iget-wide v0, p0, Lcom/google/android/filament/Material;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    .line 888
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling method on destroyed Material"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getParameterCount()I
    .locals 2

    .line 561
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetParameterCount(J)I

    move-result p0

    return p0
.end method

.method public getParameters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/filament/Material$Parameter;",
            ">;"
        }
    .end annotation

    .line 573
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getParameterCount()I

    move-result v0

    .line 574
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-lez v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v2

    invoke-static {v2, v3, v1, v0}, Lcom/google/android/filament/Material;->nGetParameters(JLjava/util/List;I)V

    :cond_0
    return-object v1
.end method

.method public getRefractionMode()Lcom/google/android/filament/Material$RefractionMode;
    .locals 3

    .line 404
    invoke-static {}, Lcom/google/android/filament/Material$RefractionMode;->values()[Lcom/google/android/filament/Material$RefractionMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetRefractionMode(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getRefractionType()Lcom/google/android/filament/Material$RefractionType;
    .locals 3

    .line 415
    invoke-static {}, Lcom/google/android/filament/Material$RefractionType;->values()[Lcom/google/android/filament/Material$RefractionType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetRefractionType(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getRequiredAttributes()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/filament/VertexBuffer$VertexAttribute;",
            ">;"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/google/android/filament/Material;->mRequiredAttributes:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetRequiredAttributes(J)I

    move-result v0

    .line 528
    const-class v1, Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/filament/Material;->mRequiredAttributes:Ljava/util/Set;

    .line 529
    invoke-static {}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->values()[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    move-result-object v1

    const/4 v2, 0x0

    .line 530
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 532
    iget-object v3, p0, Lcom/google/android/filament/Material;->mRequiredAttributes:Ljava/util/Set;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/google/android/filament/Material;->mRequiredAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/Material;->mRequiredAttributes:Ljava/util/Set;

    .line 537
    :cond_2
    iget-object p0, p0, Lcom/google/android/filament/Material;->mRequiredAttributes:Ljava/util/Set;

    return-object p0
.end method

.method getRequiredAttributesAsInt()I
    .locals 2

    .line 549
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetRequiredAttributes(J)I

    move-result p0

    return p0
.end method

.method public getShading()Lcom/google/android/filament/Material$Shading;
    .locals 3

    .line 371
    invoke-static {}, Lcom/google/android/filament/Material$Shading;->values()[Lcom/google/android/filament/Material$Shading;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetShading(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getSpecularAntiAliasingThreshold()F
    .locals 2

    .line 515
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetSpecularAntiAliasingThreshold(J)F

    move-result p0

    return p0
.end method

.method public getSpecularAntiAliasingVariance()F
    .locals 2

    .line 504
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetSpecularAntiAliasingVariance(J)F

    move-result p0

    return p0
.end method

.method public getVertexDomain()Lcom/google/android/filament/Material$VertexDomain;
    .locals 3

    .line 427
    invoke-static {}, Lcom/google/android/filament/Material$VertexDomain;->values()[Lcom/google/android/filament/Material$VertexDomain;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetVertexDomain(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 2

    .line 587
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Material;->nHasParameter(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isColorWriteEnabled()Z
    .locals 2

    .line 449
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nIsColorWriteEnabled(J)Z

    move-result p0

    return p0
.end method

.method public isDepthCullingEnabled()Z
    .locals 2

    .line 471
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nIsDepthCullingEnabled(J)Z

    move-result p0

    return p0
.end method

.method public isDepthWriteEnabled()Z
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nIsDepthWriteEnabled(J)Z

    move-result p0

    return p0
.end method

.method public isDoubleSided()Z
    .locals 2

    .line 482
    invoke-virtual {p0}, Lcom/google/android/filament/Material;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nIsDoubleSided(J)Z

    move-result p0

    return p0
.end method

.method public setDefaultParameter(Ljava/lang/String;F)V
    .locals 0

    .line 611
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;F)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;FF)V
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FF)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;FFF)V
    .locals 0

    .line 690
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FFF)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;FFFF)V
    .locals 6

    .line 734
    iget-object v0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;I)V
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;I)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;II)V
    .locals 0

    .line 662
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;II)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;III)V
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;III)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;IIII)V
    .locals 6

    .line 749
    iget-object v0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;IIII)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;Lcom/google/android/filament/Colors$RgbType;FFF)V
    .locals 6

    .line 852
    iget-object v0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Lcom/google/android/filament/Colors$RgbType;FFF)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;Lcom/google/android/filament/Colors$RgbaType;FFFF)V
    .locals 7

    .line 869
    iget-object v0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Lcom/google/android/filament/Colors$RgbaType;FFFF)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$BooleanElement;[ZII)V
    .locals 6

    .line 778
    iget-object v0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$BooleanElement;[ZII)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$FloatElement;[FII)V
    .locals 6

    .line 836
    iget-object v0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$FloatElement;[FII)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$IntElement;[III)V
    .locals 6

    .line 807
    iget-object v0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$IntElement;[III)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;Z)V
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;ZZ)V
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;ZZZ)V
    .locals 0

    .line 676
    iget-object p0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public setDefaultParameter(Ljava/lang/String;ZZZZ)V
    .locals 6

    .line 719
    iget-object v0, p0, Lcom/google/android/filament/Material;->mDefaultInstance:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;ZZZZ)V

    return-void
.end method
