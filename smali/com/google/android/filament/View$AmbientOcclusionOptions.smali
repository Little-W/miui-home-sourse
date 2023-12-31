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
.field public bias:F

.field public intensity:F

.field public power:F

.field public quality:Lcom/google/android/filament/View$QualityLevel;

.field public radius:F

.field public resolution:F

.field public upsampling:Lcom/google/android/filament/View$QualityLevel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    .line 148
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->radius:F

    const v0, 0x3a03126f    # 5.0E-4f

    .line 153
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->bias:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 159
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->power:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 164
    iput v1, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->resolution:F

    .line 169
    iput v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->intensity:F

    .line 176
    sget-object v0, Lcom/google/android/filament/View$QualityLevel;->LOW:Lcom/google/android/filament/View$QualityLevel;

    iput-object v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->quality:Lcom/google/android/filament/View$QualityLevel;

    .line 184
    sget-object v0, Lcom/google/android/filament/View$QualityLevel;->LOW:Lcom/google/android/filament/View$QualityLevel;

    iput-object v0, p0, Lcom/google/android/filament/View$AmbientOcclusionOptions;->upsampling:Lcom/google/android/filament/View$QualityLevel;

    return-void
.end method
