.class Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$1;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->run(Landroid/os/IBinder;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;


# direct methods
.method constructor <init>(Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$1;->this$1:Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p2, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$1;->this$1:Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->access$000(Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;Z)V

    iget-object p0, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$1;->this$1:Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;

    invoke-virtual {p0}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->unbind()V

    return-void
.end method
