.class Lcom/miui/home/settings/MiuiHomeSettings$7;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->showInstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$7;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 744
    new-instance p1, Landroid/content/Intent;

    const-string p2, "mimarket://details?id=com.miui.newhome"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "com.xiaomi.market"

    const-string v0, "com.xiaomi.market.ui.AppDetailActivity"

    .line 745
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$7;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    const/16 p2, 0x64

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    .line 748
    invoke-static {p0}, Lcom/miui/home/settings/LauncherGestureController;->putSlideUpAppInstalling(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 750
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
