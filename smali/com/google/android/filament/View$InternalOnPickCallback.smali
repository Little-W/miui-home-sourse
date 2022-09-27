.class Lcom/google/android/filament/View$InternalOnPickCallback;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalOnPickCallback"
.end annotation


# instance fields
.field mDepth:F

.field mFragCoordsX:F

.field mFragCoordsY:F

.field mFragCoordsZ:F

.field private final mPickingQueryResult:Lcom/google/android/filament/View$PickingQueryResult;

.field mRenderable:I
    .annotation build Lcom/google/android/filament/Entity;
    .end annotation
.end field

.field private final mUserCallback:Lcom/google/android/filament/View$OnPickCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/View$OnPickCallback;)V
    .locals 1

    .line 1764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1777
    new-instance v0, Lcom/google/android/filament/View$PickingQueryResult;

    invoke-direct {v0}, Lcom/google/android/filament/View$PickingQueryResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mPickingQueryResult:Lcom/google/android/filament/View$PickingQueryResult;

    .line 1765
    iput-object p1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mUserCallback:Lcom/google/android/filament/View$OnPickCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1769
    iget-object v0, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mPickingQueryResult:Lcom/google/android/filament/View$PickingQueryResult;

    iget v1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mRenderable:I

    iput v1, v0, Lcom/google/android/filament/View$PickingQueryResult;->renderable:I

    .line 1770
    iget v1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mDepth:F

    iput v1, v0, Lcom/google/android/filament/View$PickingQueryResult;->depth:F

    .line 1771
    iget-object v0, v0, Lcom/google/android/filament/View$PickingQueryResult;->fragCoords:[F

    iget v1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mFragCoordsX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1772
    iget-object v0, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mPickingQueryResult:Lcom/google/android/filament/View$PickingQueryResult;

    iget-object v0, v0, Lcom/google/android/filament/View$PickingQueryResult;->fragCoords:[F

    iget v1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mFragCoordsY:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1773
    iget-object v0, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mPickingQueryResult:Lcom/google/android/filament/View$PickingQueryResult;

    iget-object v0, v0, Lcom/google/android/filament/View$PickingQueryResult;->fragCoords:[F

    iget v1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mFragCoordsZ:F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 1774
    iget-object v0, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mUserCallback:Lcom/google/android/filament/View$OnPickCallback;

    iget-object v1, p0, Lcom/google/android/filament/View$InternalOnPickCallback;->mPickingQueryResult:Lcom/google/android/filament/View$PickingQueryResult;

    invoke-interface {v0, v1}, Lcom/google/android/filament/View$OnPickCallback;->onPick(Lcom/google/android/filament/View$PickingQueryResult;)V

    return-void
.end method
