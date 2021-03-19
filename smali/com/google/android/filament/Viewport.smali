.class public Lcom/google/android/filament/Viewport;
.super Ljava/lang/Object;
.source "Viewport.java"


# instance fields
.field public bottom:I

.field public height:I

.field public left:I

.field public width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/android/filament/Viewport;->left:I

    .line 34
    iput p2, p0, Lcom/google/android/filament/Viewport;->bottom:I

    .line 35
    iput p3, p0, Lcom/google/android/filament/Viewport;->width:I

    .line 36
    iput p4, p0, Lcom/google/android/filament/Viewport;->height:I

    return-void
.end method
