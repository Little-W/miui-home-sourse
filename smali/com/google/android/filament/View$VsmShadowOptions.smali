.class public Lcom/google/android/filament/View$VsmShadowOptions;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VsmShadowOptions"
.end annotation


# instance fields
.field public anisotropy:I

.field public lightBleedReduction:F

.field public minVarianceScale:F

.field public mipmapping:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 794
    iput v0, p0, Lcom/google/android/filament/View$VsmShadowOptions;->anisotropy:I

    .line 799
    iput-boolean v0, p0, Lcom/google/android/filament/View$VsmShadowOptions;->mipmapping:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 804
    iput v0, p0, Lcom/google/android/filament/View$VsmShadowOptions;->minVarianceScale:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 809
    iput v0, p0, Lcom/google/android/filament/View$VsmShadowOptions;->lightBleedReduction:F

    return-void
.end method
