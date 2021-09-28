.class Lcom/miui/home/launcher/DragController$3;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragController;->createOutlineAsync(Landroid/view/View;FLcom/miui/home/launcher/DragView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$dragView:Lcom/miui/home/launcher/DragView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragView;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$3;->val$dragView:Lcom/miui/home/launcher/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$3;->val$dragView:Lcom/miui/home/launcher/DragView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView;->setOutline(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 549
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragController$3;->accept(Landroid/graphics/Bitmap;)V

    return-void
.end method
