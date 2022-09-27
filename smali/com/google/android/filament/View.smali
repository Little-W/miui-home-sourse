.class public Lcom/google/android/filament/View;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/View$InternalOnPickCallback;,
        Lcom/google/android/filament/View$OnPickCallback;,
        Lcom/google/android/filament/View$PickingQueryResult;,
        Lcom/google/android/filament/View$TargetBufferFlags;,
        Lcom/google/android/filament/View$SoftShadowOptions;,
        Lcom/google/android/filament/View$VsmShadowOptions;,
        Lcom/google/android/filament/View$ShadowType;,
        Lcom/google/android/filament/View$Dithering;,
        Lcom/google/android/filament/View$ToneMapping;,
        Lcom/google/android/filament/View$AntiAliasing;,
        Lcom/google/android/filament/View$AmbientOcclusion;,
        Lcom/google/android/filament/View$RenderQuality;,
        Lcom/google/android/filament/View$VignetteOptions;,
        Lcom/google/android/filament/View$DepthOfFieldOptions;,
        Lcom/google/android/filament/View$FogOptions;,
        Lcom/google/android/filament/View$BloomOptions;,
        Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;,
        Lcom/google/android/filament/View$TemporalAntiAliasingOptions;,
        Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;,
        Lcom/google/android/filament/View$AmbientOcclusionOptions;,
        Lcom/google/android/filament/View$DynamicResolutionOptions;,
        Lcom/google/android/filament/View$BlendMode;,
        Lcom/google/android/filament/View$QualityLevel;
    }
.end annotation


