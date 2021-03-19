.class public Lcom/miui/maml/elements/filament/FilamentManager;
.super Ljava/lang/Object;
.source "FilamentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/filament/FilamentManager$FilamentManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FilamentManager"


# instance fields
.field private mEngine:Lcom/google/android/filament/Engine;

.field private mInited:Z

.field private mLoaded:Z

.field private final mLock:Ljava/lang/Object;

.field private mRef:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/filament/FilamentManager$1;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/elements/filament/FilamentManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/maml/elements/filament/FilamentManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/miui/maml/elements/filament/FilamentManager$FilamentManagerHolder;->INSTANCE:Lcom/miui/maml/elements/filament/FilamentManager;

    return-object v0
.end method


# virtual methods
.method public acquireEngine()Lcom/google/android/filament/Engine;
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mInited:Z

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    if-nez v1, :cond_0

    .line 53
    invoke-static {}, Lcom/google/android/filament/Engine;->create()Lcom/google/android/filament/Engine;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    .line 55
    :cond_0
    iget v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    const-string v1, "FilamentManager"

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireEngine, ref "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public load()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mInited:Z

    if-nez v1, :cond_0

    .line 32
    invoke-static {}, Lcom/google/android/filament/Filament;->init()V

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mInited:Z

    .line 35
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadAll()V
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mInited:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/google/android/filament/Filament;->init()V

    .line 41
    iput-boolean v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mInited:Z

    .line 43
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mLoaded:Z

    if-nez v0, :cond_1

    const-string v0, "filament-utils-jni"

    .line 44
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    iput-boolean v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mLoaded:Z

    :cond_1
    return-void
.end method

.method public releaseEngine()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mInited:Z

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    if-nez v1, :cond_0

    .line 66
    invoke-static {}, Lcom/google/android/filament/Engine;->create()Lcom/google/android/filament/Engine;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    .line 68
    :cond_0
    iget v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    const-string v1, "FilamentManager"

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseEngine, ref "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    if-gtz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->destroy()V

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    const-string v1, "FilamentManager"

    const-string v2, "Engine destroyed"

    .line 73
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
