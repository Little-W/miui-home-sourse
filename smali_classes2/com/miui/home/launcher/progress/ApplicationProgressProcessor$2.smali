.class Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;
.super Landroid/os/AsyncTask;
.source "ApplicationProgressProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

.field final synthetic val$allServers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Ljava/util/ArrayList;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->val$allServers:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 188
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 191
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-static {p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->access$200(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-static {p1}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->access$200(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 193
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->val$allServers:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 196
    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->val$allServers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-static {v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->access$300(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 206
    iget-object v2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-static {v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->access$200(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/progress/ProgressManager;->getManager(Landroid/content/Context;)Lcom/miui/home/launcher/progress/ProgressManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    invoke-static {v3}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->access$200(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Lcom/miui/home/launcher/Launcher;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$2;->this$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    .line 207
    invoke-static {v4}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->access$300(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 206
    invoke-virtual {v2, v3, v1, v4}, Lcom/miui/home/launcher/progress/ProgressManager;->queryProgressByBroadcast(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-object v0
.end method
