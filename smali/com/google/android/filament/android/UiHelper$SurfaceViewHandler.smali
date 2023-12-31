.class Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;
.super Ljava/lang/Object;
.source "UiHelper.java"

# interfaces
.implements Lcom/google/android/filament/android/UiHelper$RenderSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/android/UiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceViewHandler"
.end annotation


# instance fields
.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;->mSurfaceView:Landroid/view/SurfaceView;

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 0

    return-void
.end method

.method public resize(II)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method
