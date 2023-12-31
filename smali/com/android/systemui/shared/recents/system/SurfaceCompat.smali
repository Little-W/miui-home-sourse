.class public Lcom/android/systemui/shared/recents/system/SurfaceCompat;
.super Ljava/lang/Object;
.source "SurfaceCompat.java"


# instance fields
.field public mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/view/Surface;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->mSurface:Landroid/view/Surface;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public release()V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->mSurface:Landroid/view/Surface;

    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method
