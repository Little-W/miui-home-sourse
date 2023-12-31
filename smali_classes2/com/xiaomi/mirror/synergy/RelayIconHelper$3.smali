.class Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/RelayIconHelper;->registerCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/RelayIconCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$600()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$700(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->isRelaySuccess()Z

    move-result v0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->getRelayType()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onRelayComplete(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->getRelayErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->getRelayErrMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onRelayError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
