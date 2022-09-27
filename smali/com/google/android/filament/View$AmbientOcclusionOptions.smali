.class public Lcom/google/android/filament/View$AmbientOcclusionOptions;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmbientOcclusionOptions"
.end annotation


# instance fields
.field public bentNormals:Z

.field public bias:F

.field public bilateralThreshold:F

.field public enabled:Z

.field public intensity:F

.field public lowPassFilter:Lcom/google/android/filament/View$QualityLevel;

.field public minHorizonAngleRad:F

.field public power:F

.field public quality:Lcom/google/android/filament/View$QualityLevel;

.field public radius:F

.field public resolution:F

.field public ssctContactDistanceMax:F

.field public ssctDepthBias:F

.field public ssctDepthSlopeBias:F

.field public ssctEnabled:Z

.field public ssctIntensity:F

.field public ssctLightConeRad:F

.field public ssctLightDirection:[F

.field public ssctRayCount:I

.field public ssctSampleCount:I

.field public ssctStartTraceDistance:F

.field public upsampling:Lcom/google/android/filament/View$QualityLevel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    .line 168
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->radius:F

    const v0, 0x3a03126f    # 5.0E-4f

    .line 173
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->bias:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 179
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->power:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 184
    iput v1, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->resolution:F

    .line 189
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->intensity:F

    const v1, 0x3d4ccccd    # 0.05f

    .line 199
    iput v1, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->bilateralThreshold:F

    .line 206
    sget-object v1, Lcom/google/android/filament/View$QualityLevel;->LOW:Lcom/google/android/filament/View$QualityLevel;

    iput-object v1, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->quality:Lcom/google/android/filament/View$QualityLevel;

    .line 214
    sget-object v1, Lcom/google/android/filament/View$QualityLevel;->MEDIUM:Lcom/google/android/filament/View$QualityLevel;

    iput-object v1, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->lowPassFilter:Lcom/google/android/filament/View$QualityLevel;

    .line 222
    sget-object v1, Lcom/google/android/filament/View$QualityLevel;->LOW:Lcom/google/android/filament/View$QualityLevel;

    iput-object v1, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->upsampling:Lcom/google/android/filament/View$QualityLevel;

    const/4 v1, 0x0

    .line 228
    iput-boolean v1, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->enabled:Z

    .line 233
    iput-boolean v1, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->bentNormals:Z

    const/4 v2, 0x0

    .line 240
    iput v2, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->minHorizonAngleRad:F

    .line 248
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctLightConeRad:F

    const v2, 0x3c23d70a    # 0.01f

    .line 254
    iput v2, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctStartTraceDistance:F

    .line 260
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctContactDistanceMax:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 265
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctIntensity:F

    const/4 v0, 0x3

    .line 270
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctLightDirection:[F

    .line 276
    iput v2, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctDepthBias:F

    .line 281
    iput v2, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctDepthSlopeBias:F

    const/4 v0, 0x4

    .line 287
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctSampleCount:I

    const/4 v0, 0x1

    .line 293
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctRayCount:I

    .line 298
    iput-boolean v1, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->ssctEnabled:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method
