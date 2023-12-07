.class public Lcom/google/android/filament/Viewport;
.super Ljava/lang/Object;


# instance fields
.field public bottom:I

.field public height:I

.field public left:I

.field public width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/filament/Viewport;->left:I

    iput p2, p0, Lcom/google/android/filament/Viewport;->bottom:I

    iput p3, p0, Lcom/google/android/filament/Viewport;->width:I

    iput p4, p0, Lcom/google/android/filament/Viewport;->height:I

    return-void
.end method
