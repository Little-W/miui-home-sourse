.class public Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;
.super Landroid/app/TaskStackListener;
.source "TaskStackChangeListeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackChangeListeners"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mRegistered:Z

.field private final mTaskStackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTmpListeners:Ljava/util/List;

    .line 32
    new-instance v0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners$H;-><init>(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;Landroid/app/ActivityManager$TaskSnapshot;)Landroid/graphics/Bitmap;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->createHardwareBitmapFromSnapShot(Landroid/app/ActivityManager$TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createHardwareBitmapFromSnapShot(Landroid/app/ActivityManager$TaskSnapshot;)Landroid/graphics/Bitmap;
    .locals 0

    .line 134
    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->wrapHardwareBuffer(Landroid/app/ActivityManager$TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 106
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->onActivityForcedResizable(Ljava/lang/String;II)V

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onActivityPinned()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->onActivityPinned(Ljava/lang/String;I)V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 71
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->onActivityPinned(Ljava/lang/String;II)V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTmpListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 56
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTmpListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTmpListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTmpListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;->onTaskStackChangedBackground()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v1

    .line 57
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerTaskStackListener(Landroid/app/IActivityManager;Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-boolean p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mRegistered:Z

    if-nez p1, :cond_0

    .line 40
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    sget-object p2, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->TAG:Ljava/lang/String;

    const-string v0, "Failed to call registerTaskStackListener"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removeListener(Lcom/android/systemui/shared/recents/system/TaskStackChangeListener;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/TaskStackChangeListeners;->mTaskStackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
