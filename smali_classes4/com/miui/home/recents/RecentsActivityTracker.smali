.class public Lcom/miui/home/recents/RecentsActivityTracker;
.super Ljava/lang/Object;
.source "RecentsActivityTracker.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/home/recents/RecentsActivity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/home/recents/ActivityControlHelper$ActivityInitListener;"
    }
.end annotation


# static fields
.field private static sCurrentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/recents/RecentsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final sScheduler:Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;


# instance fields
.field private final mOnInitListener:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/home/recents/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 37
    new-instance v0, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;

    invoke-direct {v0, v1}, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;-><init>(Lcom/miui/home/recents/RecentsActivityTracker$1;)V

    sput-object v0, Lcom/miui/home/recents/RecentsActivityTracker;->sScheduler:Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/miui/home/recents/RecentsActivityTracker;->mOnInitListener:Ljava/util/function/BiPredicate;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 33
    sget-object v0, Lcom/miui/home/recents/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/recents/RecentsActivityTracker;Lcom/miui/home/recents/RecentsActivity;Z)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/RecentsActivityTracker;->init(Lcom/miui/home/recents/RecentsActivity;Z)Z

    move-result p0

    return p0
.end method

.method public static getCurrentActivity()Lcom/miui/home/recents/RecentsActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/miui/home/recents/RecentsActivity;",
            ">()TT;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/miui/home/recents/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsActivity;

    return-object v0
.end method

.method private init(Lcom/miui/home/recents/RecentsActivity;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 56
    iget-object p0, p0, Lcom/miui/home/recents/RecentsActivityTracker;->mOnInitListener:Ljava/util/function/BiPredicate;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static onRecentsActivityCreate(Lcom/miui/home/recents/RecentsActivity;)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/home/recents/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    .line 74
    sget-object v0, Lcom/miui/home/recents/RecentsActivityTracker;->sScheduler:Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->initIfPending(Lcom/miui/home/recents/RecentsActivity;Z)Z

    return-void
.end method

.method public static onRecentsActivityDestroy(Lcom/miui/home/recents/RecentsActivity;)V
    .locals 1

    .line 83
    sget-object v0, Lcom/miui/home/recents/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 84
    sget-object p0, Lcom/miui/home/recents/RecentsActivityTracker;->sCurrentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void
.end method

.method public static onRecentsActivityNewIntent(Lcom/miui/home/recents/RecentsActivity;)V
    .locals 2

    .line 79
    sget-object v0, Lcom/miui/home/recents/RecentsActivityTracker;->sScheduler:Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsActivity;->isStarted()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->initIfPending(Lcom/miui/home/recents/RecentsActivity;Z)Z

    return-void
.end method


# virtual methods
.method public register()V
    .locals 1

    .line 47
    sget-object v0, Lcom/miui/home/recents/RecentsActivityTracker;->sScheduler:Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->schedule(Lcom/miui/home/recents/RecentsActivityTracker;)V

    return-void
.end method

.method public registerAndStartActivity(Landroid/content/Intent;Lcom/miui/home/recents/util/RemoteAnimationProvider;Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsActivityTracker;->register()V

    .line 68
    invoke-interface {p2, p4, p5, p6}, Lcom/miui/home/recents/util/RemoteAnimationProvider;->toActivityOptions(Landroid/os/Handler;J)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 69
    invoke-virtual {p3, p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 52
    sget-object v0, Lcom/miui/home/recents/RecentsActivityTracker;->sScheduler:Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->clearReference(Lcom/miui/home/recents/RecentsActivityTracker;)Z

    return-void
.end method
