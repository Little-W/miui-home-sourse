.class Lcom/miui/home/launcher/DragController$2;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/util/function/Function;


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
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$scale:F

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$2;->val$v:Landroid/view/View;

    iput p2, p0, Lcom/miui/home/launcher/DragController$2;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1

    .line 544
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 545
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 547
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/DragController$2;->val$v:Landroid/view/View;

    iget v0, p0, Lcom/miui/home/launcher/DragController$2;->val$scale:F

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DragController;->createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 541
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DragController$2;->apply(Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
