.class public Lcom/miui/home/recents/util/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# instance fields
.field private mCurrentStateRequest:I

.field private mCurrentTransitionRequest:I

.field private mDestroyed:Z

.field private mInitialized:Z

.field private mLastActivityFlags:I

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMultiWindowRotationRequest:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentTransitionRequest:I

    .line 68
    iput v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentStateRequest:I

    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lcom/miui/home/recents/util/RotationHelper;->mLastActivityFlags:I

    .line 79
    iput-object p1, p0, Lcom/miui/home/recents/util/RotationHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 80
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :cond_0
    iput v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mMultiWindowRotationRequest:I

    return-void
.end method

.method private getScreenOrientationByRequest(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_1
    const/16 p1, 0xe

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isLandscapeRotation(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private notifyChange()V
    .locals 4

    .line 158
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mInitialized:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 163
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mMultiWindowRotationRequest:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0, v0}, Lcom/miui/home/recents/util/RotationHelper;->getScreenOrientationByRequest(I)I

    move-result v1

    goto :goto_1

    .line 165
    :cond_1
    iget v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentTransitionRequest:I

    if-eqz v0, :cond_2

    .line 166
    invoke-direct {p0, v0}, Lcom/miui/home/recents/util/RotationHelper;->getScreenOrientationByRequest(I)I

    move-result v1

    goto :goto_1

    .line 167
    :cond_2
    iget v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentStateRequest:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/16 v1, 0xe

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_5

    .line 170
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    :goto_0
    move v1, v0

    :cond_5
    :goto_1
    const-string v0, "RotationHelper"

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChange activityFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mMultiWindowRotationRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/recents/util/RotationHelper;->mMultiWindowRotationRequest:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentTransitionRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentTransitionRequest:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentStateRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentStateRequest:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mLastActivityFlags:I

    if-eq v1, v0, :cond_6

    .line 183
    iput v1, p0, Lcom/miui/home/recents/util/RotationHelper;->mLastActivityFlags:I

    .line 184
    iget-object v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/UiThreadHelper;->setOrientationAsync(Landroid/app/Activity;I)V

    :cond_6
    return-void

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mDestroyed:Z

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mInitialized:Z

    .line 136
    invoke-direct {p0}, Lcom/miui/home/recents/util/RotationHelper;->notifyChange()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 127
    :goto_0
    iget v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mMultiWindowRotationRequest:I

    if-eq v0, p1, :cond_1

    .line 128
    iput p1, p0, Lcom/miui/home/recents/util/RotationHelper;->mMultiWindowRotationRequest:I

    .line 129
    invoke-direct {p0}, Lcom/miui/home/recents/util/RotationHelper;->notifyChange()V

    :cond_1
    return-void
.end method

.method public setCurrentStateRequest(I)V
    .locals 3

    const-string v0, "RotationHelper"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentStateRequest: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentStateRequest:I

    if-eq v0, p1, :cond_0

    .line 120
    iput p1, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentStateRequest:I

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/util/RotationHelper;->notifyChange()V

    :cond_0
    return-void
.end method

.method public setCurrentTransitionRequest(I)V
    .locals 3

    const-string v0, "RotationHelper"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentTransitionRequest: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v0, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentTransitionRequest:I

    if-eq v0, p1, :cond_0

    .line 111
    iput p1, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentTransitionRequest:I

    .line 112
    invoke-direct {p0}, Lcom/miui/home/recents/util/RotationHelper;->notifyChange()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[mCurrentStateRequest=%d, mLastActivityFlags=%d]"

    const/4 v1, 0x2

    .line 194
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/miui/home/recents/util/RotationHelper;->mCurrentStateRequest:I

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/miui/home/recents/util/RotationHelper;->mLastActivityFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 194
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRotationAnimation(I)V
    .locals 0

    return-void
.end method
