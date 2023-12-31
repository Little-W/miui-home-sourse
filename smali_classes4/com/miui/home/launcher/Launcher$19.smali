.class Lcom/miui/home/launcher/Launcher$19;
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

.field final synthetic val$folderParent:Lcom/miui/home/launcher/FolderIcon;

.field final synthetic val$interval:I

.field final synthetic val$targetInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ShortcutInfo;I)V
    .locals 0

    .line 3173
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$19;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$19;->val$folderParent:Lcom/miui/home/launcher/FolderIcon;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$19;->val$targetInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iput p4, p0, Lcom/miui/home/launcher/Launcher$19;->val$interval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3175
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$19;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$2800(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$19;->val$folderParent:Lcom/miui/home/launcher/FolderIcon;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/DragLayer;->highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I

    move-result v0

    .line 3178
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$19;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$500(Lcom/miui/home/launcher/Launcher;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/Launcher$19$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/Launcher$19$1;-><init>(Lcom/miui/home/launcher/Launcher$19;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
