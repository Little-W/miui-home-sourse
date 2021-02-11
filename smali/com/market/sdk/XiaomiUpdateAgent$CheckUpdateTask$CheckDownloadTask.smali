.class Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;
.super Landroid/os/AsyncTask;
.source "XiaomiUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market/sdk/XiaomiUpdateAgent$1;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 435
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 437
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 439
    :cond_0
    invoke-static {p1}, Lcom/market/sdk/DownloadInstallManager;->getManager(Landroid/content/Context;)Lcom/market/sdk/DownloadInstallManager;

    move-result-object p1

    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent;->access$400()Lcom/market/sdk/LocalAppInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/market/sdk/DownloadInstallManager;->isDownloading(Lcom/market/sdk/LocalAppInfo;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 431
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 444
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 445
    invoke-static {}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask;->access$1300()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 431
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/market/sdk/XiaomiUpdateAgent$CheckUpdateTask$CheckDownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
