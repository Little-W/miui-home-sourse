.class Lmiuix/overscroller/widget/DynamicScroller$1;
.super Ljava/lang/Object;
.source "DynamicScroller.java"

# interfaces
.implements Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/overscroller/widget/DynamicScroller;->doFling(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/overscroller/widget/DynamicScroller;

.field final synthetic val$max:I

.field final synthetic val$min:I

.field final synthetic val$over:I


# direct methods
.method constructor <init>(Lmiuix/overscroller/widget/DynamicScroller;III)V
    .locals 0

    .line 174
    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    iput p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$min:I

    iput p3, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$max:I

    iput p4, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$over:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whenFinished(FF)Z
    .locals 9

    const-string v0, "fling finished: value(%f), velocity(%f), scroller boundary(%d, %d)"

    const/4 v1, 0x4

    .line 177
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iget p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$min:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x2

    aput-object p2, v1, v4

    iget p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$max:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    invoke-static {p2}, Lmiuix/overscroller/widget/DynamicScroller;->access$100(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p2

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/DynamicScroller;->access$000(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    move-result-object v0

    iget v0, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 179
    iget-object p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    invoke-static {p2}, Lmiuix/overscroller/widget/DynamicScroller;->access$100(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p2

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    invoke-static {v0}, Lmiuix/overscroller/widget/DynamicScroller;->access$000(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    move-result-object v0

    iget v0, v0, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    invoke-virtual {p2, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 181
    iget-object p2, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    invoke-static {p2}, Lmiuix/overscroller/widget/DynamicScroller;->access$100(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    move-result p2

    float-to-int p1, p1

    if-eqz p1, :cond_1

    .line 182
    iget p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$max:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-gtz p1, :cond_0

    iget p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$min:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    :cond_0
    const-string p1, "fling destination beyound boundary, start spring"

    .line 183
    invoke-static {p1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    invoke-static {p1}, Lmiuix/overscroller/widget/DynamicScroller;->access$200(Lmiuix/overscroller/widget/DynamicScroller;)V

    .line 186
    iget-object v3, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    const/4 v4, 0x2

    invoke-virtual {v3}, Lmiuix/overscroller/widget/DynamicScroller;->getCurrentPosition()I

    move-result v5

    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    invoke-virtual {p1}, Lmiuix/overscroller/widget/DynamicScroller;->getCurrVelocity()F

    move-result v6

    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->this$0:Lmiuix/overscroller/widget/DynamicScroller;

    invoke-virtual {p1}, Lmiuix/overscroller/widget/DynamicScroller;->getFinal()I

    move-result v7

    iget v8, p0, Lmiuix/overscroller/widget/DynamicScroller$1;->val$over:I

    invoke-static/range {v3 .. v8}, Lmiuix/overscroller/widget/DynamicScroller;->access$300(Lmiuix/overscroller/widget/DynamicScroller;IIFII)V

    return v2

    :cond_1
    const-string p1, "fling finished, no more work."

    .line 189
    invoke-static {p1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    return v3
.end method
