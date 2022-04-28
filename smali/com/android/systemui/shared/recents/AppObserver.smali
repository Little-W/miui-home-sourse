.class public Lcom/android/systemui/shared/recents/AppObserver;
.super Ljava/lang/Object;
.source "AppObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/AppObserver$ForegroundListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppObserver"

.field private static sAppObserver:Lcom/android/systemui/shared/recents/AppObserver;


# instance fields
.field private final mAppObserver:Lmiui/process/IForegroundInfoListener$Stub;

.field private final mForegroundListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/AppObserver$ForegroundListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/AppObserver;->mForegroundListeners:Ljava/util/List;

    .line 23
    new-instance v0, Lcom/android/systemui/shared/recents/AppObserver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/AppObserver$1;-><init>(Lcom/android/systemui/shared/recents/AppObserver;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/AppObserver;->mAppObserver:Lmiui/process/IForegroundInfoListener$Stub;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shared/recents/AppObserver;->mAppObserver:Lmiui/process/IForegroundInfoListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/AppObserver;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/shared/recents/AppObserver;->mForegroundListeners:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcom/android/systemui/shared/recents/AppObserver;
    .locals 2

    .line 36
    sget-object v0, Lcom/android/systemui/shared/recents/AppObserver;->sAppObserver:Lcom/android/systemui/shared/recents/AppObserver;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/android/systemui/shared/recents/AppObserver;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/android/systemui/shared/recents/AppObserver;->sAppObserver:Lcom/android/systemui/shared/recents/AppObserver;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/android/systemui/shared/recents/AppObserver;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/AppObserver;-><init>()V

    sput-object v1, Lcom/android/systemui/shared/recents/AppObserver;->sAppObserver:Lcom/android/systemui/shared/recents/AppObserver;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/shared/recents/AppObserver;->sAppObserver:Lcom/android/systemui/shared/recents/AppObserver;

    return-object v0
.end method


# virtual methods
.method public addForegroundInfoListener(Lcom/android/systemui/shared/recents/AppObserver$ForegroundListener;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/systemui/shared/recents/AppObserver;->mForegroundListeners:Ljava/util/List;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/AppObserver;->mForegroundListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeForegroundInfoListener(Lcom/android/systemui/shared/recents/AppObserver$ForegroundListener;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/systemui/shared/recents/AppObserver;->mForegroundListeners:Ljava/util/List;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/AppObserver;->mForegroundListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
