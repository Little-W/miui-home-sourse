.class public Lcom/google/android/filament/View$PickingQueryResult;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickingQueryResult"
.end annotation


# instance fields
.field public depth:F

.field public fragCoords:[F

.field public renderable:I
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 1728
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/filament/View$PickingQueryResult;->fragCoords:[F

    return-void
.end method
