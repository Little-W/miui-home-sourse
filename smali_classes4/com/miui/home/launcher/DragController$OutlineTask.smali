.class abstract Lcom/miui/home/launcher/DragController$OutlineTask;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OutlineTask"
.end annotation


# instance fields
.field protected final executor:Ljava/util/concurrent/Executor;

.field protected final scale:F

.field protected final view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/view/View;F)V
    .locals 0

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$OutlineTask;->executor:Ljava/util/concurrent/Executor;

    .line 655
    iput-object p2, p0, Lcom/miui/home/launcher/DragController$OutlineTask;->view:Landroid/view/View;

    .line 656
    iput p3, p0, Lcom/miui/home/launcher/DragController$OutlineTask;->scale:F

    return-void
.end method

.method public static create(Landroid/view/View;F)Lcom/miui/home/launcher/DragController$OutlineTask;
    .locals 1

    .line 642
    instance-of v0, p0, Lcom/miui/home/launcher/ItemIcon;

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Lcom/miui/home/launcher/DragController$ItemIconOutlineTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/DragController$ItemIconOutlineTask;-><init>(Landroid/view/View;F)V

    return-object v0

    .line 645
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;-><init>(Landroid/view/View;F)V

    return-object v0
.end method


# virtual methods
.method abstract getOutline()Landroid/graphics/Bitmap;
.end method
