.class Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "FeedLauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->onStart()V
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


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Integer;
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-static {v0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->access$200(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.miui.newhome.USER_LEVEL"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;->doInBackground()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->access$002(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;I)I

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->access$100(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->access$000(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-static {p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->access$300(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;->this$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-virtual {p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;->connect()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
