.class Lcom/miui/home/launcher/UninstallDialog$3;
.super Ljava/lang/Object;
.source "UninstallDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/UninstallDialog;->removeFromDB(Lcom/miui/home/launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialog;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/UninstallDialog;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$3;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_MARKET_RECOMMEND_SHORTCUT_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.market"

    .line 426
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog$3;->this$0:Lcom/miui/home/launcher/UninstallDialog;

    invoke-static {p0}, Lcom/miui/home/launcher/UninstallDialog;->access$900(Lcom/miui/home/launcher/UninstallDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
