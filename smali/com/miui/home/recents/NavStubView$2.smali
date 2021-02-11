.class Lcom/miui/home/recents/NavStubView$2;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 253
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$100(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$300(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$500(Lcom/miui/home/recents/NavStubView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView;->access$502(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 260
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->startBreakOpenRectFAnim()V

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$700(Lcom/miui/home/recents/NavStubView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    .line 264
    :cond_4
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 265
    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$800(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v2

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 266
    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$900(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v3

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 267
    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1000(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v4

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 268
    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1100(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v5

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 269
    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1200(Lcom/miui/home/recents/NavStubView;)F

    move-result v6

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1300(Lcom/miui/home/recents/NavStubView;)F

    move-result v7

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1400(Lcom/miui/home/recents/NavStubView;)F

    move-result v8

    .line 264
    invoke-static/range {v1 .. v8}, Lcom/miui/home/recents/NavStubView;->access$1500(Lcom/miui/home/recents/NavStubView;FFFFFFF)Landroid/graphics/RectF;

    .line 271
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1600(Lcom/miui/home/recents/NavStubView;)V

    .line 272
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView$2;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v2}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->access$1800(Lcom/miui/home/recents/NavStubView;FI)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    return-void
.end method
