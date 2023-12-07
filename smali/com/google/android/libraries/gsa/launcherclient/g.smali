.class final Lcom/google/android/libraries/gsa/launcherclient/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/gsa/launcherclient/h;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/g;->a:Lcom/google/android/libraries/gsa/launcherclient/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/g;->a:Lcom/google/android/libraries/gsa/launcherclient/h;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/h;->a:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    return-void
.end method
