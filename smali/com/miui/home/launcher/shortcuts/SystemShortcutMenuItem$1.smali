.class Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$1;
.super Ljava/lang/Object;
.source "SystemShortcutMenuItem.java"

# interfaces
.implements Lcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->addPairIconToWorkspace(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDuplicate()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
