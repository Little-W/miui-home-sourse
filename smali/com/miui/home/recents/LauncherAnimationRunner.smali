.class public abstract Lcom/miui/home/recents/LauncherAnimationRunner;
.super Ljava/lang/Object;
.source "LauncherAnimationRunner.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/system/RemoteAnimationRunnerCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;
    }
.end annotation


# instance fields
.field private mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

.field private final mHandler:Landroid/os/Handler;

.field private final mStartAtFrontOfQueue:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Z)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    .line 46
    iput-boolean p2, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    return-void
.end method

.method private finishExistingAnimation()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$7JO9_ZnIHZdRj3W8pxxnmOvriMw(Lcom/miui/home/recents/LauncherAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/LauncherAnimationRunner;->finishExistingAnimation()V

    return-void
.end method

.method public static synthetic lambda$onAnimationStart$0(Lcom/miui/home/recents/LauncherAnimationRunner;Ljava/lang/Runnable;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherAnimationRunner;->finishExistingAnimation()V

    .line 61
    new-instance v0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;Lcom/miui/home/recents/LauncherAnimationRunner$1;)V

    iput-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    .line 62
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/recents/LauncherAnimationRunner;->onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public static postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setCallback"

    const/4 v3, 0x1

    .line 104
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 106
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$7JO9_ZnIHZdRj3W8pxxnmOvriMw;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$7JO9_ZnIHZdRj3W8pxxnmOvriMw;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/LauncherAnimationRunner;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 6

    const-string v0, "LauncherAnimationRunner"

    const-string v1, "onAnimationStart"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 53
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, "LauncherAnimationRunner"

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAnimationStart:   mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$YORJleb52E4o6UuHrM4Hr0O5ZUs;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$YORJleb52E4o6UuHrM4Hr0O5ZUs;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner;Ljava/lang/Runnable;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 65
    iget-boolean p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/miui/home/recents/LauncherAnimationRunner;->postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/LauncherAnimationRunner;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public abstract onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
.end method

.method public postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .line 95
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 97
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
