.class public Lcom/miui/maml/elements/FramerateController;
.super Lcom/miui/maml/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:J

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTag:Ljava/lang/String;

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 6

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 20
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 24
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    const-string p2, "loop"

    .line 42
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    const-string p2, "tag"

    .line 43
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    const-string p2, "delay"

    .line 44
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/elements/FramerateController;->mDelay:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "FramerateController"

    const-string v0, "invalid delay attribute"

    .line 49
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p2, "ControlPoint"

    .line 53
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 54
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 55
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 56
    iget-object v2, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v3, Lcom/miui/maml/elements/FramerateController$ControlPoint;

    invoke-direct {v3, v1}, Lcom/miui/maml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/FramerateController$ControlPoint;

    iget-wide v2, p1, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v2, p0, Lcom/miui/maml/elements/FramerateController;->mTimeRange:J

    .line 60
    iget-boolean p1, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    if-eqz p1, :cond_2

    iget-wide v2, p0, Lcom/miui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    move p2, v1

    :cond_2
    iput-boolean p2, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    return-void
.end method

.method private restart(J)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/miui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-wide v1, p0, Lcom/miui/maml/elements/FramerateController;->mDelay:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mStartTime:J

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    const-wide/16 p1, 0x0

    .line 71
    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 72
    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 73
    invoke-virtual {p0}, Lcom/miui/maml/elements/FramerateController;->requestUpdate()V

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/miui/maml/elements/FramerateController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    sub-long/2addr p1, p3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public reset(J)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/maml/elements/FramerateController;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/FramerateController;->show(Z)V

    return-void
.end method

.method public updateFramerate(J)J
    .locals 12

    .line 99
    invoke-virtual {p0}, Lcom/miui/maml/elements/FramerateController;->updateVisibility()V

    .line 100
    invoke-virtual {p0}, Lcom/miui/maml/elements/FramerateController;->isVisible()Z

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-boolean v3, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v3, :cond_1

    .line 106
    monitor-exit v0

    return-wide v1

    .line 109
    :cond_1
    iget-wide v3, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 110
    iget-wide v3, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    sub-long v3, p1, v3

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 111
    iget-wide v7, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v7, v3, v7

    if-gez v7, :cond_2

    .line 112
    iget-wide v1, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 113
    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 114
    iget-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v0

    return-wide p1

    .line 118
    :cond_2
    iget-wide v3, p0, Lcom/miui/maml/elements/FramerateController;->mStartTime:J

    sub-long v3, p1, v3

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    move-wide v3, v5

    .line 121
    :cond_3
    iget-boolean v7, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v7, :cond_4

    iget-wide v7, p0, Lcom/miui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    rem-long/2addr v3, v7

    .line 123
    :cond_4
    iget-object v7, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_0
    if-ltz v7, :cond_8

    .line 124
    iget-object v9, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/maml/elements/FramerateController$ControlPoint;

    .line 125
    iget-wide v10, v9, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v10, v3, v10

    if-ltz v10, :cond_7

    .line 126
    iget v9, v9, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v9, v9

    invoke-virtual {p0, v9}, Lcom/miui/maml/elements/FramerateController;->requestFramerate(F)V

    .line 127
    iget-boolean v9, p0, Lcom/miui/maml/elements/FramerateController;->mLoop:Z

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/miui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-ne v7, v9, :cond_5

    .line 128
    iput-boolean v8, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    .line 130
    :cond_5
    iput-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 131
    iget-boolean p1, p0, Lcom/miui/maml/elements/FramerateController;->mStopped:Z

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    sub-long v1, v5, v3

    :goto_1
    iput-wide v1, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 132
    iget-wide p1, p0, Lcom/miui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v0

    return-wide p1

    .line 134
    :cond_7
    iget-wide v5, v9, Lcom/miui/maml/elements/FramerateController$ControlPoint;->mTime:J

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 136
    :cond_8
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
