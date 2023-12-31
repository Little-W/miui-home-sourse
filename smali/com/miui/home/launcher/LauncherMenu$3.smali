.class Lcom/miui/home/launcher/LauncherMenu$3;
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

    .line 130
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$3;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$3;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherMenu;->access$100(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->showTransitionMenu(Z)V

    .line 134
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherMenu$3;->this$0:Lcom/miui/home/launcher/LauncherMenu;

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherMenu;->access$100(Lcom/miui/home/launcher/LauncherMenu;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->showMenu(Z)V

    const-string p0, "screen_scroll"

    .line 135
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackHomeSettingSubClicked(Ljava/lang/String;)V

    return-void
.end method
