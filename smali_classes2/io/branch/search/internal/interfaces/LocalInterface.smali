.class public Lio/branch/search/internal/interfaces/LocalInterface;
.super Ljava/lang/Object;


# static fields
.field public static final f:Ljava/lang/Object;

.field public static final g:Lio/branch/search/q0;


# instance fields
.field public a:Lio/branch/search/s3;

.field public b:Lio/branch/search/h2;

.field public final c:Lio/branch/search/l;

.field public final d:Landroid/content/pm/LauncherApps$Callback;

.field public e:Landroidx/lifecycle/LifecycleObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->f:Ljava/lang/Object;

    sget-object v0, Lio/branch/search/s0;->a:Lio/branch/search/q0;

    sput-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/q0;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$a;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    iput-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->d:Landroid/content/pm/LauncherApps$Callback;

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$6;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$6;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    iput-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->e:Landroidx/lifecycle/LifecycleObserver;

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {p1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/branch/search/s3;

    invoke-direct {v1, p1}, Lio/branch/search/s3;-><init>(Lio/branch/search/l;)V

    iput-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    new-instance v1, Lio/branch/search/h2;

    invoke-direct {v1, p1}, Lio/branch/search/h2;-><init>(Lio/branch/search/l;)V

    iput-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/h2;

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    invoke-virtual {v1, p1}, Lio/branch/search/h2;->a(Lio/branch/search/h2$e;)V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/h2;

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    invoke-virtual {p1, v1}, Lio/branch/search/h2;->a(Lio/branch/search/h2$f;)V

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    iget-object v1, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/h2;

    invoke-virtual {p1, v0, v1}, Lio/branch/search/s3;->a(Landroid/content/Context;Lio/branch/search/e2;)V

    invoke-virtual {p0, v0}, Lio/branch/search/internal/interfaces/LocalInterface;->d(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lio/branch/search/internal/interfaces/LocalInterface;->g()V

    invoke-virtual {p0, v0}, Lio/branch/search/internal/interfaces/LocalInterface;->c(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/branch/search/internal/interfaces/LocalInterface;->b(Landroid/content/Context;)V

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/h2;

    invoke-virtual {p0}, Lio/branch/search/h2;->b()V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/internal/interfaces/LocalInterface;)Lio/branch/search/s3;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lio/branch/search/internal/interfaces/LocalInterface;->f:Ljava/lang/Object;

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
    .locals 2

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$b;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$b;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-static {p0, p1, p2}, Lio/branch/search/d1;->a(Lio/branch/search/l;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V

    return-void
.end method

.method public a(Lio/branch/search/b4;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    invoke-virtual {p0, p1}, Lio/branch/search/s3;->a(Lio/branch/search/b4;)V

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/c4;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    invoke-virtual {p0, p1}, Lio/branch/search/s3;->a(Lio/branch/search/c4;)V

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/f4;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/f4;",
            "Ljava/util/List<",
            "Lio/branch/search/d4;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/s3;->a(Lio/branch/search/f4;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/h2;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lio/branch/search/h2;->a(Lio/branch/search/internal/shared/IBranchOnRawSQLEvents;)V

    :cond_0
    return-void
.end method

.method public a(Lio/branch/search/w3;)V
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    invoke-virtual {p0, p1}, Lio/branch/search/s3;->a(Lio/branch/search/w3;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/e4;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    invoke-virtual {p0, p1}, Lio/branch/search/s3;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b()Lio/branch/search/w3;
    .locals 1

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    invoke-virtual {p0}, Lio/branch/search/s3;->b()Lio/branch/search/w3;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$e;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$e;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public c()Lio/branch/search/h2;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/h2;

    return-object p0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$d;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$d;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public d()Lio/branch/search/h2;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/h2;

    return-object p0
.end method

.method public final d(Landroid/content/Context;)V
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

    invoke-static {v1, v2, v0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->d:Landroid/content/pm/LauncherApps$Callback;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    invoke-virtual {p0}, Lio/branch/search/s3;->a()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public e()Lio/branch/search/s3;
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/s3;

    return-object p0
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/h2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/branch/search/h2;->d()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$c;

    invoke-direct {v0, p0}, Lio/branch/search/internal/interfaces/LocalInterface$c;-><init>(Lio/branch/search/internal/interfaces/LocalInterface;)V

    invoke-static {v0}, Lio/branch/search/f5;->a(Ljava/lang/Runnable;)V

    return-void
.end method
