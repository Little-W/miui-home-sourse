.class public Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;
.super Ljava/lang/Object;
.source "MiuiUnCaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mOriginalUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final unCaughtExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->unCaughtExceptionList:Ljava/util/ArrayList;

    .line 25
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->mOriginalUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 26
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 27
    invoke-direct {p0}, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->initUnCaughtException()V

    return-void
.end method

.method private exitApp()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 99
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 100
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    const/4 p0, 0x1

    .line 101
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private initUnCaughtException()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->unCaughtExceptionList:Ljava/util/ArrayList;

    const-string v1, "android:layout/decor_caption: width and height must be > 0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p0, p0, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->unCaughtExceptionList:Ljava/util/ArrayList;

    const-string v0, "android.os.DeadSystemException"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isFilterCause(Ljava/lang/Throwable;)Z
    .locals 4

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 74
    instance-of v1, p1, Landroid/os/DeadSystemException;

    const/4 v2, 0x1

    const-string v3, "MiuiUnCaughtExceptionHandler"

    if-eqz v1, :cond_0

    const-string p0, "DeadSystemException return true"

    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 79
    :cond_0
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_1

    const-string p0, "OutOfMemoryError return true"

    .line 80
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->unCaughtExceptionList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->isMessageContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MiuiUnCaughtExceptionHandler + isFilterCause message: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isLocalHandleThrowable(Ljava/lang/Throwable;)Z
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->isFilterCause(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isMessageContains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 37
    invoke-direct {p0, p2}, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->isLocalHandleThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/miui/privacy/firebase/FirebaseCrashUtils;->getInstance()Lcom/miui/privacy/firebase/FirebaseCrashUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/privacy/firebase/FirebaseCrashUtils;->logException(Ljava/lang/Throwable;)V

    .line 39
    invoke-direct {p0}, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->exitApp()V

    return-void

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/miui/privacy/firebase/MiuiUnCaughtExceptionHandler;->mOriginalUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_1

    .line 44
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
