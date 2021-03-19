.class public abstract Lcom/miui/maml/elements/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ScreenElement$Align;,
        Lcom/miui/maml/elements/ScreenElement$AlignV;
    }
.end annotation


# static fields
.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field private static final LOG_TAG:Ljava/lang/String; = "MAML ScreenElement"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1


# instance fields
.field private mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

.field private mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

.field protected mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

.field protected mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/animation/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected mAvailableController:Lcom/miui/maml/RendererController;

.field protected mCategory:Ljava/lang/String;

.field private mCurFramerate:F

.field private mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

.field protected mHasName:Z

.field private mInitShow:Z

.field private mIsVisible:Z

.field protected mName:Ljava/lang/String;

.field protected mParent:Lcom/miui/maml/elements/ElementGroup;

.field protected mResumed:Z

.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mShow:Z

.field protected mStyle:Lcom/miui/maml/StylesManager$Style;

.field protected mTriggers:Lcom/miui/maml/CommandTriggers;

.field private mVisibilityExpression:Lcom/miui/maml/data/Expression;

.field private mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    .line 61
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 74
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 104
    iput-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "style"

    .line 106
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/maml/ScreenElementRoot;->getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method protected static isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 418
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/maml/util/Utils;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "category"

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    const-string v0, "name"

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 118
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_2

    const-string v0, "namesSuffix"

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    :cond_1
    const-string v0, "dontAddToMap"

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    :cond_2
    const-string v0, "visibility"

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "false"

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    goto :goto_0

    :cond_3
    const-string v2, "true"

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    iput-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    goto :goto_0

    .line 134
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityExpression:Lcom/miui/maml/data/Expression;

    .line 137
    :cond_5
    :goto_0
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->LEFT:Lcom/miui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    const-string v0, "align"

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "alignH"

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v1, "right"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 143
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->RIGHT:Lcom/miui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    goto :goto_1

    :cond_7
    const-string v1, "left"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->LEFT:Lcom/miui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    goto :goto_1

    :cond_8
    const-string v1, "center"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 147
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 150
    :cond_9
    :goto_1
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    const-string v0, "alignV"

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bottom"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 153
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    goto :goto_2

    :cond_a
    const-string v1, "top"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 155
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    goto :goto_2

    :cond_b
    const-string v1, "center"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 157
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 161
    :cond_c
    :goto_2
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->loadTriggers(Lorg/w3c/dom/Element;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->loadAnimations(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private loadAnimations(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 174
    new-instance v0, Lcom/miui/maml/elements/ScreenElement$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/ScreenElement$1;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method private setVisibilityVar(Z)V
    .locals 4

    .line 316
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "visibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_2
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .locals 0

    .line 632
    invoke-interface {p1, p0}, Lcom/miui/maml/elements/ScreenElementVisitor;->visit(Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .locals 1

    .line 572
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 575
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    move-result-object p1

    return-object p1
.end method

.method protected final descale(D)D
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method protected abstract doRender(Landroid/graphics/Canvas;)V
.end method

.method protected doTick(J)V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 484
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->tick(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final evaluate(Lcom/miui/maml/data/Expression;)D
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected final evaluateStr(Lcom/miui/maml/data/Expression;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 648
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public finish()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 359
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->finish()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .locals 0

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 224
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return p3
.end method

.method protected getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 0

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 202
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return p3
.end method

.method protected getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 0

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 213
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    :cond_0
    return-wide p3
.end method

.method public getContext()Lcom/miui/maml/ScreenContext;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected final getFramerate()F
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/FramerateTokenList$FramerateToken;->getFramerate()F

    move-result v0

    :goto_0
    return v0
.end method

.method protected getLeft(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    return p1

    .line 554
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sub-float/2addr p1, p2

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getNotifierManager()Lcom/miui/maml/NotifierManager;
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/miui/maml/elements/ElementGroup;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    return-object v0
.end method

.method public getRendererController()Lcom/miui/maml/RendererController;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getTop(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    return p1

    .line 539
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sub-float/2addr p1, p2

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 270
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 272
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    :cond_0
    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 276
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {v1}, Lcom/miui/maml/CommandTriggers;->init()V

    .line 279
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 283
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 288
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    const-string v0, "init"

    .line 289
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    return v0
.end method

.method protected isVisibleInner()Z
    .locals 4

    .line 490
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityExpression:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v0, :cond_1

    goto :goto_1

    .line 492
    :cond_1
    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method protected loadTriggers(Lorg/w3c/dom/Element;)V
    .locals 1

    const-string v0, "Triggers"

    .line 167
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    new-instance v0, Lcom/miui/maml/CommandTriggers;

    invoke-direct {v0, p1, p0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    :cond_0
    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onSetAnimBefore()V
    .locals 0

    return-void
.end method

.method protected onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onVisibilityChange(Z)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    if-nez p1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getFramerate()F

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/ScreenElement;->mCurFramerate:F

    const/4 p1, 0x0

    .line 308
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    goto :goto_0

    .line 311
    :cond_0
    iget p1, p0, Lcom/miui/maml/elements/ScreenElement;->mCurFramerate:F

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 327
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1}, Lcom/miui/maml/CommandTriggers;->pause()V

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 333
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->pause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final pauseAnim()V
    .locals 2

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 426
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 427
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method protected pauseAnim(J)V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 434
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->pauseAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public performAction(Ljava/lang/String;)V
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 666
    invoke-virtual {v0, p1}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    :cond_0
    return-void
.end method

.method public final playAnim()V
    .locals 7

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 365
    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 13

    move-object v0, p0

    .line 375
    iget-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 378
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/maml/animation/BaseAnimation;

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/miui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final playAnim(JJZZ)V
    .locals 11

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-object v0, p0

    move-wide v1, v9

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 370
    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 371
    invoke-virtual {p0, v9, v10}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method protected final postInMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 661
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->postRunnable(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererController;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 498
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final requestFramerate(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return-void

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    if-nez v1, :cond_2

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    .line 622
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_4

    .line 626
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getSystemFrameRate()F

    move-result v0

    .line 627
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_3

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/miui/maml/FramerateTokenList$FramerateToken;->requestFramerate(F)V

    :cond_4
    return-void
.end method

.method public requestUpdate()V
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 456
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 457
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 459
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public reset(J)V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 466
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 341
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->resume()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 347
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final resumeAnim()V
    .locals 2

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 441
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 442
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method protected resumeAnim(J)V
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 449
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->resumeAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final scale(D)F
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr p1, v0

    double-to-float p1, p1

    return p1
.end method

.method protected setActualHeight(D)V
    .locals 4

    .line 525
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v0, :cond_1

    .line 529
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "actual_h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    return-void
.end method

.method protected setActualWidth(D)V
    .locals 4

    .line 515
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    if-nez v0, :cond_1

    .line 519
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "actual_w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 5

    .line 391
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->onSetAnimBefore()V

    .line 394
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 396
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 397
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/miui/maml/elements/ScreenElement;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    .line 398
    invoke-virtual {v2, v4}, Lcom/miui/maml/animation/BaseAnimation;->setDisable(Z)V

    if-eqz v3, :cond_0

    .line 401
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ScreenElement;->onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setAnimations(Ljava/lang/String;)V
    .locals 1

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->removeElement(Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/ScreenElementRoot;->addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public setParent(Lcom/miui/maml/elements/ElementGroup;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    return-void
.end method

.method public show(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 233
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 234
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 1

    .line 472
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 473
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method protected updateVisibility()V
    .locals 2

    .line 293
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    .line 295
    iget-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    if-eq v1, v0, :cond_0

    .line 296
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 297
    iget-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    :cond_0
    return-void
.end method
