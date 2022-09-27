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

    .line 97
    iget-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;->finish()V

    const/4 v0, 0x0

    .line 99
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

    .line 77
    invoke-direct {p0}, Lcom/miui/home/recents/LauncherAnimationRunner;->finishExistingAnimation()V

    .line 78
    new-instance v0, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;Lcom/miui/home/recents/LauncherAnimationRunner$1;)V

    iput-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    .line 79
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mAnimationResult:Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/recents/LauncherAnimationRunner;->onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public static postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7

    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setCallback"

    const/4 v3, 0x1

    .line 121
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 123
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$7JO9_ZnIHZdRj3W8pxxnmOvriMw;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$7JO9_ZnIHZdRj3W8pxxnmOvriMw;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/LauncherAnimationRunner;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Ljava/lang/Runnable;)V
    .locals 8

    const-string v0, "LauncherAnimationRunner"

    const-string v1, "onAnimationStart"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 56
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    const-string v5, "LauncherAnimationRunner"

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAnimationStart:   mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "   taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->taskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "   isTranslucent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v5, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v6, 0x1

    if-nez v5, :cond_0

    move v2, v6

    .line 63
    :cond_0
    iget v4, v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, v6, :cond_1

    move v3, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_5

    :cond_3
    const-string v0, "LauncherAnimationRunner"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationStart: ERROR targetCompats is not correct hasOpen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasClose="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v0, "LauncherAnimationRunner"

    const-string v1, "onAnimationStart: ERROR targetCompats is null"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_5
    :goto_1
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$YORJleb52E4o6UuHrM4Hr0O5ZUs;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/recents/-$$Lambda$LauncherAnimationRunner$YORJleb52E4o6UuHrM4Hr0O5ZUs;-><init>(Lcom/miui/home/recents/LauncherAnimationRunner;Ljava/lang/Runnable;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 82
    iget-boolean p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    if-eqz p1, :cond_6

    .line 83
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/miui/home/recents/LauncherAnimationRunner;->postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 85
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/LauncherAnimationRunner;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public abstract onCreateAnimation([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/LauncherAnimationRunner$AnimationResult;)V
.end method

.method public postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .line 112
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p2, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 114
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
