.class public Lcom/google/android/filament/MaterialInstance;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/MaterialInstance$FloatElement;,
        Lcom/google/android/filament/MaterialInstance$IntElement;,
        Lcom/google/android/filament/MaterialInstance$BooleanElement;
    }
.end annotation


# instance fields
.field private mMaterial:Lcom/google/android/filament/Material;

.field private mName:Ljava/lang/String;

.field private mNativeMaterial:J

.field private mNativeObject:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/MaterialInstance;->mNativeObject:J

    iget-wide p1, p0, Lcom/google/android/filament/MaterialInstance;->mNativeObject:J

    invoke-static {p1, p2}, Lcom/google/android/filament/MaterialInstance;->nGetMaterial(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/MaterialInstance;->mNativeMaterial:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/filament/MaterialInstance;->mNativeObject:J

    iget-wide p1, p0, Lcom/google/android/filament/MaterialInstance;->mNativeObject:J

    invoke-static {p1, p2}, Lcom/google/android/filament/MaterialInstance;->nGetMaterial(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/MaterialInstance;->mNativeMaterial:J

    return-void
.end method

.method constructor <init>(Lcom/google/android/filament/Material;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/MaterialInstance;->mMaterial:Lcom/google/android/filament/Material;

    iput-wide p2, p0, Lcom/google/android/filament/MaterialInstance;->mNativeObject:J

    return-void
.end method

.method private static native nGetMaterial(J)J
.end method

.method private static native nGetName(J)Ljava/lang/String;
.end method

.method private static native nSetBooleanParameterArray(JLjava/lang/String;I[ZII)V
.end method

.method private static native nSetColorWrite(JZ)V
.end method

.method private static native nSetCullingMode(JJ)V
.end method

.method private static native nSetDepthCulling(JZ)V
.end method

.method private static native nSetDepthWrite(JZ)V
.end method

.method private static native nSetDoubleSided(JZ)V
.end method

.method private static native nSetFloatParameterArray(JLjava/lang/String;I[FII)V
.end method

.method private static native nSetIntParameterArray(JLjava/lang/String;I[III)V
.end method

.method private static native nSetMaskThreshold(JF)V
.end method

.method private static native nSetParameterBool(JLjava/lang/String;Z)V
.end method

.method private static native nSetParameterBool2(JLjava/lang/String;ZZ)V
.end method

.method private static native nSetParameterBool3(JLjava/lang/String;ZZZ)V
.end method

.method private static native nSetParameterBool4(JLjava/lang/String;ZZZZ)V
.end method

.method private static native nSetParameterFloat(JLjava/lang/String;F)V
.end method

.method private static native nSetParameterFloat2(JLjava/lang/String;FF)V
.end method

.method private static native nSetParameterFloat3(JLjava/lang/String;FFF)V
.end method

.method private static native nSetParameterFloat4(JLjava/lang/String;FFFF)V
.end method

.method private static native nSetParameterInt(JLjava/lang/String;I)V
.end method

.method private static native nSetParameterInt2(JLjava/lang/String;II)V
.end method

.method private static native nSetParameterInt3(JLjava/lang/String;III)V
.end method

.method private static native nSetParameterInt4(JLjava/lang/String;IIII)V
.end method

.method private static native nSetParameterTexture(JLjava/lang/String;JI)V
.end method

.method private static native nSetPolygonOffset(JFF)V
.end method

.method private static native nSetScissor(JIIII)V
.end method

.method private static native nSetSpecularAntiAliasingThreshold(JF)V
.end method

.method private static native nSetSpecularAntiAliasingVariance(JF)V
.end method

.method private static native nUnsetScissor(J)V
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/MaterialInstance;->mNativeObject:J

    return-void
.end method

.method public getMaterial()Lcom/google/android/filament/Material;
    .locals 3

    iget-object v0, p0, Lcom/google/android/filament/MaterialInstance;->mMaterial:Lcom/google/android/filament/Material;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Material;

    iget-wide v1, p0, Lcom/google/android/filament/MaterialInstance;->mNativeMaterial:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/MaterialInstance;->mMaterial:Lcom/google/android/filament/Material;

    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/MaterialInstance;->mMaterial:Lcom/google/android/filament/Material;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/filament/MaterialInstance;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nGetName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/MaterialInstance;->mName:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/MaterialInstance;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNativeObject()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/MaterialInstance;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling method on destroyed MaterialInstance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setColorWrite(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetColorWrite(JZ)V

    return-void
.end method

.method public setCullingMode(Lcom/google/android/filament/Material$CullingMode;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Material$CullingMode;->ordinal()I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/MaterialInstance;->nSetCullingMode(JJ)V

    return-void
.end method

.method setDepthCulling(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetDepthCulling(JZ)V

    return-void
.end method

.method setDepthWrite(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetDepthWrite(JZ)V

    return-void
.end method

.method public setDoubleSided(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetDoubleSided(JZ)V

    return-void
.end method

.method public setMaskThreshold(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetMaskThreshold(JF)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat(JLjava/lang/String;F)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat2(JLjava/lang/String;FF)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;FFF)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat3(JLjava/lang/String;FFF)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;FFFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat4(JLjava/lang/String;FFFF)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetParameterInt(JLjava/lang/String;I)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->nSetParameterInt2(JLjava/lang/String;II)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;III)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetParameterInt3(JLjava/lang/String;III)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;IIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetParameterInt4(JLjava/lang/String;IIII)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Lcom/google/android/filament/Colors$RgbType;FFF)V
    .locals 6

    invoke-static {p2, p3, p4, p5}, Lcom/google/android/filament/Colors;->toLinear(Lcom/google/android/filament/Colors$RgbType;FFF)[F

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    const/4 p0, 0x0

    aget v3, p2, p0

    const/4 p0, 0x1

    aget v4, p2, p0

    const/4 p0, 0x2

    aget v5, p2, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat3(JLjava/lang/String;FFF)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Lcom/google/android/filament/Colors$RgbaType;FFFF)V
    .locals 7

    invoke-static {p2, p3, p4, p5, p6}, Lcom/google/android/filament/Colors;->toLinear(Lcom/google/android/filament/Colors$RgbaType;FFFF)[F

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    const/4 p0, 0x0

    aget v3, p2, p0

    const/4 p0, 0x1

    aget v4, p2, p0

    const/4 p0, 0x2

    aget v5, p2, p0

    const/4 p0, 0x3

    aget v6, p2, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat4(JLjava/lang/String;FFFF)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$BooleanElement;[ZII)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/MaterialInstance$BooleanElement;->ordinal()I

    move-result v3

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetBooleanParameterArray(JLjava/lang/String;I[ZII)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$FloatElement;[FII)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/MaterialInstance$FloatElement;->ordinal()I

    move-result v3

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetFloatParameterArray(JLjava/lang/String;I[FII)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$IntElement;[III)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/MaterialInstance$IntElement;->ordinal()I

    move-result v3

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetIntParameterArray(JLjava/lang/String;I[III)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v3

    iget v5, p3, Lcom/google/android/filament/TextureSampler;->mSampler:I

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetParameterTexture(JLjava/lang/String;JI)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetParameterBool(JLjava/lang/String;Z)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->nSetParameterBool2(JLjava/lang/String;ZZ)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;ZZZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetParameterBool3(JLjava/lang/String;ZZZ)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;ZZZZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetParameterBool4(JLjava/lang/String;ZZZZ)V

    return-void
.end method

.method public setPolygonOffset(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetPolygonOffset(JFF)V

    return-void
.end method

.method public setScissor(IIII)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetScissor(JIIII)V

    return-void
.end method

.method public setSpecularAntiAliasingThreshold(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetSpecularAntiAliasingThreshold(JF)V

    return-void
.end method

.method public setSpecularAntiAliasingVariance(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetSpecularAntiAliasingVariance(JF)V

    return-void
.end method

.method public unsetScissor()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nUnsetScissor(J)V

    return-void
.end method
