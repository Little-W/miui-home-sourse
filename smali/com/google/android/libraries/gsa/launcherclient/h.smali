.class final Lcom/google/android/libraries/gsa/launcherclient/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/h;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/h;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/h;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/h;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/g;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/g;-><init>(Lcom/google/android/libraries/gsa/launcherclient/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
