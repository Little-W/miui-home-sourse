.class public Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;
.super Ljava/lang/Object;


# instance fields
.field public mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->remove()V

    :cond_0
    return-void
.end method
