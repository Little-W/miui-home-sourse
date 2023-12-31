.class public Lcom/google/android/filament/View$BloomOptions;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BloomOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/View$BloomOptions$BlendingMode;
    }
.end annotation


# instance fields
.field public anamorphism:F

.field public blendingMode:Lcom/google/android/filament/View$BloomOptions$BlendingMode;

.field public dirt:Lcom/google/android/filament/Texture;

.field public dirtStrength:F

.field public enabled:Z

.field public levels:I

.field public resolution:I

.field public strength:F

.field public threshold:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/google/android/filament/View$BloomOptions;->dirt:Lcom/google/android/filament/Texture;

    const v0, 0x3e4ccccd    # 0.2f

    .line 230
    iput v0, p0, Lcom/google/android/filament/View$BloomOptions;->dirtStrength:F

    const v0, 0x3dcccccd    # 0.1f

    .line 235
    iput v0, p0, Lcom/google/android/filament/View$BloomOptions;->strength:F

    const/16 v0, 0x168

    .line 240
    iput v0, p0, Lcom/google/android/filament/View$BloomOptions;->resolution:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 245
    iput v0, p0, Lcom/google/android/filament/View$BloomOptions;->anamorphism:F

    const/4 v0, 0x6

    .line 250
    iput v0, p0, Lcom/google/android/filament/View$BloomOptions;->levels:I

    .line 255
    sget-object v0, Lcom/google/android/filament/View$BloomOptions$BlendingMode;->ADD:Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    iput-object v0, p0, Lcom/google/android/filament/View$BloomOptions;->blendingMode:Lcom/google/android/filament/View$BloomOptions$BlendingMode;

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/google/android/filament/View$BloomOptions;->threshold:Z

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/google/android/filament/View$BloomOptions;->enabled:Z

    return-void
.end method
