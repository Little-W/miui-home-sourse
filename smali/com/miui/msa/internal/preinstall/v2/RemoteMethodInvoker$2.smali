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

    .line 44
    iput-object p1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    iput-object p2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RemoteMethodInvoker"

    .line 48
    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$000(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$000(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$Stub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 51
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->val$service:Landroid/os/IBinder;

    aput-object v4, v3, v7

    .line 52
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    .line 50
    invoke-static {v2, v1}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$102(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Landroid/os/IInterface;)Landroid/os/IInterface;

    const-string v1, "RemoteMethodInvoker"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v3}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$100(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->val$service:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteMethodInvoker"

    const-string v3, "asInterface error : "

    .line 55
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v1, v0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$202(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$100(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$202(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$300(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "RemoteMethodInvoker"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_3
    const-string v1, "RemoteMethodInvoker"

    const-string v2, "error while invoking service methods: "

    .line 61
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :try_start_4
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$300(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "RemoteMethodInvoker"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v3, "unbindService exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v3}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$000(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_2
    iget-object v0, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$200(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$400(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;Ljava/lang/Object;)V

    return-void

    .line 64
    :goto_3
    :try_start_5
    iget-object v1, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$300(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker$2;->this$0:Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;

    invoke-static {v3}, Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;->access$000(Lcom/miui/msa/internal/preinstall/v2/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteMethodInvoker"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :goto_4
    throw v0
.end method
