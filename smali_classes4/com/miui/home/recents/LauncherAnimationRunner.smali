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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    .line 47
    iput-boolean p2, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    return-void
.end method

.method private finishExistingAnimation()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$7JO9_ZnIHZdRj3W8pxxnmOvriMw(Lcom/miui/home/recents/LauncherAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/LauncherAnimationRunner;->finishExistingAnimation()V

    return-void
.end method

.method public static postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7

    .line 127
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setCallback"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 129
    const-class v5, Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    .line 131
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationStart$0$LauncherAnimationRunner(Ljava/lang/Runnable;I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 7

    .line 80
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->getInstance()Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->hasMergeFinishCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherAnimationRunner;->finishExistingAnimation()V

    .line 83
    :cond_0
    new-instance v0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    .line 84
    iget-object v6, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/LauncherAnimationRunner;->onCreateAnimation(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public onAnimationCancelled()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$7JO9_ZnIHZdRj3W8pxxnmOvriMw;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$7JO9_ZnIHZdRj3W8pxxnmOvriMw;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/LauncherAnimationRunner;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 9

    const-string v0, "LauncherAnimationRunner"

    const-string v1, "onAnimationStart"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 61
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v5, p2, v2

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAnimationStart:   target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget v6, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v3, v7

    .line 66
    :cond_0
    iget v5, v5, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v5, v7, :cond_1

    move v4, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    if-nez v4, :cond_5

    .line 73
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationStart: ERROR targetCompats is not correct hasOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasClose="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v1, "onAnimationStart: ERROR targetCompats is null"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_5
    :goto_1
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p5

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$6b6SRTNyoCarq9Lj7thfT9MeH0I;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner;Ljava/lang/Runnable;I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 87
    iget-boolean p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    if-eqz p1, :cond_6

    .line 88
    iget-object p0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/home/recents/LauncherAnimationRunner;->postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 90
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/LauncherAnimationRunner;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public abstract onCreateAnimation(I[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
.end method

.method public postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 120
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    const/4 p2, 0x1

    .line 121
    invoke-virtual {p0, p2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 122
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
