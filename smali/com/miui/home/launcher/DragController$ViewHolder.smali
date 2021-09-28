.class Lcom/miui/home/launcher/DragController$ViewHolder;
.super Landroid/widget/ImageView;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragController;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/DragController;Landroid/content/Context;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$ViewHolder;->this$0:Lcom/miui/home/launcher/DragController;

    .line 261
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setMeasuredDimensionPub(II)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method
