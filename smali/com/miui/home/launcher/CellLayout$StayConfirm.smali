.class Lcom/miui/home/launcher/CellLayout$StayConfirm;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StayConfirm"
.end annotation


# instance fields
.field private mDragObject:Lcom/miui/home/launcher/DragObject;

.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 1382
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1384
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/CellLayout$1;)V
    .locals 0

    .line 1382
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/CellLayout$StayConfirm;-><init>(Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/miui/home/launcher/CellLayout$StayConfirm;Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DragObject;
    .locals 0

    .line 1382
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1452
    iput-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    return-void
.end method

.method public run()V
    .locals 7

    .line 1388
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    if-nez v0, :cond_0

    return-void

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-eq v0, v1, :cond_1

    return-void

    .line 1394
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$400(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    aget-object v0, v0, v2

    .line 1395
    instance-of v2, v0, Lcom/miui/home/launcher/DropTarget;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/miui/home/launcher/DropTarget;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1396
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v2}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v2

    iget v2, v2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-eq v2, v4, :cond_3

    goto/16 :goto_2

    .line 1405
    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-ne v2, v1, :cond_5

    if-eqz v0, :cond_4

    .line 1407
    invoke-interface {v0}, Lcom/miui/home/launcher/DropTarget;->isDropEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    .line 1408
    invoke-static {v1}, Lcom/miui/home/launcher/CellLayout;->access$800(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/DropTarget;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 1409
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/DropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    .line 1410
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/CellLayout;->access$802(Lcom/miui/home/launcher/CellLayout;Lcom/miui/home/launcher/DropTarget;)Lcom/miui/home/launcher/DropTarget;

    .line 1411
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1412
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    .line 1413
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->clearCellBackground()V

    goto/16 :goto_3

    .line 1416
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->isSpaceEnough(Lcom/miui/home/launcher/DragObject;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1000(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1417
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    .line 1418
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1419
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 1418
    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/CellLayout;->access$700(Lcom/miui/home/launcher/CellLayout;IIII)V

    goto/16 :goto_3

    .line 1422
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    if-nez v0, :cond_7

    .line 1423
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1424
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1100(Lcom/miui/home/launcher/CellLayout;)V

    .line 1425
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v3, v3, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v3, v3, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/CellLayout;->access$1200(Lcom/miui/home/launcher/CellLayout;IIII)V

    goto/16 :goto_3

    .line 1427
    :cond_6
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1300(Lcom/miui/home/launcher/CellLayout;)[[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v4

    aget-object v0, v0, v1

    if-nez v0, :cond_d

    .line 1428
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    .line 1429
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1000(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1430
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/CellLayout;->access$1400(Lcom/miui/home/launcher/CellLayout;II)I

    move-result v0

    .line 1431
    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v1}, Lcom/miui/home/launcher/CellLayout;->getLastOccupiedIndex()I

    move-result v1

    if-le v0, v1, :cond_d

    .line 1432
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/CellLayout;->access$1500(Lcom/miui/home/launcher/CellLayout;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1433
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->alignIconsToTop(Z)Ljava/util/ArrayList;

    goto/16 :goto_3

    .line 1437
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v0, v0, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 1438
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    goto/16 :goto_3

    .line 1440
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->isMultiDrag()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1441
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1100(Lcom/miui/home/launcher/CellLayout;)V

    goto :goto_1

    .line 1442
    :cond_9
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$1000(Lcom/miui/home/launcher/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1443
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/CellLayout;->access$900(Lcom/miui/home/launcher/CellLayout;)V

    .line 1445
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v3, v3, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v3, v3, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v4, v4, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget v4, v4, Lcom/miui/home/launcher/CellLayout$DragPos;->stayType:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/CellLayout;->access$1200(Lcom/miui/home/launcher/CellLayout;IIII)V

    goto :goto_3

    .line 1397
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    .line 1398
    iget-wide v0, v0, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/CellLayout;->access$500(Lcom/miui/home/launcher/CellLayout;)Lcom/miui/home/launcher/CellLayout$CellInfo;

    move-result-object v2

    iget-wide v5, v2, Lcom/miui/home/launcher/CellLayout$CellInfo;->screenId:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_c

    .line 1399
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1400
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 1399
    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/CellLayout;->access$600(Lcom/miui/home/launcher/CellLayout;IIII)V

    goto :goto_3

    .line 1402
    :cond_c
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v1, v0, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v1, v1, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout;->mLastDragPos:Lcom/miui/home/launcher/CellLayout$DragPos;

    iget-object v2, v2, Lcom/miui/home/launcher/CellLayout$DragPos;->cellXY:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    .line 1403
    invoke-virtual {v3}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v4, p0, Lcom/miui/home/launcher/CellLayout$StayConfirm;->mDragObject:Lcom/miui/home/launcher/DragObject;

    invoke-virtual {v4}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 1402
    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/CellLayout;->access$700(Lcom/miui/home/launcher/CellLayout;IIII)V

    .line 1448
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/CellLayout$StayConfirm;->clear()V

    return-void
.end method
