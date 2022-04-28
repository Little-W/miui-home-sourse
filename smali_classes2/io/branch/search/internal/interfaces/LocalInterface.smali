.class public Lio/branch/search/internal/interfaces/LocalInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final f:Lio/branch/search/x0;

.field public static final g:Lio/branch/search/x0;

.field public static final h:Ljava/lang/Object;

.field public static final i:Lio/branch/search/g0;


# instance fields
.field public a:Lio/branch/search/f3;

.field public b:Lio/branch/search/u1;

.field public final c:Lio/branch/search/l;

.field public d:Landroid/content/pm/LauncherApps$Callback;

.field public e:Landroidx/lifecycle/LifecycleObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/x0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lio/branch/search/x0;-><init>(I)V

    sput-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->f:Lio/branch/search/x0;

    new-instance v0, Lio/branch/search/x0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lio/branch/search/x0;-><init>(I)V

    sput-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/x0;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->h:Ljava/lang/Object;

    sget-object v0, Lio/branch/search/i0;->a:Lio/branch/search/g0;

    sput-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->i:Lio/branch/search/g0;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$b;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$b;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    iput-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->d:Landroid/content/pm/LauncherApps$Callback;

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$6;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$6;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    iput-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->e:Landroidx/lifecycle/LifecycleObserver;

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {p1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/branch/search/f3;

    invoke-direct {v1, p1}, Lio/branch/search/f3;-><init>(Lio/branch/search/l;)V

    iput-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    new-instance v1, Lio/branch/search/u1;

    invoke-direct {v1, p1}, Lio/branch/search/u1;-><init>(Lio/branch/search/l;)V

    iput-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/u1;

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    invoke-virtual {v1, p1}, Lio/branch/search/u1;->a(Lio/branch/search/u1$e;)V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/u1;

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    invoke-virtual {p1, v1}, Lio/branch/search/u1;->a(Lio/branch/search/u1$f;)V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/u1;

    invoke-virtual {p1, v0, v1}, Lio/branch/search/f3;->a(Landroid/content/Context;Lio/branch/search/r1;)V

    invoke-virtual {p0, v0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lio/branch/search/internal/interfaces/LocalInterface;->f()V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/u1;

    invoke-virtual {p1}, Lio/branch/search/u1;->b()V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/f3;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic b(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    return-object p0
.end method

.method public static synthetic c(Lio/branch/search/internal/interfaces/LocalInterface;)Landroidx/lifecycle/LifecycleObserver;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->e:Landroidx/lifecycle/LifecycleObserver;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$c;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$c;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-static {v0, p1, p2}, Lio/branch/search/q0;->a(Lio/branch/search/l;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V

    return-void
.end method

.method public a(Lio/branch/search/a1;)V
    .locals 2

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$a;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    invoke-virtual {p1, v0}, Lio/branch/search/a1;->a(Lio/branch/search/y0;)V

    sget-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->f:Lio/branch/search/x0;

    const-string v1, "localStatsUpdate"

    invoke-virtual {v0, v1, p1}, Lio/branch/search/x0;->a(Ljava/lang/String;Lio/branch/search/c4;)V

    return-void
.end method

.method public a(Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/u1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/branch/search/u1;->a(Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/j3;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    invoke-virtual {v0, p1}, Lio/branch/search/f3;->a(Lio/branch/search/j3;)V

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/o3;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    invoke-virtual {v0, p1}, Lio/branch/search/f3;->a(Lio/branch/search/o3;)V

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/p3;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    invoke-virtual {v0, p1}, Lio/branch/search/f3;->a(Lio/branch/search/p3;)V

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/s3;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/s3;",
            "Ljava/util/List<",
            "Lio/branch/search/q3;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    invoke-virtual {v0, p1, p2}, Lio/branch/search/f3;->a(Lio/branch/search/s3;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/r3;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    invoke-virtual {v0, p1}, Lio/branch/search/f3;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b()Lio/branch/search/j3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    invoke-virtual {v0}, Lio/branch/search/f3;->b()Lio/branch/search/j3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->d:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {p1, v0}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocalInterface"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->d:Landroid/content/pm/LauncherApps$Callback;

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    invoke-virtual {v1}, Lio/branch/search/f3;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public c()Lio/branch/search/u1;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/u1;

    return-object v0
.end method

.method public d()Lio/branch/search/u1;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/u1;

    return-object v0
.end method

.method public e()Lio/branch/search/f3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    return-object v0
.end method

.method public final f()V
    .locals 1

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$d;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$d;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    invoke-static {v0}, Lio/branch/search/t4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/f3;

    if-eqz v0, :cond_0

    sget-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/x0;

    new-instance v1, Lio/branch/search/internal/interfaces/LocalInterface$e;

    invoke-direct {v1, p0}, Lio/branch/search/internal/interfaces/LocalInterface$e;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    const-string v2, "syncLocalData"

    invoke-virtual {v0, v2, v1}, Lio/branch/search/x0;->a(Ljava/lang/String;Lio/branch/search/c4;)V

    :cond_0
    return-void
.end method
