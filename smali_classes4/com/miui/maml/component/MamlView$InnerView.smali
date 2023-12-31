.class Lcom/miui/maml/component/MamlView$InnerView;
.super Landroid/view/View;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/component/MamlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/component/MamlView;


# direct methods
.method public constructor <init>(Lcom/miui/maml/component/MamlView;Landroid/content/Context;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 253
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 258
    iget-object v0, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    iget-object v0, v0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    invoke-static {v0}, Lcom/miui/maml/component/MamlView;->access$100(Lcom/miui/maml/component/MamlView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 264
    iget-object v1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    invoke-static {v1}, Lcom/miui/maml/component/MamlView;->access$200(Lcom/miui/maml/component/MamlView;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    invoke-static {v2}, Lcom/miui/maml/component/MamlView;->access$300(Lcom/miui/maml/component/MamlView;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    iget-object v1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    invoke-static {v1}, Lcom/miui/maml/component/MamlView;->access$400(Lcom/miui/maml/component/MamlView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    invoke-static {v1}, Lcom/miui/maml/component/MamlView;->access$400(Lcom/miui/maml/component/MamlView;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    invoke-static {v2}, Lcom/miui/maml/component/MamlView;->access$400(Lcom/miui/maml/component/MamlView;)F

    move-result v2

    iget-object v3, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    invoke-static {v3}, Lcom/miui/maml/component/MamlView;->access$500(Lcom/miui/maml/component/MamlView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    invoke-static {v4}, Lcom/miui/maml/component/MamlView;->access$600(Lcom/miui/maml/component/MamlView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 268
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method
