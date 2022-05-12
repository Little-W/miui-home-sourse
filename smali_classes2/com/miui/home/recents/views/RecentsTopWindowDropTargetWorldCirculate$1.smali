.class Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$1;
.super Ljava/lang/Object;
.source "RecentsTopWindowDropTargetWorldCirculate.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->startAppToWorldCirculate(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$1;->this$0:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$1;->this$0:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->access$000(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 107
    iget-object p2, p0, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$1;->this$0:Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;

    invoke-static {p2}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;->access$100(Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate;)Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;

    move-result-object p2

    invoke-interface {p2, p1, v1, p3, p4}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetWorldCirculate$UpdateWindowPosition;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    return-void
.end method
