.class public Lcom/google/android/filament/Renderer$ClearOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearOptions"
.end annotation


# instance fields
.field public clear:Z

.field public clearColor:[F

.field public discard:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/filament/Renderer$ClearOptions;->clearColor:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/Renderer$ClearOptions;->clear:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/filament/Renderer$ClearOptions;->discard:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
