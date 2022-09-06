.class Lcom/miui/home/launcher/Launcher$15;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->locateAppInner(Lcom/miui/home/launcher/ShortcutInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$targetInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 2901
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$15;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$15;->val$targetInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2903
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$15;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$15;->val$targetInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/DragLayer;->highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I

    return-void
.end method
