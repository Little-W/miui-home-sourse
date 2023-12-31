.class public Lcom/google/android/filament/View;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/View$TargetBufferFlags;,
        Lcom/google/android/filament/View$Dithering;,
        Lcom/google/android/filament/View$ToneMapping;,
        Lcom/google/android/filament/View$AntiAliasing;,
        Lcom/google/android/filament/View$AmbientOcclusion;,
        Lcom/google/android/filament/View$RenderQuality;,
        Lcom/google/android/filament/View$VignetteOptions;,
        Lcom/google/android/filament/View$DepthOfFieldOptions;,
        Lcom/google/android/filament/View$FogOptions;,
        Lcom/google/android/filament/View$BloomOptions;,
        Lcom/google/android/filament/View$AmbientOcclusionOptions;,
        Lcom/google/android/filament/View$DynamicResolutionOptions;,
        Lcom/google/android/filament/View$BlendMode;,
        Lcom/google/android/filament/View$QualityLevel;
    }
.end annotation


# instance fields
.field private mAmbientOcclusionOptions:Lcom/google/android/filament/View$AmbientOcclusionOptions;

.field private mBlendMode:Lcom/google/android/filament/View$BlendMode;

.field private mBloomOptions:Lcom/google/android/filament/View$BloomOptions;

.field private mCamera:Lcom/google/android/filament/Camera;

.field private mColorGrading:Lcom/google/android/filament/ColorGrading;

.field private mDepthOfFieldOptions:Lcom/google/android/filament/View$DepthOfFieldOptions;

.field private mDynamicResolution:Lcom/google/android/filament/View$DynamicResolutionOptions;

.field private mFogOptions:Lcom/google/android/filament/View$FogOptions;

.field private mName:Ljava/lang/String;

.field private mNativeObject:J

.field private mRenderQuality:Lcom/google/android/filament/View$RenderQuality;

.field private mRenderTarget:Lcom/google/android/filament/RenderTarget;

.field private mScene:Lcom/google/android/filament/Scene;

.field private mViewport:Lcom/google/android/filament/Viewport;

.field private mVignetteOptions:Lcom/google/android/filament/View$VignetteOptions;


# direct methods
.method constructor <init>(J)V
    .locals 2

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/android/filament/Viewport;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/filament/Viewport;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    .line 523
    iput-wide p1, p0, Lcom/google/android/filament/View;->mNativeObject:J

    return-void
.end method

.method private static native nGetAmbientOcclusion(J)I
.end method

.method private static native nGetAntiAliasing(J)I
.end method

.method private static native nGetDithering(J)I
.end method

.method private static native nGetSampleCount(J)I
.end method

.method private static native nIsFrontFaceWindingInverted(J)Z
.end method

.method private static native nIsPostProcessingEnabled(J)Z
.end method

.method private static native nSetAmbientOcclusion(JI)V
.end method

.method private static native nSetAmbientOcclusionOptions(JFFFFFII)V
.end method

.method private static native nSetAntiAliasing(JI)V
.end method

.method private static native nSetBlendMode(JI)V
.end method

.method private static native nSetBloomOptions(JJFFIFIIZZ)V
.end method

.method private static native nSetCamera(JJ)V
.end method

.method private static native nSetColorGrading(JJ)V
.end method

.method private static native nSetDepthOfFieldOptions(JFFFZ)V
.end method

.method private static native nSetDithering(JI)V
.end method

.method private static native nSetDynamicLightingOptions(JFF)V
.end method

.method private static native nSetDynamicResolutionOptions(JZZFFI)V
.end method

.method private static native nSetFogOptions(JFFFFFFFFFFZZ)V
.end method

.method private static native nSetFrontFaceWindingInverted(JZ)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetPostProcessingEnabled(JZ)V
.end method

.method private static native nSetRenderQuality(JI)V
.end method

.method private static native nSetRenderTarget(JJ)V
.end method

.method private static native nSetSampleCount(JI)V
.end method

.method private static native nSetScene(JJ)V
.end method

