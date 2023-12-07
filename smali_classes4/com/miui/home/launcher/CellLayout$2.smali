.class Lcom/miui/home/launcher/CellLayout$2;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellLayout;->onDrop(Lcom/miui/home/launcher/DragObject;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;

.field final synthetic val$d:Lcom/miui/home/launcher/DragObject;

.field final synthetic val$dragInfo:Lcom/miui/home/launcher/ItemInfo;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/DragObject;Landroid/view/View;)V
    .locals 0

    .line 1105
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$2;->this$0:Lcom/miui/home/launcher/CellLayout;

    iput-object p2, p0, Lcom/miui/home/launcher/CellLayout$2;->val$dragInfo:Lcom/miui/home/launcher/ItemInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/CellLayout$2;->val$d:Lcom/miui/home/launcher/DragObject;

    iput-object p4, p0, Lcom/miui/home/launcher/CellLayout$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$2;->val$dragInfo:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 1108
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$2;->val$d:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/hotseats/HotSeats;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$2;->val$v:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/home/launcher/ItemIcon;

    .line 1110
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object p0, p0, Lcom/miui/home/launcher/CellLayout$2;->val$v:Landroid/view/View;

    check-cast p0, Lcom/miui/home/launcher/ItemIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleContainer()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 1112
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 1113
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
