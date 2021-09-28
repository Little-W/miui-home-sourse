.class public Lcom/miui/home/recents/util/TimeOutBlocker;
.super Ljava/lang/Object;
.source "TimeOutBlocker.java"


# static fields
.field private static final TIME_OUT_SESSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    return-void
.end method

.method public static isBlocked(Ljava/lang/String;)Z
    .locals 1

    .line 58
    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$startCountDown$0(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 48
    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 50
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public static postRunnable(Landroid/os/Handler;JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 25
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/util/TimeOutBlocker;->startCountDown(Landroid/os/Handler;JLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeRunnable(Ljava/lang/String;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 31
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    :cond_0
    sget-object v0, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static startCountDown(Landroid/os/Handler;JLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/util/TimeOutBlocker;->startCountDown(Landroid/os/Handler;JLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startCountDown(Landroid/os/Handler;JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-static {p3}, Lcom/miui/home/recents/util/TimeOutBlocker;->removeRunnable(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$TimeOutBlocker$42nNLwZ75s4BzIfRzBJiE6eVVD4;

    invoke-direct {v0, p3, p4}, Lcom/miui/home/recents/util/-$$Lambda$TimeOutBlocker$42nNLwZ75s4BzIfRzBJiE6eVVD4;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 53
    sget-object p4, Lcom/miui/home/recents/util/TimeOutBlocker;->TIME_OUT_SESSIONS:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
