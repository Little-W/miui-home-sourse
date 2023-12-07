.class Lcom/mi/globallauncher/view/ViewTapTarget$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/ViewTapTarget;->onReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/ViewTapTarget;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iput-object p2, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v1, v1, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    aget v7, v0, v3

    iget-object v8, v1, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v0, v0, v5

    iget-object v5, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v5, v5, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v2, v4, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v1, Lcom/mi/globallauncher/view/ViewTapTarget;->bounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v0, v0, Lcom/mi/globallauncher/view/ViewTapTarget;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v0, v0, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v0, v0, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v0, v0, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v1, v1, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v2, v2, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v1, Lcom/mi/globallauncher/view/ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/mi/globallauncher/view/ViewTapTarget;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v0, v0, Lcom/mi/globallauncher/view/ViewTapTarget;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v1, v1, Lcom/mi/globallauncher/view/ViewTapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->this$0:Lcom/mi/globallauncher/view/ViewTapTarget;

    iget-object v2, v2, Lcom/mi/globallauncher/view/ViewTapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object p0, p0, Lcom/mi/globallauncher/view/ViewTapTarget$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
