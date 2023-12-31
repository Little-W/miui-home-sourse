.class Lcom/market/sdk/ServiceProxy2$ProxyTask$1$1;
.super Landroid/os/AsyncTask;
.source "ServiceProxy2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
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
.field final synthetic this$2:Lcom/market/sdk/ServiceProxy2$ProxyTask$1;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/market/sdk/ServiceProxy2$ProxyTask$1;Landroid/os/IBinder;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1$1;->this$2:Lcom/market/sdk/ServiceProxy2$ProxyTask$1;

    iput-object p2, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/market/sdk/ServiceProxy2$ProxyTask$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1$1;->this$2:Lcom/market/sdk/ServiceProxy2$ProxyTask$1;

    iget-object p0, p0, Lcom/market/sdk/ServiceProxy2$ProxyTask$1$1;->val$service:Landroid/os/IBinder;

    invoke-static {p1, p0}, Lcom/market/sdk/ServiceProxy2$ProxyTask$1;->access$100(Lcom/market/sdk/ServiceProxy2$ProxyTask$1;Landroid/os/IBinder;)V

    const/4 p0, 0x0

    return-object p0
.end method
