.class Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem$1;
.super Ljava/lang/Object;
.source "SystemShortcutMenuItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;->getOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem$1;->this$0:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 217
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 220
    invoke-static {v0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->access$000(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)V

    .line 221
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    return-void
.end method
