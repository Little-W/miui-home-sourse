.class public Lcom/google/android/filament/Texture$PrefilterOptions;
.super Ljava/lang/Object;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefilterOptions"
.end annotation


# instance fields
.field public mirror:Z

.field public sampleCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 614
    iput v0, p0, Lcom/google/android/filament/Texture$PrefilterOptions;->sampleCount:I

    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Lcom/google/android/filament/Texture$PrefilterOptions;->mirror:Z

    return-void
.end method
