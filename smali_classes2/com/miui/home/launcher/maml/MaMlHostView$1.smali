.class Lcom/miui/home/launcher/maml/MaMlHostView$1;
.super Landroid/view/ViewOutlineProvider;
.source "MaMlHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/maml/MaMlHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/maml/MaMlHostView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/maml/MaMlHostView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView$1;->this$0:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView$1;->this$0:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-static {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->access$000(Lcom/miui/home/launcher/maml/MaMlHostView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView$1;->this$0:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-static {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->access$100(Lcom/miui/home/launcher/maml/MaMlHostView;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlHostView$1;->this$0:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-static {p1}, Lcom/miui/home/launcher/maml/MaMlHostView;->access$000(Lcom/miui/home/launcher/maml/MaMlHostView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlHostView$1;->this$0:Lcom/miui/home/launcher/maml/MaMlHostView;

    invoke-static {v0}, Lcom/miui/home/launcher/maml/MaMlHostView;->access$100(Lcom/miui/home/launcher/maml/MaMlHostView;)F

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_1

    .line 126
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    :goto_1
    return-void
.end method
