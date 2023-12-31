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

.field private final mLock:Ljava/lang/Object;

.field private mRef:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 15
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

    .line 25
    sget-object v0, Lcom/miui/maml/elements/filament/FilamentManager$FilamentManagerHolder;->INSTANCE:Lcom/miui/maml/elements/filament/FilamentManager;

    return-object v0
.end method


# virtual methods
.method public acquireEngine()Lcom/google/android/filament/Engine;
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mInited:Z

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Lcom/google/android/filament/Engine;->create()Lcom/google/android/filament/Engine;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    .line 43
    :cond_0
    iget v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    const-string v1, "FilamentManager"

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireEngine, ref "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public load()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mInited:Z

    if-nez v1, :cond_0

    .line 31
    invoke-static {}, Lcom/google/android/filament/Filament;->init()V

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mInited:Z

    .line 34
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public releaseEngine()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mInited:Z

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    if-nez v1, :cond_0

    .line 54
    invoke-static {}, Lcom/google/android/filament/Engine;->create()Lcom/google/android/filament/Engine;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    .line 56
    :cond_0
    iget v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    const-string v1, "FilamentManager"

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseEngine, ref "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mRef:I

    if-gtz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {v1}, Lcom/google/android/filament/Engine;->destroy()V

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/miui/maml/elements/filament/FilamentManager;->mEngine:Lcom/google/android/filament/Engine;

    const-string p0, "FilamentManager"

    const-string v1, "Engine destroyed"

    .line 61
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
