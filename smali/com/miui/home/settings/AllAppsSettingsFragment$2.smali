.class Lcom/miui/home/settings/AllAppsSettingsFragment$2;
.super Ljava/lang/Object;
.source "AllAppsSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/AllAppsSettingsFragment;->showInstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/AllAppsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/AllAppsSettingsFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment$2;->this$0:Lcom/miui/home/settings/AllAppsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 239
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    const-string v0, "mimarket://details?id=com.miui.newhome"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "com.xiaomi.market"

    const-string v0, "com.xiaomi.market.ui.AppDetailActivity"

    .line 240
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :try_start_0
    iget-object p2, p0, Lcom/miui/home/settings/AllAppsSettingsFragment$2;->this$0:Lcom/miui/home/settings/AllAppsSettingsFragment;

    const/16 v0, 0x64

    invoke-virtual {p2, p1, v0}, Lcom/miui/home/settings/AllAppsSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    .line 243
    invoke-static {p1}, Lcom/miui/home/settings/LauncherGestureController;->putSlideUpAppInstalling(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