.method private static native nSetShadowsEnabled(JZ)V
.end method

.method private static native nSetViewport(JIIII)V
.end method

.method private static native nSetVignetteOptions(JFFFFFFFZ)V
.end method

.method private static native nSetVisibleLayers(JII)V
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1143
    iput-wide v0, p0, Lcom/google/android/filament/View;->mNativeObject:J

    return-void
.end method

.method public getAmbientOcclusion()Lcom/google/android/filament/View$AmbientOcclusion;
    .locals 3

    .line 994
    invoke-static {}, Lcom/google/android/filament/View$AmbientOcclusion;->values()[Lcom/google/android/filament/View$AmbientOcclusion;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/View;->nGetAmbientOcclusion(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getAmbientOcclusionOptions()Lcom/google/android/filament/View$AmbientOcclusionOptions;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/google/android/filament/View;->mAmbientOcclusionOptions:Lcom/google/android/filament/View$AmbientOcclusionOptions;

    if-nez v0, :cond_0

    .line 1016
    new-instance v0, Lcom/google/android/filament/View$AmbientOcclusionOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$AmbientOcclusionOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mAmbientOcclusionOptions:Lcom/google/android/filament/View$AmbientOcclusionOptions;

    .line 1018
    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/View;->mAmbientOcclusionOptions:Lcom/google/android/filament/View$AmbientOcclusionOptions;

    return-object p0
.end method

.method public getAntiAliasing()Lcom/google/android/filament/View$AntiAliasing;
    .locals 3

    .line 763
    invoke-static {}, Lcom/google/android/filament/View$AntiAliasing;->values()[Lcom/google/android/filament/View$AntiAliasing;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/View;->nGetAntiAliasing(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getBlendMode()Lcom/google/android/filament/View$BlendMode;
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/google/android/filament/View;->mBlendMode:Lcom/google/android/filament/View$BlendMode;

    return-object p0
.end method

.method public getBloomOptions()Lcom/google/android/filament/View$BloomOptions;
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/google/android/filament/View;->mBloomOptions:Lcom/google/android/filament/View$BloomOptions;

    if-nez v0, :cond_0

    .line 1044
    new-instance v0, Lcom/google/android/filament/View$BloomOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$BloomOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mBloomOptions:Lcom/google/android/filament/View$BloomOptions;

    .line 1046
    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/View;->mBloomOptions:Lcom/google/android/filament/View$BloomOptions;

    return-object p0
.end method

.method public getCamera()Lcom/google/android/filament/Camera;
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/google/android/filament/View;->mCamera:Lcom/google/android/filament/Camera;

    return-object p0
.end method

.method public getColorGrading()Lcom/google/android/filament/ColorGrading;
    .locals 0

    .line 809
    iget-object p0, p0, Lcom/google/android/filament/View;->mColorGrading:Lcom/google/android/filament/ColorGrading;

    return-object p0
.end method

.method public getDepthOfFieldOptions()Lcom/google/android/filament/View$DepthOfFieldOptions;
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/google/android/filament/View;->mDepthOfFieldOptions:Lcom/google/android/filament/View$DepthOfFieldOptions;

    if-nez v0, :cond_0

    .line 1129
    new-instance v0, Lcom/google/android/filament/View$DepthOfFieldOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$DepthOfFieldOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mDepthOfFieldOptions:Lcom/google/android/filament/View$DepthOfFieldOptions;

    .line 1131
    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/View;->mDepthOfFieldOptions:Lcom/google/android/filament/View$DepthOfFieldOptions;

    return-object p0
.end method

.method public getDithering()Lcom/google/android/filament/View$Dithering;
    .locals 3

    .line 828
    invoke-static {}, Lcom/google/android/filament/View$Dithering;->values()[Lcom/google/android/filament/View$Dithering;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/View;->nGetDithering(J)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getDynamicResolutionOptions()Lcom/google/android/filament/View$DynamicResolutionOptions;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/google/android/filament/View;->mDynamicResolution:Lcom/google/android/filament/View$DynamicResolutionOptions;

    if-nez v0, :cond_0

    .line 863
    new-instance v0, Lcom/google/android/filament/View$DynamicResolutionOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$DynamicResolutionOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mDynamicResolution:Lcom/google/android/filament/View$DynamicResolutionOptions;

    .line 865
    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/View;->mDynamicResolution:Lcom/google/android/filament/View$DynamicResolutionOptions;

    return-object p0
.end method

.method public getFogOptions()Lcom/google/android/filament/View$FogOptions;
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/google/android/filament/View;->mFogOptions:Lcom/google/android/filament/View$FogOptions;

    if-nez v0, :cond_0

    .line 1103
    new-instance v0, Lcom/google/android/filament/View$FogOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$FogOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mFogOptions:Lcom/google/android/filament/View$FogOptions;

    .line 1105
    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/View;->mFogOptions:Lcom/google/android/filament/View$FogOptions;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/google/android/filament/View;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNativeObject()J
    .locals 4

    .line 1136
    iget-wide v0, p0, Lcom/google/android/filament/View;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    .line 1137
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling method on destroyed View"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRenderQuality()Lcom/google/android/filament/View$RenderQuality;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/google/android/filament/View;->mRenderQuality:Lcom/google/android/filament/View$RenderQuality;

    if-nez v0, :cond_0

    .line 885
    new-instance v0, Lcom/google/android/filament/View$RenderQuality;

    invoke-direct {v0}, Lcom/google/android/filament/View$RenderQuality;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mRenderQuality:Lcom/google/android/filament/View$RenderQuality;

    .line 887
    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/View;->mRenderQuality:Lcom/google/android/filament/View$RenderQuality;

    return-object p0
.end method

.method public getRenderTarget()Lcom/google/android/filament/RenderTarget;
    .locals 0

    .line 711
    iget-object p0, p0, Lcom/google/android/filament/View;->mRenderTarget:Lcom/google/android/filament/RenderTarget;

    return-object p0
.end method

.method public getSampleCount()I
    .locals 2

    .line 739
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nGetSampleCount(J)I

    move-result p0

    return p0
.end method

.method public getScene()Lcom/google/android/filament/Scene;
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/google/android/filament/View;->mScene:Lcom/google/android/filament/Scene;

    return-object p0
.end method

.method public getToneMapping()Lcom/google/android/filament/View$ToneMapping;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 786
    sget-object p0, Lcom/google/android/filament/View$ToneMapping;->ACES:Lcom/google/android/filament/View$ToneMapping;

    return-object p0
.end method

.method public getViewport()Lcom/google/android/filament/Viewport;
    .locals 0

    .line 632
    iget-object p0, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    return-object p0
.end method

.method public getVignetteOptions()Lcom/google/android/filament/View$VignetteOptions;
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/google/android/filament/View;->mVignetteOptions:Lcom/google/android/filament/View$VignetteOptions;

    if-nez v0, :cond_0

    .line 1073
    new-instance v0, Lcom/google/android/filament/View$VignetteOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$VignetteOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mVignetteOptions:Lcom/google/android/filament/View$VignetteOptions;

    .line 1075
    :cond_0
    iget-object p0, p0, Lcom/google/android/filament/View;->mVignetteOptions:Lcom/google/android/filament/View$VignetteOptions;

    return-object p0
.end method

.method public isFrontFaceWindingInverted()Z
    .locals 2

    .line 933
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsFrontFaceWindingInverted(J)Z

    move-result p0

    return p0
.end method

.method public isPostProcessingEnabled()Z
    .locals 2

    .line 896
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsPostProcessingEnabled(J)Z

    move-result p0

    return p0
.end method

.method public setAmbientOcclusion(Lcom/google/android/filament/View$AmbientOcclusion;)V
    .locals 2

    .line 984
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View$AmbientOcclusion;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/View;->nSetAmbientOcclusion(JI)V

    return-void
.end method

.method public setAmbientOcclusionOptions(Lcom/google/android/filament/View$AmbientOcclusionOptions;)V
    .locals 9

    .line 1003
    iput-object p1, p0, Lcom/google/android/filament/View;->mAmbientOcclusionOptions:Lcom/google/android/filament/View$AmbientOcclusionOptions;

    .line 1004
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->radius:F

    iget v3, p1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->bias:F

    iget v4, p1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->power:F

    iget v5, p1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->resolution:F

    iget v6, p1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->intensity:F

    iget-object p0, p1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->quality:Lcom/google/android/filament/View$QualityLevel;

    .line 1005
    invoke-virtual {p0}, Lcom/google/android/filament/View$QualityLevel;->ordinal()I

    move-result v7

    iget-object p0, p1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->upsampling:Lcom/google/android/filament/View$QualityLevel;

    invoke-virtual {p0}, Lcom/google/android/filament/View$QualityLevel;->ordinal()I

    move-result v8

    .line 1004
    invoke-static/range {v0 .. v8}, Lcom/google/android/filament/View;->nSetAmbientOcclusionOptions(JFFFFFII)V

    return-void
.end method

.method public setAntiAliasing(Lcom/google/android/filament/View$AntiAliasing;)V
    .locals 2

    .line 752
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View$AntiAliasing;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/View;->nSetAntiAliasing(JI)V

    return-void
.end method

.method public setBlendMode(Lcom/google/android/filament/View$BlendMode;)V
    .locals 2

    .line 642
    iput-object p1, p0, Lcom/google/android/filament/View;->mBlendMode:Lcom/google/android/filament/View$BlendMode;

    .line 643
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View$BlendMode;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/View;->nSetBlendMode(JI)V

    return-void
.end method

.method public setBloomOptions(Lcom/google/android/filament/View$BloomOptions;)V
    .locals 12

    .line 1028
    iput-object p1, p0, Lcom/google/android/filament/View;->mBloomOptions:Lcom/google/android/filament/View$BloomOptions;

    .line 1029
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget-object p0, p1, Lcom/google/android/filament/View$BloomOptions;->dirt:Lcom/google/android/filament/Texture;

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/google/android/filament/View$BloomOptions;->dirt:Lcom/google/android/filament/Texture;

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget v4, p1, Lcom/google/android/filament/View$BloomOptions;->dirtStrength:F

    iget v5, p1, Lcom/google/android/filament/View$BloomOptions;->strength:F

    iget v6, p1, Lcom/google/android/filament/View$BloomOptions;->resolution:I

    iget v7, p1, Lcom/google/android/filament/View$BloomOptions;->anamorphism:F

    iget v8, p1, Lcom/google/android/filament/View$BloomOptions;->levels:I

    iget-object p0, p1, Lcom/google/android/filament/View$BloomOptions;->blendingMode:Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    .line 1031
    invoke-virtual {p0}, Lcom/google/android/filament/View$BloomOptions$BlendingMode;->ordinal()I

    move-result v9

    iget-boolean v10, p1, Lcom/google/android/filament/View$BloomOptions;->threshold:Z

    iget-boolean v11, p1, Lcom/google/android/filament/View$BloomOptions;->enabled:Z

    .line 1029
    invoke-static/range {v0 .. v11}, Lcom/google/android/filament/View;->nSetBloomOptions(JJFFIFIIZZ)V

    return-void
.end method

.method public setCamera(Lcom/google/android/filament/Camera;)V
    .locals 2

    .line 590
    iput-object p1, p0, Lcom/google/android/filament/View;->mCamera:Lcom/google/android/filament/Camera;

    .line 591
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/filament/Camera;->getNativeObject()J

    move-result-wide p0

    :goto_0
    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/View;->nSetCamera(JJ)V

    return-void
.end method

.method public setColorGrading(Lcom/google/android/filament/ColorGrading;)V
    .locals 4

    .line 798
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 799
    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading;->getNativeObject()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 798
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/View;->nSetColorGrading(JJ)V

    .line 800
    iput-object p1, p0, Lcom/google/android/filament/View;->mColorGrading:Lcom/google/android/filament/ColorGrading;

    return-void
.end method

.method public setDepthOfFieldOptions(Lcom/google/android/filament/View$DepthOfFieldOptions;)V
    .locals 6

    .line 1116
    iput-object p1, p0, Lcom/google/android/filament/View;->mDepthOfFieldOptions:Lcom/google/android/filament/View$DepthOfFieldOptions;

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->focusDistance:F

    iget v3, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->blurScale:F

    iget v4, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->maxApertureDiameter:F

    iget-boolean v5, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->enabled:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/View;->nSetDepthOfFieldOptions(JFFFZ)V

    return-void
.end method

.method public setDithering(Lcom/google/android/filament/View$Dithering;)V
    .locals 2

    .line 818
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View$Dithering;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/View;->nSetDithering(JI)V

    return-void
.end method

.method public setDynamicLightingOptions(FF)V
    .locals 2

    .line 975
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/View;->nSetDynamicLightingOptions(JFF)V

    return-void
.end method

.method public setDynamicResolutionOptions(Lcom/google/android/filament/View$DynamicResolutionOptions;)V
    .locals 7

    .line 847
    iput-object p1, p0, Lcom/google/android/filament/View;->mDynamicResolution:Lcom/google/android/filament/View$DynamicResolutionOptions;

    .line 848
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget-boolean v2, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->enabled:Z

    iget-boolean v3, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->homogeneousScaling:Z

    iget v4, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->minScale:F

    iget v5, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->maxScale:F

    iget-object p0, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->quality:Lcom/google/android/filament/View$QualityLevel;

    .line 853
    invoke-virtual {p0}, Lcom/google/android/filament/View$QualityLevel;->ordinal()I

    move-result v6

    .line 848
    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/View;->nSetDynamicResolutionOptions(JZZFFI)V

    return-void
.end method

.method public setFogOptions(Lcom/google/android/filament/View$FogOptions;)V
    .locals 15

    move-object/from16 v0, p1

    .line 1085
    iget-object v1, v0, Lcom/google/android/filament/View$FogOptions;->color:[F

    invoke-static {v1}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    move-object v1, p0

    .line 1086
    iput-object v0, v1, Lcom/google/android/filament/View;->mFogOptions:Lcom/google/android/filament/View$FogOptions;

    .line 1087
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v1

    iget v3, v0, Lcom/google/android/filament/View$FogOptions;->distance:F

    iget v4, v0, Lcom/google/android/filament/View$FogOptions;->maximumOpacity:F

    iget v5, v0, Lcom/google/android/filament/View$FogOptions;->height:F

    iget v6, v0, Lcom/google/android/filament/View$FogOptions;->heightFalloff:F

    iget-object v7, v0, Lcom/google/android/filament/View$FogOptions;->color:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, v0, Lcom/google/android/filament/View$FogOptions;->color:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, v0, Lcom/google/android/filament/View$FogOptions;->color:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    iget v10, v0, Lcom/google/android/filament/View$FogOptions;->density:F

    iget v11, v0, Lcom/google/android/filament/View$FogOptions;->inScatteringStart:F

    iget v12, v0, Lcom/google/android/filament/View$FogOptions;->inScatteringSize:F

    iget-boolean v13, v0, Lcom/google/android/filament/View$FogOptions;->fogColorFromIbl:Z

    iget-boolean v14, v0, Lcom/google/android/filament/View$FogOptions;->enabled:Z

    move-wide v0, v1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    invoke-static/range {v0 .. v13}, Lcom/google/android/filament/View;->nSetFogOptions(JFFFFFFFFFFZZ)V

    return-void
.end method

.method public setFrontFaceWindingInverted(Z)V
    .locals 2

    .line 950
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetFrontFaceWindingInverted(JZ)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 530
    iput-object p1, p0, Lcom/google/android/filament/View;->mName:Ljava/lang/String;

    .line 531
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetName(JLjava/lang/String;)V

    return-void
.end method

.method public setPostProcessingEnabled(Z)V
    .locals 2

    .line 924
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetPostProcessingEnabled(JZ)V

    return-void
.end method

.method public setRenderQuality(Lcom/google/android/filament/View$RenderQuality;)V
    .locals 2

    .line 874
    iput-object p1, p0, Lcom/google/android/filament/View;->mRenderQuality:Lcom/google/android/filament/View$RenderQuality;

    .line 875
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget-object p0, p1, Lcom/google/android/filament/View$RenderQuality;->hdrColorBuffer:Lcom/google/android/filament/View$QualityLevel;

    invoke-virtual {p0}, Lcom/google/android/filament/View$QualityLevel;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/View;->nSetRenderQuality(JI)V

    return-void
.end method

.method public setRenderTarget(Lcom/google/android/filament/RenderTarget;)V
    .locals 2

    .line 698
    iput-object p1, p0, Lcom/google/android/filament/View;->mRenderTarget:Lcom/google/android/filament/RenderTarget;

    .line 699
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->getNativeObject()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/View;->nSetRenderTarget(JJ)V

    return-void
.end method

.method public setSampleCount(I)V
    .locals 2

    .line 726
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetSampleCount(JI)V

    return-void
.end method

.method public setScene(Lcom/google/android/filament/Scene;)V
    .locals 2

    .line 559
    iput-object p1, p0, Lcom/google/android/filament/View;->mScene:Lcom/google/android/filament/Scene;

    .line 560
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->getNativeObject()J

    move-result-wide p0

    :goto_0
    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/View;->nSetScene(JJ)V

    return-void
.end method

.method public setShadowsEnabled(Z)V
    .locals 2

    .line 684
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetShadowsEnabled(JZ)V

    return-void
.end method

.method public setToneMapping(Lcom/google/android/filament/View$ToneMapping;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setViewport(Lcom/google/android/filament/Viewport;)V
    .locals 6

    .line 620
    iput-object p1, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    .line 621
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    iget v2, p1, Lcom/google/android/filament/Viewport;->left:I

    iget-object p1, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    iget v3, p1, Lcom/google/android/filament/Viewport;->bottom:I

    iget-object p1, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    iget v4, p1, Lcom/google/android/filament/Viewport;->width:I

    iget-object p0, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    iget v5, p0, Lcom/google/android/filament/Viewport;->height:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/View;->nSetViewport(JIIII)V

    return-void
.end method

.method public setVignetteOptions(Lcom/google/android/filament/View$VignetteOptions;)V
    .locals 11

    .line 1056
    iget-object v0, p1, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    invoke-static {v0}, Lcom/google/android/filament/Asserts;->assertFloat4In([F)V

    .line 1057
    iput-object p1, p0, Lcom/google/android/filament/View;->mVignetteOptions:Lcom/google/android/filament/View$VignetteOptions;

    .line 1058
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v1

    iget v3, p1, Lcom/google/android/filament/View$VignetteOptions;->midPoint:F

    iget v4, p1, Lcom/google/android/filament/View$VignetteOptions;->roundness:F

    iget v5, p1, Lcom/google/android/filament/View$VignetteOptions;->feather:F

    iget-object p0, p1, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    const/4 v0, 0x0

    aget v6, p0, v0

    iget-object p0, p1, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    const/4 v0, 0x1

    aget v7, p0, v0

    iget-object p0, p1, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    const/4 v0, 0x2

    aget v8, p0, v0

    iget-object p0, p1, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    const/4 v0, 0x3

    aget v9, p0, v0

    iget-boolean v10, p1, Lcom/google/android/filament/View$VignetteOptions;->enabled:Z

    invoke-static/range {v1 .. v10}, Lcom/google/android/filament/View;->nSetVignetteOptions(JFFFFFFFZ)V

    return-void
.end method

.method public setVisibleLayers(II)V
    .locals 2

    .line 673
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    and-int/lit16 p0, p1, 0xff

    and-int/lit16 p1, p2, 0xff

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/View;->nSetVisibleLayers(JII)V

    return-void
.end method