# static fields
.field private static final sAmbientOcclusionValues:[Lcom/google/android/filament/View$AmbientOcclusion;

.field private static final sAntiAliasingValues:[Lcom/google/android/filament/View$AntiAliasing;

.field private static final sDitheringValues:[Lcom/google/android/filament/View$Dithering;


# instance fields
.field private mAmbientOcclusionOptions:Lcom/google/android/filament/View$AmbientOcclusionOptions;

.field private mBlendMode:Lcom/google/android/filament/View$BlendMode;

.field private mBloomOptions:Lcom/google/android/filament/View$BloomOptions;

.field private mCamera:Lcom/google/android/filament/Camera;

.field private mColorGrading:Lcom/google/android/filament/ColorGrading;

.field private mDepthOfFieldOptions:Lcom/google/android/filament/View$DepthOfFieldOptions;

.field private mDynamicResolution:Lcom/google/android/filament/View$DynamicResolutionOptions;

.field private mFogOptions:Lcom/google/android/filament/View$FogOptions;

.field private mMultiSampleAntiAliasingOptions:Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;

.field private mName:Ljava/lang/String;

.field private mNativeObject:J

.field private mRenderQuality:Lcom/google/android/filament/View$RenderQuality;

.field private mRenderTarget:Lcom/google/android/filament/RenderTarget;

.field private mScene:Lcom/google/android/filament/Scene;

.field private mScreenSpaceReflectionsOptions:Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;

.field private mSoftShadowOptions:Lcom/google/android/filament/View$SoftShadowOptions;

.field private mTemporalAntiAliasingOptions:Lcom/google/android/filament/View$TemporalAntiAliasingOptions;

.field private mViewport:Lcom/google/android/filament/Viewport;

.field private mVignetteOptions:Lcom/google/android/filament/View$VignetteOptions;

.field private mVsmShadowOptions:Lcom/google/android/filament/View$VsmShadowOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Lcom/google/android/filament/View$AntiAliasing;->values()[Lcom/google/android/filament/View$AntiAliasing;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View;->sAntiAliasingValues:[Lcom/google/android/filament/View$AntiAliasing;

    .line 63
    invoke-static {}, Lcom/google/android/filament/View$Dithering;->values()[Lcom/google/android/filament/View$Dithering;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View;->sDitheringValues:[Lcom/google/android/filament/View$Dithering;

    .line 64
    invoke-static {}, Lcom/google/android/filament/View$AmbientOcclusion;->values()[Lcom/google/android/filament/View$AmbientOcclusion;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View;->sAmbientOcclusionValues:[Lcom/google/android/filament/View$AmbientOcclusion;

    return-void
.end method

.method constructor <init>(J)V
    .locals 2

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/google/android/filament/Viewport;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/filament/Viewport;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    .line 899
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

.method private static native nIsScreenSpaceRefractionEnabled(J)Z
.end method

.method private static native nIsShadowingEnabled(J)Z
.end method

.method private static native nPick(JIILjava/lang/Object;Lcom/google/android/filament/View$InternalOnPickCallback;)V
.end method

.method private static native nSetAmbientOcclusion(JI)V
.end method

.method private static native nSetAmbientOcclusionOptions(JFFFFFFIIIZZF)V
.end method

.method private static native nSetAntiAliasing(JI)V
.end method

.method private static native nSetBlendMode(JI)V
.end method

.method private static native nSetBloomOptions(JJFFIFIIZZFZZFIFFFFF)V
.end method

.method private static native nSetCamera(JJ)V
.end method

.method private static native nSetColorGrading(JJ)V
.end method

.method private static native nSetDepthOfFieldOptions(JFFZIZIIIII)V
.end method

.method private static native nSetDithering(JI)V
.end method

.method private static native nSetDynamicLightingOptions(JFF)V
.end method

.method private static native nSetDynamicResolutionOptions(JZZFFFI)V
.end method

.method private static native nSetFogOptions(JFFFFFFFFFFZZ)V
.end method

.method private static native nSetFrontFaceWindingInverted(JZ)V
.end method

.method private static native nSetMultiSampleAntiAliasingOptions(JZIZ)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetPostProcessingEnabled(JZ)V
.end method

.method private static native nSetRenderQuality(JI)V
.end method

.method private static native nSetRenderTarget(JJ)V
.end method

.method private static native nSetSSCTOptions(JFFFFFFFFFIIZ)V
.end method

.method private static native nSetSampleCount(JI)V
.end method

.method private static native nSetScene(JJ)V
.end method

.method private static native nSetScreenSpaceReflectionsOptions(JFFFFZ)V
.end method

.method private static native nSetScreenSpaceRefractionEnabled(JZ)V
.end method

.method private static native nSetShadowType(JI)V
.end method

.method private static native nSetShadowingEnabled(JZ)V
.end method

.method private static native nSetSoftShadowOptions(JFF)V
.end method

.method private static native nSetTemporalAntiAliasingOptions(JFFZ)V
.end method

.method private static native nSetViewport(JIIII)V
.end method

.method private static native nSetVignetteOptions(JFFFFFFFZ)V
.end method

.method private static native nSetVisibleLayers(JII)V
.end method

.method private static native nSetVsmShadowOptions(JIZFF)V
.end method


# virtual methods
.method clearNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1793
    iput-wide v0, p0, Lcom/google/android/filament/View;->mNativeObject:J

    return-void
.end method

.method public getAmbientOcclusion()Lcom/google/android/filament/View$AmbientOcclusion;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1566
    sget-object v0, Lcom/google/android/filament/View;->sAmbientOcclusionValues:[Lcom/google/android/filament/View$AmbientOcclusion;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/View;->nGetAmbientOcclusion(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAmbientOcclusionOptions()Lcom/google/android/filament/View$AmbientOcclusionOptions;
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/google/android/filament/View;->mAmbientOcclusionOptions:Lcom/google/android/filament/View$AmbientOcclusionOptions;

    if-nez v0, :cond_0

    .line 1595
    new-instance v0, Lcom/google/android/filament/View$AmbientOcclusionOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$AmbientOcclusionOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mAmbientOcclusionOptions:Lcom/google/android/filament/View$AmbientOcclusionOptions;

    .line 1597
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mAmbientOcclusionOptions:Lcom/google/android/filament/View$AmbientOcclusionOptions;

    return-object v0
.end method

.method public getAntiAliasing()Lcom/google/android/filament/View$AntiAliasing;
    .locals 3

    .line 1173
    sget-object v0, Lcom/google/android/filament/View;->sAntiAliasingValues:[Lcom/google/android/filament/View$AntiAliasing;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/View;->nGetAntiAliasing(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getBlendMode()Lcom/google/android/filament/View$BlendMode;
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/google/android/filament/View;->mBlendMode:Lcom/google/android/filament/View$BlendMode;

    return-object v0
.end method

.method public getBloomOptions()Lcom/google/android/filament/View$BloomOptions;
    .locals 1

    .line 1625
    iget-object v0, p0, Lcom/google/android/filament/View;->mBloomOptions:Lcom/google/android/filament/View$BloomOptions;

    if-nez v0, :cond_0

    .line 1626
    new-instance v0, Lcom/google/android/filament/View$BloomOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$BloomOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mBloomOptions:Lcom/google/android/filament/View$BloomOptions;

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mBloomOptions:Lcom/google/android/filament/View$BloomOptions;

    return-object v0
.end method

.method public getCamera()Lcom/google/android/filament/Camera;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/google/android/filament/View;->mCamera:Lcom/google/android/filament/Camera;

    return-object v0
.end method

.method public getColorGrading()Lcom/google/android/filament/ColorGrading;
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/google/android/filament/View;->mColorGrading:Lcom/google/android/filament/ColorGrading;

    return-object v0
.end method

.method public getDepthOfFieldOptions()Lcom/google/android/filament/View$DepthOfFieldOptions;
    .locals 1

    .line 1713
    iget-object v0, p0, Lcom/google/android/filament/View;->mDepthOfFieldOptions:Lcom/google/android/filament/View$DepthOfFieldOptions;

    if-nez v0, :cond_0

    .line 1714
    new-instance v0, Lcom/google/android/filament/View$DepthOfFieldOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$DepthOfFieldOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mDepthOfFieldOptions:Lcom/google/android/filament/View$DepthOfFieldOptions;

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mDepthOfFieldOptions:Lcom/google/android/filament/View$DepthOfFieldOptions;

    return-object v0
.end method

.method public getDithering()Lcom/google/android/filament/View$Dithering;
    .locals 3

    .line 1310
    sget-object v0, Lcom/google/android/filament/View;->sDitheringValues:[Lcom/google/android/filament/View$Dithering;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/View;->nGetDithering(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDynamicResolutionOptions()Lcom/google/android/filament/View$DynamicResolutionOptions;
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/google/android/filament/View;->mDynamicResolution:Lcom/google/android/filament/View$DynamicResolutionOptions;

    if-nez v0, :cond_0

    .line 1346
    new-instance v0, Lcom/google/android/filament/View$DynamicResolutionOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$DynamicResolutionOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mDynamicResolution:Lcom/google/android/filament/View$DynamicResolutionOptions;

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mDynamicResolution:Lcom/google/android/filament/View$DynamicResolutionOptions;

    return-object v0
.end method

.method public getFogOptions()Lcom/google/android/filament/View$FogOptions;
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/google/android/filament/View;->mFogOptions:Lcom/google/android/filament/View$FogOptions;

    if-nez v0, :cond_0

    .line 1685
    new-instance v0, Lcom/google/android/filament/View$FogOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$FogOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mFogOptions:Lcom/google/android/filament/View$FogOptions;

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mFogOptions:Lcom/google/android/filament/View$FogOptions;

    return-object v0
.end method

.method public getMultiSampleAntiAliasingOptions()Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/google/android/filament/View;->mMultiSampleAntiAliasingOptions:Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;

    if-nez v0, :cond_0

    .line 1195
    new-instance v0, Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mMultiSampleAntiAliasingOptions:Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mMultiSampleAntiAliasingOptions:Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/google/android/filament/View;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeObject()J
    .locals 4

    .line 1786
    iget-wide v0, p0, Lcom/google/android/filament/View;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 1787
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRenderQuality()Lcom/google/android/filament/View$RenderQuality;
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/google/android/filament/View;->mRenderQuality:Lcom/google/android/filament/View$RenderQuality;

    if-nez v0, :cond_0

    .line 1368
    new-instance v0, Lcom/google/android/filament/View$RenderQuality;

    invoke-direct {v0}, Lcom/google/android/filament/View$RenderQuality;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mRenderQuality:Lcom/google/android/filament/View$RenderQuality;

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mRenderQuality:Lcom/google/android/filament/View$RenderQuality;

    return-object v0
.end method

.method public getRenderTarget()Lcom/google/android/filament/RenderTarget;
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/google/android/filament/View;->mRenderTarget:Lcom/google/android/filament/RenderTarget;

    return-object v0
.end method

.method public getSampleCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1149
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nGetSampleCount(J)I

    move-result v0

    return v0
.end method

.method public getScene()Lcom/google/android/filament/Scene;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/google/android/filament/View;->mScene:Lcom/google/android/filament/Scene;

    return-object v0
.end method

.method public getScreenSpaceReflectionsOptions()Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;
    .locals 1

    .line 1242
    iget-object v0, p0, Lcom/google/android/filament/View;->mScreenSpaceReflectionsOptions:Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;

    if-nez v0, :cond_0

    .line 1243
    new-instance v0, Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mScreenSpaceReflectionsOptions:Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mScreenSpaceReflectionsOptions:Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;

    return-object v0
.end method

.method public getSoftShadowOptions()Lcom/google/android/filament/View$SoftShadowOptions;
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/google/android/filament/View;->mSoftShadowOptions:Lcom/google/android/filament/View$SoftShadowOptions;

    if-nez v0, :cond_0

    .line 1543
    new-instance v0, Lcom/google/android/filament/View$SoftShadowOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$SoftShadowOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mSoftShadowOptions:Lcom/google/android/filament/View$SoftShadowOptions;

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mSoftShadowOptions:Lcom/google/android/filament/View$SoftShadowOptions;

    return-object v0
.end method

.method public getTemporalAntiAliasingOptions()Lcom/google/android/filament/View$TemporalAntiAliasingOptions;
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/google/android/filament/View;->mTemporalAntiAliasingOptions:Lcom/google/android/filament/View$TemporalAntiAliasingOptions;

    if-nez v0, :cond_0

    .line 1230
    new-instance v0, Lcom/google/android/filament/View$TemporalAntiAliasingOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$TemporalAntiAliasingOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mTemporalAntiAliasingOptions:Lcom/google/android/filament/View$TemporalAntiAliasingOptions;

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mTemporalAntiAliasingOptions:Lcom/google/android/filament/View$TemporalAntiAliasingOptions;

    return-object v0
.end method

.method public getToneMapping()Lcom/google/android/filament/View$ToneMapping;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1268
    sget-object v0, Lcom/google/android/filament/View$ToneMapping;->ACES:Lcom/google/android/filament/View$ToneMapping;

    return-object v0
.end method

.method public getViewport()Lcom/google/android/filament/Viewport;
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    return-object v0
.end method

.method public getVignetteOptions()Lcom/google/android/filament/View$VignetteOptions;
    .locals 1

    .line 1654
    iget-object v0, p0, Lcom/google/android/filament/View;->mVignetteOptions:Lcom/google/android/filament/View$VignetteOptions;

    if-nez v0, :cond_0

    .line 1655
    new-instance v0, Lcom/google/android/filament/View$VignetteOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$VignetteOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mVignetteOptions:Lcom/google/android/filament/View$VignetteOptions;

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mVignetteOptions:Lcom/google/android/filament/View$VignetteOptions;

    return-object v0
.end method

.method public getVsmShadowOptions()Lcom/google/android/filament/View$VsmShadowOptions;
    .locals 1

    .line 1511
    iget-object v0, p0, Lcom/google/android/filament/View;->mVsmShadowOptions:Lcom/google/android/filament/View$VsmShadowOptions;

    if-nez v0, :cond_0

    .line 1512
    new-instance v0, Lcom/google/android/filament/View$VsmShadowOptions;

    invoke-direct {v0}, Lcom/google/android/filament/View$VsmShadowOptions;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->mVsmShadowOptions:Lcom/google/android/filament/View$VsmShadowOptions;

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->mVsmShadowOptions:Lcom/google/android/filament/View$VsmShadowOptions;

    return-object v0
.end method

.method public isFrontFaceWindingInverted()Z
    .locals 2

    .line 1421
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsFrontFaceWindingInverted(J)Z

    move-result v0

    return v0
.end method

.method public isPostProcessingEnabled()Z
    .locals 2

    .line 1379
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsPostProcessingEnabled(J)Z

    move-result v0

    return v0
.end method

.method isScreenSpaceRefractionEnabled()Z
    .locals 2

    .line 1083
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsScreenSpaceRefractionEnabled(J)Z

    move-result v0

    return v0
.end method

.method isShadowingEnabled()Z
    .locals 2

    .line 1067
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsShadowingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public pick(IILjava/lang/Object;Lcom/google/android/filament/View$OnPickCallback;)V
    .locals 6

    .line 1759
    new-instance v5, Lcom/google/android/filament/View$InternalOnPickCallback;

    invoke-direct {v5, p4}, Lcom/google/android/filament/View$InternalOnPickCallback;-><init>(Lcom/google/android/filament/View$OnPickCallback;)V

    .line 1760
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/View;->nPick(JIILjava/lang/Object;Lcom/google/android/filament/View$InternalOnPickCallback;)V

    return-void
.end method

.method public setAmbientOcclusion(Lcom/google/android/filament/View$AmbientOcclusion;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1555
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View$AmbientOcclusion;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetAmbientOcclusion(JI)V

    return-void
.end method

.method public setAmbientOcclusionOptions(Lcom/google/android/filament/View$AmbientOcclusionOptions;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1575
    iput-object v1, v0, Lcom/google/android/filament/View;->mAmbientOcclusionOptions:Lcom/google/android/filament/View$AmbientOcclusionOptions;

    .line 1576
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v2

    iget v4, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->radius:F

    iget v5, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->bias:F

    iget v6, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->power:F

    iget v7, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->resolution:F

    iget v8, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->intensity:F

    iget v9, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->bilateralThreshold:F

    iget-object v10, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->quality:Lcom/google/android/filament/View$QualityLevel;

    .line 1578
    invoke-virtual {v10}, Lcom/google/android/filament/View$QualityLevel;->ordinal()I

    move-result v10

    iget-object v11, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->lowPassFilter:Lcom/google/android/filament/View$QualityLevel;

    invoke-virtual {v11}, Lcom/google/android/filament/View$QualityLevel;->ordinal()I

    move-result v11

    iget-object v12, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->upsampling:Lcom/google/android/filament/View$QualityLevel;

    invoke-virtual {v12}, Lcom/google/android/filament/View$QualityLevel;->ordinal()I

    move-result v12

    iget-boolean v13, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->enabled:Z

    iget-boolean v14, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->bentNormals:Z

    iget v15, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->minHorizonAngleRad:F

    .line 1576
    invoke-static/range {v2 .. v15}, Lcom/google/android/filament/View;->nSetAmbientOcclusionOptions(JFFFFFFIIIZZF)V

    .line 1580
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v16

    iget v2, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctLightConeRad:F

    iget v3, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctStartTraceDistance:F

    iget v4, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctContactDistanceMax:F

    iget v5, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctIntensity:F

    iget-object v6, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctLightDirection:[F

    const/4 v7, 0x0

    aget v22, v6, v7

    iget-object v6, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctLightDirection:[F

    const/4 v7, 0x1

    aget v23, v6, v7

    iget-object v6, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctLightDirection:[F

    const/4 v7, 0x2

    aget v24, v6, v7

    iget v6, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctDepthBias:F

    iget v7, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctDepthSlopeBias:F

    iget v8, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctSampleCount:I

    iget v9, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctRayCount:I

    iget-boolean v1, v1, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctEnabled:Z

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v1

    invoke-static/range {v16 .. v29}, Lcom/google/android/filament/View;->nSetSSCTOptions(JFFFFFFFFFIIZ)V

    return-void
.end method

.method public setAntiAliasing(Lcom/google/android/filament/View$AntiAliasing;)V
    .locals 2

    .line 1162
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View$AntiAliasing;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetAntiAliasing(JI)V

    return-void
.end method

.method public setBlendMode(Lcom/google/android/filament/View$BlendMode;)V
    .locals 2

    .line 1018
    iput-object p1, p0, Lcom/google/android/filament/View;->mBlendMode:Lcom/google/android/filament/View$BlendMode;

    .line 1019
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View$BlendMode;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetBlendMode(JI)V

    return-void
.end method

.method public setBloomOptions(Lcom/google/android/filament/View$BloomOptions;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1607
    iput-object v1, v0, Lcom/google/android/filament/View;->mBloomOptions:Lcom/google/android/filament/View$BloomOptions;

    .line 1608
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v2

    iget-object v4, v1, Lcom/google/android/filament/View$BloomOptions;->dirt:Lcom/google/android/filament/Texture;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/google/android/filament/View$BloomOptions;->dirt:Lcom/google/android/filament/Texture;

    invoke-virtual {v4}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    iget v6, v1, Lcom/google/android/filament/View$BloomOptions;->dirtStrength:F

    iget v7, v1, Lcom/google/android/filament/View$BloomOptions;->strength:F

    iget v8, v1, Lcom/google/android/filament/View$BloomOptions;->resolution:I

    iget v9, v1, Lcom/google/android/filament/View$BloomOptions;->anamorphism:F

    iget v10, v1, Lcom/google/android/filament/View$BloomOptions;->levels:I

    iget-object v11, v1, Lcom/google/android/filament/View$BloomOptions;->blendingMode:Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    .line 1610
    invoke-virtual {v11}, Lcom/google/android/filament/View$BloomOptions$BlendingMode;->ordinal()I

    move-result v11

    iget-boolean v12, v1, Lcom/google/android/filament/View$BloomOptions;->threshold:Z

    iget-boolean v13, v1, Lcom/google/android/filament/View$BloomOptions;->enabled:Z

    iget v14, v1, Lcom/google/android/filament/View$BloomOptions;->highlight:F

    iget-boolean v15, v1, Lcom/google/android/filament/View$BloomOptions;->lensFlare:Z

    iget-boolean v0, v1, Lcom/google/android/filament/View$BloomOptions;->starburst:Z

    move/from16 v16, v0

    iget v0, v1, Lcom/google/android/filament/View$BloomOptions;->chromaticAberration:F

    move/from16 v17, v0

    iget v0, v1, Lcom/google/android/filament/View$BloomOptions;->ghostCount:I

    move/from16 v18, v0

    iget v0, v1, Lcom/google/android/filament/View$BloomOptions;->ghostSpacing:F

    move/from16 v19, v0

    iget v0, v1, Lcom/google/android/filament/View$BloomOptions;->ghostThreshold:F

    move/from16 v20, v0

    iget v0, v1, Lcom/google/android/filament/View$BloomOptions;->haloThickness:F

    move/from16 v21, v0

    iget v0, v1, Lcom/google/android/filament/View$BloomOptions;->haloRadius:F

    move/from16 v22, v0

    iget v0, v1, Lcom/google/android/filament/View$BloomOptions;->haloThreshold:F

    move/from16 v23, v0

    .line 1608
    invoke-static/range {v2 .. v23}, Lcom/google/android/filament/View;->nSetBloomOptions(JJFFIFIIZZFZZFIFFFFF)V

    return-void
.end method

.method public setCamera(Lcom/google/android/filament/Camera;)V
    .locals 4

    .line 966
    iput-object p1, p0, Lcom/google/android/filament/View;->mCamera:Lcom/google/android/filament/Camera;

    .line 967
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/filament/Camera;->getNativeObject()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/View;->nSetCamera(JJ)V

    return-void
.end method

.method public setColorGrading(Lcom/google/android/filament/ColorGrading;)V
    .locals 4

    .line 1280
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 1281
    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading;->getNativeObject()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 1280
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/View;->nSetColorGrading(JJ)V

    .line 1282
    iput-object p1, p0, Lcom/google/android/filament/View;->mColorGrading:Lcom/google/android/filament/ColorGrading;

    return-void
.end method

.method public setDepthOfFieldOptions(Lcom/google/android/filament/View$DepthOfFieldOptions;)V
    .locals 12

    .line 1698
    iput-object p1, p0, Lcom/google/android/filament/View;->mDepthOfFieldOptions:Lcom/google/android/filament/View$DepthOfFieldOptions;

    .line 1699
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->cocScale:F

    iget v3, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->maxApertureDiameter:F

    iget-boolean v4, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->enabled:Z

    iget-object v5, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->filter:Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;

    .line 1700
    invoke-virtual {v5}, Lcom/google/android/filament/View$DepthOfFieldOptions$Filter;->ordinal()I

    move-result v5

    iget-boolean v6, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->nativeResolution:Z

    iget v7, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->foregroundRingCount:I

    iget v8, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->backgroundRingCount:I

    iget v9, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->fastGatherRingCount:I

    iget v10, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->maxForegroundCOC:I

    iget v11, p1, Lcom/google/android/filament/View$DepthOfFieldOptions;->maxBackgroundCOC:I

    .line 1699
    invoke-static/range {v0 .. v11}, Lcom/google/android/filament/View;->nSetDepthOfFieldOptions(JFFZIZIIIII)V

    return-void
.end method

.method public setDithering(Lcom/google/android/filament/View$Dithering;)V
    .locals 2

    .line 1300
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View$Dithering;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetDithering(JI)V

    return-void
.end method

.method public setDynamicLightingOptions(FF)V
    .locals 2

    .line 1463
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/View;->nSetDynamicLightingOptions(JFF)V

    return-void
.end method

.method public setDynamicResolutionOptions(Lcom/google/android/filament/View$DynamicResolutionOptions;)V
    .locals 8

    .line 1329
    iput-object p1, p0, Lcom/google/android/filament/View;->mDynamicResolution:Lcom/google/android/filament/View$DynamicResolutionOptions;

    .line 1330
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget-boolean v2, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->enabled:Z

    iget-boolean v3, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->homogeneousScaling:Z

    iget v4, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->minScale:F

    iget v5, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->maxScale:F

    iget v6, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->sharpness:F

    iget-object p1, p1, Lcom/google/android/filament/View$DynamicResolutionOptions;->quality:Lcom/google/android/filament/View$QualityLevel;

    .line 1336
    invoke-virtual {p1}, Lcom/google/android/filament/View$QualityLevel;->ordinal()I

    move-result v7

    .line 1330
    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/View;->nSetDynamicResolutionOptions(JZZFFFI)V

    return-void
.end method

.method public setFogOptions(Lcom/google/android/filament/View$FogOptions;)V
    .locals 16

    move-object/from16 v0, p1

    .line 1667
    iget-object v1, v0, Lcom/google/android/filament/View$FogOptions;->color:[F

    invoke-static {v1}, Lcom/google/android/filament/Asserts;->assertFloat3In([F)V

    move-object/from16 v1, p0

    .line 1668
    iput-object v0, v1, Lcom/google/android/filament/View;->mFogOptions:Lcom/google/android/filament/View$FogOptions;

    .line 1669
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v2

    iget v4, v0, Lcom/google/android/filament/View$FogOptions;->distance:F

    iget v5, v0, Lcom/google/android/filament/View$FogOptions;->maximumOpacity:F

    iget v6, v0, Lcom/google/android/filament/View$FogOptions;->height:F

    iget v7, v0, Lcom/google/android/filament/View$FogOptions;->heightFalloff:F

    iget-object v8, v0, Lcom/google/android/filament/View$FogOptions;->color:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, v0, Lcom/google/android/filament/View$FogOptions;->color:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, v0, Lcom/google/android/filament/View$FogOptions;->color:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    iget v11, v0, Lcom/google/android/filament/View$FogOptions;->density:F

    iget v12, v0, Lcom/google/android/filament/View$FogOptions;->inScatteringStart:F

    iget v13, v0, Lcom/google/android/filament/View$FogOptions;->inScatteringSize:F

    iget-boolean v14, v0, Lcom/google/android/filament/View$FogOptions;->fogColorFromIbl:Z

    iget-boolean v15, v0, Lcom/google/android/filament/View$FogOptions;->enabled:Z

    invoke-static/range {v2 .. v15}, Lcom/google/android/filament/View;->nSetFogOptions(JFFFFFFFFFFZZ)V

    return-void
.end method

.method public setFrontFaceWindingInverted(Z)V
    .locals 2

    .line 1438
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetFrontFaceWindingInverted(JZ)V

    return-void
.end method

.method public setMultiSampleAntiAliasingOptions(Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;)V
    .locals 4

    .line 1182
    iput-object p1, p0, Lcom/google/android/filament/View;->mMultiSampleAntiAliasingOptions:Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget-boolean v2, p1, Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;->enabled:Z

    iget v3, p1, Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;->sampleCount:I

    iget-boolean p1, p1, Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;->customResolve:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/filament/View;->nSetMultiSampleAntiAliasingOptions(JZIZ)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 906
    iput-object p1, p0, Lcom/google/android/filament/View;->mName:Ljava/lang/String;

    .line 907
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetName(JLjava/lang/String;)V

    return-void
.end method

.method public setPostProcessingEnabled(Z)V
    .locals 2

    .line 1412
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetPostProcessingEnabled(JZ)V

    return-void
.end method

.method public setRenderQuality(Lcom/google/android/filament/View$RenderQuality;)V
    .locals 2

    .line 1357
    iput-object p1, p0, Lcom/google/android/filament/View;->mRenderQuality:Lcom/google/android/filament/View$RenderQuality;

    .line 1358
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget-object p1, p1, Lcom/google/android/filament/View$RenderQuality;->hdrColorBuffer:Lcom/google/android/filament/View$QualityLevel;

    invoke-virtual {p1}, Lcom/google/android/filament/View$QualityLevel;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetRenderQuality(JI)V

    return-void
.end method

.method public setRenderTarget(Lcom/google/android/filament/RenderTarget;)V
    .locals 4

    .line 1102
    iput-object p1, p0, Lcom/google/android/filament/View;->mRenderTarget:Lcom/google/android/filament/RenderTarget;

    .line 1103
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->getNativeObject()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/View;->nSetRenderTarget(JJ)V

    return-void
.end method

.method public setSampleCount(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1133
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetSampleCount(JI)V

    return-void
.end method

.method public setScene(Lcom/google/android/filament/Scene;)V
    .locals 4

    .line 935
    iput-object p1, p0, Lcom/google/android/filament/View;->mScene:Lcom/google/android/filament/Scene;

    .line 936
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->getNativeObject()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/View;->nSetScene(JJ)V

    return-void
.end method

.method public setScreenSpaceReflectionsOptions(Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;)V
    .locals 7

    .line 1217
    iput-object p1, p0, Lcom/google/android/filament/View;->mScreenSpaceReflectionsOptions:Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;

    .line 1218
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;->thickness:F

    iget v3, p1, Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;->bias:F

    iget v4, p1, Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;->maxDistance:F

    iget v5, p1, Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;->stride:F

    iget-boolean v6, p1, Lcom/google/android/filament/View$ScreenSpaceReflectionsOptions;->enabled:Z

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/View;->nSetScreenSpaceReflectionsOptions(JFFFFZ)V

    return-void
.end method

.method public setScreenSpaceRefractionEnabled(Z)V
    .locals 2

    .line 1076
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetScreenSpaceRefractionEnabled(JZ)V

    return-void
.end method

.method public setShadowType(Lcom/google/android/filament/View$ShadowType;)V
    .locals 2

    .line 1482
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View$ShadowType;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetShadowType(JI)V

    return-void
.end method

.method public setShadowingEnabled(Z)V
    .locals 2

    .line 1060
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetShadowingEnabled(JZ)V

    return-void
.end method

.method public setSoftShadowOptions(Lcom/google/android/filament/View$SoftShadowOptions;)V
    .locals 3

    .line 1531
    iput-object p1, p0, Lcom/google/android/filament/View;->mSoftShadowOptions:Lcom/google/android/filament/View$SoftShadowOptions;

    .line 1532
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$SoftShadowOptions;->penumbraScale:F

    iget p1, p1, Lcom/google/android/filament/View$SoftShadowOptions;->penumbraRatioScale:F

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/filament/View;->nSetSoftShadowOptions(JFF)V

    return-void
.end method

.method public setTemporalAntiAliasingOptions(Lcom/google/android/filament/View$TemporalAntiAliasingOptions;)V
    .locals 4

    .line 1206
    iput-object p1, p0, Lcom/google/android/filament/View;->mTemporalAntiAliasingOptions:Lcom/google/android/filament/View$TemporalAntiAliasingOptions;

    .line 1207
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$TemporalAntiAliasingOptions;->feedback:F

    iget v3, p1, Lcom/google/android/filament/View$TemporalAntiAliasingOptions;->filterWidth:F

    iget-boolean p1, p1, Lcom/google/android/filament/View$TemporalAntiAliasingOptions;->enabled:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/filament/View;->nSetTemporalAntiAliasingOptions(JFFZ)V

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

    .line 996
    iput-object p1, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    .line 997
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    iget v2, p1, Lcom/google/android/filament/Viewport;->left:I

    iget-object p1, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    iget v3, p1, Lcom/google/android/filament/Viewport;->bottom:I

    iget-object p1, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    iget v4, p1, Lcom/google/android/filament/Viewport;->width:I

    iget-object p1, p0, Lcom/google/android/filament/View;->mViewport:Lcom/google/android/filament/Viewport;

    iget v5, p1, Lcom/google/android/filament/Viewport;->height:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/View;->nSetViewport(JIIII)V

    return-void
.end method

.method public setVignetteOptions(Lcom/google/android/filament/View$VignetteOptions;)V
    .locals 11

    .line 1638
    iget-object v0, p1, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    invoke-static {v0}, Lcom/google/android/filament/Asserts;->assertFloat4In([F)V

    .line 1639
    iput-object p1, p0, Lcom/google/android/filament/View;->mVignetteOptions:Lcom/google/android/filament/View$VignetteOptions;

    .line 1640
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v1

    iget v3, p1, Lcom/google/android/filament/View$VignetteOptions;->midPoint:F

    iget v4, p1, Lcom/google/android/filament/View$VignetteOptions;->roundness:F

    iget v5, p1, Lcom/google/android/filament/View$VignetteOptions;->feather:F

    iget-object v0, p1, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    const/4 v6, 0x0

    aget v6, v0, v6

    iget-object v0, p1, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    const/4 v7, 0x1

    aget v7, v0, v7

    iget-object v0, p1, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    const/4 v8, 0x2

    aget v8, v0, v8

    iget-object v0, p1, Lcom/google/android/filament/View$VignetteOptions;->color:[F

    const/4 v9, 0x3

    aget v9, v0, v9

    iget-boolean v10, p1, Lcom/google/android/filament/View$VignetteOptions;->enabled:Z

    invoke-static/range {v1 .. v10}, Lcom/google/android/filament/View;->nSetVignetteOptions(JFFFFFFFZ)V

    return-void
.end method

.method public setVisibleLayers(II)V
    .locals 2

    .line 1049
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/View;->nSetVisibleLayers(JII)V

    return-void
.end method

.method public setVsmShadowOptions(Lcom/google/android/filament/View$VsmShadowOptions;)V
    .locals 6

    .line 1499
    iput-object p1, p0, Lcom/google/android/filament/View;->mVsmShadowOptions:Lcom/google/android/filament/View$VsmShadowOptions;

    .line 1500
    invoke-virtual {p0}, Lcom/google/android/filament/View;->getNativeObject()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$VsmShadowOptions;->anisotropy:I

    iget-boolean v3, p1, Lcom/google/android/filament/View$VsmShadowOptions;->mipmapping:Z

    iget v4, p1, Lcom/google/android/filament/View$VsmShadowOptions;->minVarianceScale:F

    iget v5, p1, Lcom/google/android/filament/View$VsmShadowOptions;->lightBleedReduction:F

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/View;->nSetVsmShadowOptions(JIZFF)V

    return-void
.end method
