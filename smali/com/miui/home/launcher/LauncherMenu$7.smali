.class Lcom/miui/home/launcher/LauncherMenu$7;
.super Ljava/lang/Object;
.source "LauncherMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherMenu;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherMenu;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherMenu;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$7;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$7;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$000(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    .line 161
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.home.Setting"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10808000

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu$7;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherMenu;->access$300(Lcom/miui/home/launcher/LauncherMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "more_settings"

    .line 164
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingSubClicked(Ljava/lang/String;)V

    return-void
.end method
