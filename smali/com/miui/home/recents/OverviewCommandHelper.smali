.class public Lcom/miui/home/recents/OverviewCommandHelper;
.super Ljava/lang/Object;
.source "OverviewCommandHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;,
        Lcom/miui/home/recents/OverviewCommandHelper$HideRecentsCommand;,
        Lcom/miui/home/recents/OverviewCommandHelper$ShowRecentsCommand;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastToggleTime:J

.field private final mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field private final mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/recents/OverviewComponentObserver;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mContext:Landroid/content/Context;

    .line 53
    new-instance p1, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 55
    iput-object p2, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/recents/OverviewCommandHelper;)Lcom/miui/home/recents/OverviewComponentObserver;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mOverviewComponentObserver:Lcom/miui/home/recents/OverviewComponentObserver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/OverviewCommandHelper;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/OverviewCommandHelper;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mLastToggleTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/miui/home/recents/OverviewCommandHelper;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mLastToggleTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/miui/home/recents/OverviewCommandHelper;)Lcom/miui/home/launcher/MainThreadExecutor;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    return-object p0
.end method


# virtual methods
.method public onOverviewHidden()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/OverviewCommandHelper$HideRecentsCommand;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/home/recents/OverviewCommandHelper$HideRecentsCommand;-><init>(Lcom/miui/home/recents/OverviewCommandHelper;Lcom/miui/home/recents/OverviewCommandHelper$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/OverviewCommandHelper$ShowRecentsCommand;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/OverviewCommandHelper$ShowRecentsCommand;-><init>(Lcom/miui/home/recents/OverviewCommandHelper;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverviewToggle()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "recentapps"

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/recents/OverviewCommandHelper;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;-><init>(Lcom/miui/home/recents/OverviewCommandHelper;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTip(II)V
    .locals 0

    return-void
.end method
