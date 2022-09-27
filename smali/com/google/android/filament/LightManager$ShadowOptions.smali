.class public Lcom/google/android/filament/LightManager$ShadowOptions;
.super Ljava/lang/Object;
.source "LightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/LightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShadowOptions"
.end annotation


# instance fields
.field public blurWidth:F

.field public cascadeSplitPositions:[F

.field public constantBias:F

.field public mapSize:I

.field public maxShadowDistance:F

.field public normalBias:F

.field polygonOffsetConstant:F

.field polygonOffsetSlope:F

.field public screenSpaceContactShadows:Z

.field public shadowBulbRadius:F

.field public shadowCascades:I

.field public shadowFar:F

.field public shadowFarHint:F

.field public shadowNearHint:F

.field public stable:Z

.field public stepCount:I

.field public vsmMsaaSamples:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 194
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->mapSize:I

    const/4 v0, 0x1

    .line 207
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->shadowCascades:I

    const/4 v1, 0x3

    .line 241
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->cascadeSplitPositions:[F

    const v1, 0x3a83126f    # 0.001f

    .line 249
    iput v1, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->constantBias:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 255
    iput v1, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->normalBias:F

    const/4 v2, 0x0

    .line 262
    iput v2, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->shadowFar:F

    .line 270
    iput v1, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->shadowNearHint:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 277
    iput v1, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->shadowFarHint:F

    const/4 v1, 0x0

    .line 284
    iput-boolean v1, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->stable:Z

    const/high16 v3, 0x3f000000    # 0.5f

    .line 292
    iput v3, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->polygonOffsetConstant:F

    const/high16 v3, 0x40000000    # 2.0f

    .line 301
    iput v3, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->polygonOffsetSlope:F

    .line 309
    iput-boolean v1, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->screenSpaceContactShadows:Z

    const/16 v1, 0x8

    .line 318
    iput v1, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->stepCount:I

    const v1, 0x3e99999a    # 0.3f

    .line 328
    iput v1, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->maxShadowDistance:F

    .line 346
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->vsmMsaaSamples:I

    .line 353
    iput v2, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->blurWidth:F

    const v0, 0x3ca3d70a    # 0.02f

    .line 359
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->shadowBulbRadius:F

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data
.end method
