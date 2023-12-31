.class Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "FeedLauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/AsyncTaskRunnable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method

.method public static synthetic lambda$lEtlMSigTz0dqrDaXy5ivk9PzmE(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->connect()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Integer;
    .locals 2

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com.miui.newhome.USER_LEVEL"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;->doInBackground()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->access$002(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;I)I

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->access$000(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->access$102(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;Z)Z

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    new-instance p1, Lcom/miui/home/launcher/overlay/feed/-$$Lambda$FeedLauncherClient$1$lEtlMSigTz0dqrDaXy5ivk9PzmE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/overlay/feed/-$$Lambda$FeedLauncherClient$1$lEtlMSigTz0dqrDaXy5ivk9PzmE;-><init>(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
