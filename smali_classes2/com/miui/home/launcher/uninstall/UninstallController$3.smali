.class Lcom/miui/home/launcher/uninstall/UninstallController$3;
.super Ljava/lang/Object;
.source "UninstallController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/UninstallController;->deleteItem(Lcom/miui/home/launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/UninstallController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallController;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallController$3;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_MARKET_RECOMMEND_SHORTCUT_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.market"

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallController$3;->this$0:Lcom/miui/home/launcher/uninstall/UninstallController;

    invoke-static {p0}, Lcom/miui/home/launcher/uninstall/UninstallController;->access$300(Lcom/miui/home/launcher/uninstall/UninstallController;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
