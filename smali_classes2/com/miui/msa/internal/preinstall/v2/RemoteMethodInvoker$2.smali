.class Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;
.super Ljava/lang/Thread;
.source "RemoteMethodInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Landroid/os/IBinder;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    iput-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "unbindService exception "

    const-string v1, "RemoteMethodInvoker"

    const/4 v2, 0x0

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v3}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$000(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v4}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$000(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$Stub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "asInterface"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 53
    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->val$service:Landroid/os/IBinder;

    aput-object v6, v5, v9

    .line 54
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    .line 52
    invoke-static {v4, v3}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$102(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v4}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$100(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->val$service:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "asInterface error : "

    .line 57
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_0
    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v3, v2}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$202(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :try_start_1
    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v4}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$100(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$202(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$300(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    :try_start_3
    const-string v3, "error while invoking service methods: "

    .line 63
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :try_start_4
    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$300(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$000(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :goto_2
    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$200(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$400(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Ljava/lang/Object;)V

    return-void

    .line 66
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v3}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$300(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {p0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$000(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :goto_4
    throw v2
.end method
