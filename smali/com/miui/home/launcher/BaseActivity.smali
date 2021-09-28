.class public abstract Lcom/miui/home/launcher/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/BaseActivity$MultiWindowModeChangedListener;,
        Lcom/miui/home/launcher/BaseActivity$OnStartCallback;
    }
.end annotation


# instance fields
.field private mActivityFlags:I

.field private final mDPChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mDeviceProfile:Lcom/miui/home/launcher/DeviceProfile;

.field private mForceInvisible:I

.field private final mMultiWindowModeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/BaseActivity$MultiWindowModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStartCallback:Lcom/miui/home/launcher/BaseActivity$OnStartCallback;

.field private final mViewCache:Lcom/miui/home/launcher/util/ViewCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/miui/home/launcher/util/ViewCache;

    invoke-direct {v0}, Lcom/miui/home/launcher/util/ViewCache;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mViewCache:Lcom/miui/home/launcher/util/ViewCache;

    return-void
.end method


# virtual methods
.method public addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected dispatchDeviceProfileChanged()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/miui/home/launcher/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;

    iget-object v2, p0, Lcom/miui/home/launcher/BaseActivity;->mDeviceProfile:Lcom/miui/home/launcher/DeviceProfile;

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;->onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getOverviewPanel()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public hasBeenResumed()Z
    .locals 1

    .line 150
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 143
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    .line 119
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 120
    iget-object p2, p0, Lcom/miui/home/launcher/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mMultiWindowModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/BaseActivity$MultiWindowModeChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/BaseActivity$MultiWindowModeChangedListener;->onMultiWindowModeChanged(Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 134
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    .line 135
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 107
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    .line 108
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 92
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mOnStartCallback:Lcom/miui/home/launcher/BaseActivity$OnStartCallback;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lcom/miui/home/launcher/BaseActivity$OnStartCallback;->onActivityStart()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/miui/home/launcher/BaseActivity;->mOnStartCallback:Lcom/miui/home/launcher/BaseActivity$OnStartCallback;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 127
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mForceInvisible:I

    .line 129
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 113
    iget v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/home/launcher/BaseActivity;->mActivityFlags:I

    .line 114
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onUserLeaveHint()V

    return-void
.end method
