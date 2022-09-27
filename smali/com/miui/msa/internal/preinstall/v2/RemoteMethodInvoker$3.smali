.class Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$3;
.super Ljava/lang/Thread;
.source "RemoteMethodInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->invokeInNewThread(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Landroid/content/Intent;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$3;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    iput-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$3;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$300(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$3;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$3;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteMethodInvoker"

    const-string v2, "invokeInNewThread: "

    .line 107
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
