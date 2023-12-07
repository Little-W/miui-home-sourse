.class final Lcom/google/android/libraries/gsa/launcherclient/c;
.super Lcom/google/android/libraries/gsa/launcherclient/l;


# static fields
.field private static a:Lcom/google/android/libraries/gsa/launcherclient/c;


# instance fields
.field private b:Lcom/google/android/libraries/a/c;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x21

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/libraries/gsa/launcherclient/l;-><init>(Landroid/content/Context;ILandroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lcom/google/android/libraries/gsa/launcherclient/c;
    .locals 2

    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/c;->a:Lcom/google/android/libraries/gsa/launcherclient/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/l;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/libraries/gsa/launcherclient/c;->a:Lcom/google/android/libraries/gsa/launcherclient/c;

    :cond_0
    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/c;->a:Lcom/google/android/libraries/gsa/launcherclient/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/c;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/libraries/gsa/launcherclient/c;->a:Lcom/google/android/libraries/gsa/launcherclient/c;

    :cond_1
    sget-object p0, Lcom/google/android/libraries/gsa/launcherclient/c;->a:Lcom/google/android/libraries/gsa/launcherclient/c;

    return-object p0
.end method

.method private final a(Lcom/google/android/libraries/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->b:Lcom/google/android/libraries/a/c;

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/c;->f()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->b:Lcom/google/android/libraries/a/c;

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/a/c;)V

    :cond_0
    return-void
.end method

.method private final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->b:Lcom/google/android/libraries/a/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/l;->a()V

    :cond_0
    return-void
.end method

.method private final f()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->c:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/a/c;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->c:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->b:Lcom/google/android/libraries/a/c;

    return-object p0
.end method

.method public final a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/c;->f()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->c:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/l;->a()V

    sget-object p2, Lcom/google/android/libraries/gsa/launcherclient/c;->a:Lcom/google/android/libraries/gsa/launcherclient/c;

    if-ne p2, p0, :cond_0

    sput-object p1, Lcom/google/android/libraries/gsa/launcherclient/c;->a:Lcom/google/android/libraries/gsa/launcherclient/c;

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->d:Z

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/c;->e()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/google/android/libraries/a/b;->a(Landroid/os/IBinder;)Lcom/google/android/libraries/a/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Lcom/google/android/libraries/a/c;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/c;->a(Lcom/google/android/libraries/a/c;)V

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/c;->e()V

    return-void
.end method
