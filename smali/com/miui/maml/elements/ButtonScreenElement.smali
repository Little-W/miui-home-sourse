.class public Lcom/miui/maml/elements/ButtonScreenElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mIsAlignChildren:Z

.field private mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Lcom/miui/maml/elements/ElementGroup;

.field private mPressedElements:Lcom/miui/maml/elements/ElementGroup;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ButtonScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "alignChildren"

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ButtonScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    const-string v0, "listener"

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ButtonScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mTouchable:Z

    return-void
.end method

.method private showNormalElements()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mNormalElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 128
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->show(Z)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPressedElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->show(Z)V

    :cond_1
    return-void
.end method

.method private showPressedElements()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPressedElements:Lcom/miui/maml/elements/ElementGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->show(Z)V

    .line 138
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mNormalElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->show(Z)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mNormalElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->show(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 2

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 174
    iget-boolean v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->getLeft()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->getTop()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getParentLeft()F
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->getLeft()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v1

    :goto_1
    add-float/2addr v0, v1

    return v0
.end method

.method protected getParentTop()F
    .locals 3

    .line 168
    iget-boolean v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->getTop()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    :goto_1
    add-float/2addr v0, v1

    return v0
.end method

.method public init()V
    .locals 3

    .line 148
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 150
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 153
    :try_start_0
    check-cast v0, Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iput-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ButtonScreenElement"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "button listener designated by the name is not actually a listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->showNormalElements()V

    return-void
.end method

.method protected onActionCancel()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->onActionCancel()V

    .line 117
    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->resetState()V

    return-void
.end method

.method protected onActionDown(FF)V
    .locals 4

    .line 78
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->onActionDown(FF)V

    .line 79
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    .line 83
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long/2addr v0, v2

    .line 84
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 85
    iget v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    sub-float v0, p1, v0

    .line 86
    iget v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    sub-float v1, p2, v1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    .line 88
    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    mul-int/2addr v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    :cond_1
    const-string v0, "double"

    .line 94
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ButtonScreenElement;->performAction(Ljava/lang/String;)V

    .line 97
    :cond_2
    iput p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    .line 98
    iput p2, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    .line 99
    invoke-direct {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->showPressedElements()V

    .line 100
    iget-object p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPressedElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz p1, :cond_3

    .line 101
    invoke-virtual {p1}, Lcom/miui/maml/elements/ElementGroup;->reset()V

    :cond_3
    return-void
.end method

.method public onActionUp()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->onActionUp()V

    .line 107
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 111
    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->resetState()V

    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    .line 67
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Normal"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    iget-object v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mNormalElements:Lcom/miui/maml/elements/ElementGroup;

    return-object v0

    :cond_0
    const-string v1, "Pressed"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    iget-object v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPressedElements:Lcom/miui/maml/elements/ElementGroup;

    return-object v0

    .line 73
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1
.end method

.method protected resetState()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->showNormalElements()V

    .line 122
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mNormalElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->reset()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    return-void
.end method
