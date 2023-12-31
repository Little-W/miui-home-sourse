.class Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;
.super Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;
.source "AdvancedSlider.java"

# interfaces
.implements Lcom/miui/maml/elements/ITicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedAccController"
.end annotation


# instance fields
.field private mBounceAccelation:I

.field private mBounceAccelationExp:Lcom/miui/maml/data/Expression;

.field private mBounceInitSpeed:I

.field private mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

.field private mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 257
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    .line 258
    invoke-virtual {p1}, Lcom/miui/maml/elements/AdvancedSlider;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "bounceInitSpeed"

    invoke-virtual {p1, p2, v1}, Lcom/miui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    .line 259
    invoke-virtual {p1}, Lcom/miui/maml/elements/AdvancedSlider;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "bounceAcceleration"

    invoke-virtual {p1, p2, v1}, Lcom/miui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lcom/miui/maml/data/Expression;

    .line 260
    iget-boolean p2, p1, Lcom/miui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz p2, :cond_0

    .line 261
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/miui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bounce_progress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/maml/elements/AdvancedSlider;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    :cond_0
    return-void
.end method


# virtual methods
.method protected getDistance(J)J
    .locals 10

    .line 293
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    int-to-long v1, v0

    mul-long/2addr v1, p1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget v5, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    int-to-long v6, v5

    mul-long/2addr v6, p1

    mul-long/2addr v6, p1

    const-wide/32 v8, 0x1e8480

    div-long/2addr v6, v8

    add-long/2addr v1, v6

    int-to-long v6, v0

    int-to-long v8, v5

    mul-long/2addr v8, p1

    .line 294
    div-long/2addr v8, v3

    add-long/2addr v6, v8

    const-wide/16 p1, 0x0

    cmp-long p1, v6, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gtz p1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->onStop()V

    .line 297
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 301
    :cond_0
    iget-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mTotalDistance:D

    const-wide/16 v5, 0x0

    cmpl-double p1, p1, v5

    if-lez p1, :cond_2

    long-to-double p1, v1

    .line 302
    iget-wide v5, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mTotalDistance:D

    div-double/2addr p1, v5

    .line 305
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_2

    cmpl-double v0, p1, v3

    if-lez v0, :cond_1

    move-wide p1, v3

    .line 306
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_2
    return-wide v1
.end method

.method public init()V
    .locals 2

    .line 267
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 268
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 269
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/AdvancedSlider;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeed:I

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelationExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 286
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/AdvancedSlider;->evaluate(Lcom/miui/maml/data/Expression;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceAccelation:I

    .line 287
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceProgress:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p0, :cond_2

    const-wide/16 v0, 0x0

    .line 288
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_2
    return-void
.end method

.method public start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->mBounceInitSpeedExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;->onStop()V

    goto :goto_0

    .line 277
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    :goto_0
    return-void
.end method
