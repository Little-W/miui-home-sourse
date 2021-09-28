.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;
.super Landroid/view/ViewOutlineProvider;
.source "ArrowPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;->addShadow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 294
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-le v0, p1, :cond_1

    sub-int/2addr v0, p1

    .line 296
    div-int/lit8 v0, v0, 0x2

    .line 297
    iget p1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 298
    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    .line 300
    div-int/lit8 p1, p1, 0x2

    .line 301
    iget v0, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 302
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 304
    :goto_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 306
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I

    move-result v0

    const/16 v2, 0x20

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_6

    const/16 v2, 0x40

    if-eq v0, v2, :cond_4

    const v2, 0x3f333333    # 0.7f

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 345
    :pswitch_0
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 346
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v0, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    .line 349
    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v4}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 351
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_5

    .line 336
    :pswitch_1
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 337
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v4}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_2

    .line 340
    :cond_3
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v3}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v0, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 342
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_5

    .line 308
    :pswitch_2
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 309
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 310
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_5

    .line 325
    :cond_4
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 326
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v2}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 327
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 328
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    .line 330
    :cond_5
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 331
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 333
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto :goto_5

    .line 314
    :cond_6
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 315
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-static {v2}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 316
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 317
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    .line 319
    :cond_7
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 320
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 322
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 354
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 355
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_6

    :cond_8
    const-string p1, "ArrowPopupView"

    const-string v0, "outline path is not convex"

    .line 357
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    :goto_6
    return-void

    :cond_9
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
