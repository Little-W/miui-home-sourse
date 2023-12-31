.class abstract Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"

# interfaces
.implements Lcom/miui/maml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ReboundAnimationController"
.end annotation


# instance fields
.field private mBounceStartPointIndex:I

.field private mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

.field private mPreDistance:J

.field protected mStartTime:J

.field private mStartX:F

.field private mStartY:F

.field protected mTotalDistance:D

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;)V
    .locals 2

    .line 96
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 100
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;
    .locals 4

    .line 226
    new-instance p0, Lcom/miui/maml/util/Utils$Point;

    float-to-double v0, p1

    float-to-double p1, p2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 227
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    float-to-double p2, p3

    float-to-double v0, p4

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    const/4 p2, 0x1

    .line 228
    invoke-static {p0, p1, p2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    move-result-wide p2

    long-to-double p4, p5

    cmpl-double p6, p4, p2

    if-ltz p6, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sub-double p4, p2, p4

    div-double/2addr p4, p2

    .line 232
    iget-wide p2, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    iget-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    sub-double/2addr p2, v0

    mul-double/2addr p2, p4

    .line 233
    iget-wide v0, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    iget-wide v2, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p4

    .line 234
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    iget-wide p4, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    add-double/2addr p4, p2

    iget-wide p2, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    add-double/2addr p2, v0

    invoke-direct {p1, p4, p5, p2, p3}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    return-object p1
.end method


# virtual methods
.method protected abstract getDistance(J)J
.end method

.method public init()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 116
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method public isRunning()Z
    .locals 4

    .line 238
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onMove(FF)V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->access$300(Lcom/miui/maml/elements/AdvancedSlider;FF)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 160
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 161
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {p0}, Lcom/miui/maml/elements/AdvancedSlider;->access$200(Lcom/miui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method public start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V
    .locals 11

    const-wide/16 v0, 0x0

    .line 120
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 121
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 122
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    .line 123
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    const-wide/16 v0, 0x0

    .line 125
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 126
    new-instance v0, Lcom/miui/maml/util/Utils$Point;

    iget v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    float-to-double v1, v1

    iget v3, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 127
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    move v2, v1

    .line 128
    :goto_0
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 129
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 130
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 131
    new-instance v6, Lcom/miui/maml/util/Utils$Point;

    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v3

    float-to-double v9, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 132
    new-instance v3, Lcom/miui/maml/util/Utils$Point;

    invoke-virtual {v5}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v5}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v5

    float-to-double v9, v5

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v5, 0x0

    .line 133
    invoke-static {v6, v3, v0, v5}, Lcom/miui/maml/util/Utils;->pointProjectionOnSegment(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)Lcom/miui/maml/util/Utils$Point;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 135
    iput v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 136
    iget-wide v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    invoke-static {v6, v5, v1}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    move-result-wide v0

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    goto :goto_1

    .line 139
    :cond_0
    iget-wide v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    invoke-static {v6, v3, v1}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_1
    new-instance p1, Lcom/miui/maml/util/Utils$Point;

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v4}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    .line 146
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mTotalDistance:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    return-void

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStart()V

    .line 152
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->requestUpdate()V

    return-void
.end method

.method public stopRunning()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 242
    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    return-void
.end method

.method public tick(J)V
    .locals 13

    .line 165
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 169
    iput-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    .line 170
    iput-wide v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    goto/16 :goto_3

    :cond_1
    sub-long/2addr p1, v0

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getDistance(J)J

    move-result-wide p1

    .line 176
    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    return-void

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v1

    add-float/2addr v0, v1

    .line 189
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v1

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v2

    add-float/2addr v1, v2

    .line 190
    iget-wide v2, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    sub-long v2, p1, v2

    .line 191
    iget v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    :goto_0
    if-ltz v4, :cond_8

    .line 192
    iget-object v5, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    invoke-static {v5}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 193
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v6

    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v7

    move-object v5, p0

    move v8, v0

    move v9, v1

    move-wide v10, v2

    invoke-direct/range {v5 .. v11}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;

    move-result-object v5

    if-nez v5, :cond_5

    if-nez v4, :cond_4

    .line 196
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    goto :goto_2

    .line 199
    :cond_4
    new-instance v5, Lcom/miui/maml/util/Utils$Point;

    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v8

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 200
    new-instance v6, Lcom/miui/maml/util/Utils$Point;

    float-to-double v7, v0

    float-to-double v0, v1

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    long-to-double v0, v2

    const/4 v2, 0x1

    .line 201
    invoke-static {v5, v6, v2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-long v2, v0

    .line 202
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v0

    .line 203
    invoke-virtual {v12}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 206
    :cond_5
    iput v4, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mBounceStartPointIndex:I

    .line 207
    iget-wide v0, v5, Lcom/miui/maml/util/Utils$Point;->x:D

    double-to-float v0, v0

    iget-wide v1, v5, Lcom/miui/maml/util/Utils$Point;->y:D

    double-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    goto :goto_2

    .line 180
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v5

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {v0}, Lcom/miui/maml/elements/AdvancedSlider;->access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v6

    iget v7, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartX:F

    iget v8, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mStartY:F

    move-object v4, p0

    move-wide v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->getPoint(FFFFJ)Lcom/miui/maml/util/Utils$Point;

    move-result-object v0

    if-nez v0, :cond_7

    .line 183
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onStop()V

    goto :goto_2

    .line 185
    :cond_7
    iget-wide v1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    double-to-float v1, v1

    iget-wide v2, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    double-to-float v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->onMove(FF)V

    .line 212
    :cond_8
    :goto_2
    iput-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->mPreDistance:J

    .line 215
    :goto_3
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->requestUpdate()V

    return-void
.end method
