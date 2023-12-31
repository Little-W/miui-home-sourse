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

    .line 232
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem$1;->this$0:Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 235
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getBindedItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    .line 238
    instance-of v0, p1, Lcom/miui/home/launcher/PairShortcutInfo;

    if-eqz v0, :cond_1

    .line 239
    check-cast p1, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 240
    invoke-virtual {p1}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/miui/home/recents/util/PairUtils;->addPairIconToWorkspace(Lcom/miui/home/launcher/PairShortcutInfo;Lcom/miui/home/launcher/Launcher;Landroid/graphics/Bitmap;Z)V

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    return-void
.end method
