.class Lcom/miui/home/launcher/Workspace$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->onDropBack(Lcom/miui/home/launcher/DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;

.field final synthetic val$info:Lcom/miui/home/launcher/ItemInfo;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;Landroid/view/View;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    .line 1449
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$6;->this$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace$6;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace$6;->val$info:Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1451
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$6;->val$v:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v1, :cond_0

    .line 1452
    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->showAllChildViewWhenDrawChild()V

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$6;->val$info:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method
