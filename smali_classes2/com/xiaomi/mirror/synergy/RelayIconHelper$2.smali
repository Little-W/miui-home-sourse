.class Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;
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

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$400()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$500(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$2;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    invoke-static {p0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getRemoteDeviceType()I

    move-result v5

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayIcon;->isSupportHandoff()Z

    move-result v7

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconUpdate(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
