.class Lcom/market/ServiceProxy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/market/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/ServiceProxy;->test()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market/ServiceProxy;


# direct methods
.method constructor <init>(Lcom/market/ServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/market/ServiceProxy$1;->this$0:Lcom/market/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
