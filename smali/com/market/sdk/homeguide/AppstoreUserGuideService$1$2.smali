.class Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$2;
.super Ljava/lang/Object;
.source "AppstoreUserGuideService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
.method constructor <init>(Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$2;->this$1:Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1$2;->this$1:Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;->access$000(Lcom/market/sdk/homeguide/AppstoreUserGuideService$1;Z)V

    return-void
.end method
