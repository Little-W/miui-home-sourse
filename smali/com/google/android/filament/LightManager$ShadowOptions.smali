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
.field public constantBias:F

.field public mapSize:I

.field public maxShadowDistance:F

.field public normalBias:F

.field public screenSpaceContactShadows:Z

.field public shadowFar:F

.field public shadowFarHint:F

.field public shadowNearHint:F

.field public stable:Z

.field public stepCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 191
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->mapSize:I

    const v0, 0x3d4ccccd    # 0.05f

    .line 197
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->constantBias:F

    const v0, 0x3ecccccd    # 0.4f

    .line 202
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->normalBias:F

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->shadowFar:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 217
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->shadowNearHint:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 224
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->shadowFarHint:F

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->stable:Z

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->screenSpaceContactShadows:Z

    const/16 v0, 0x8

    .line 248
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->stepCount:I

    const v0, 0x3e99999a    # 0.3f

    .line 258
    iput v0, p0, Lcom/google/android/filament/LightManager$ShadowOptions;->maxShadowDistance:F

    return-void
.end method
