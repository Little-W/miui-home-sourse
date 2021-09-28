.class Lcom/miui/home/launcher/Workspace$14;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Workspace;->findPosForIcon(Lcom/miui/home/launcher/ItemInfo;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;

.field final synthetic val$cellInfo:Lcom/miui/home/launcher/Workspace$CellInfo;

.field final synthetic val$icon:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$CellInfo;Landroid/view/View;)V
    .locals 0

    .line 2350
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$14;->this$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/Workspace$14;->val$cellInfo:Lcom/miui/home/launcher/Workspace$CellInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/Workspace$14;->val$icon:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2353
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$14;->this$0:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$14;->val$cellInfo:Lcom/miui/home/launcher/Workspace$CellInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/Workspace$CellInfo;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->getCellLayoutById(J)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    .line 2354
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$14;->val$icon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 2355
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$14;->val$icon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2356
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2357
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$14;->val$icon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2359
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$14;->val$icon:Landroid/view/View;

    const/4 v2, -0x1

    new-instance v3, Lcom/miui/home/launcher/CellLayout$LayoutParams;

    invoke-direct {v3}, Lcom/miui/home/launcher/CellLayout$LayoutParams;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
