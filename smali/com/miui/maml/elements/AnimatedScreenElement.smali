.class public abstract Lcom/miui/maml/elements/AnimatedScreenElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AnimatedScreenElement"

.field private static final S_PAINT_COLOR:I = -0x4c06f6


# instance fields
.field private mActualXVar:Lcom/miui/maml/data/IndexedVariable;

.field private mActualYVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mAlpha:I

.field public mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

.field private mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

.field private mCamera:Landroid/graphics/Camera;

.field protected mContentDescription:Ljava/lang/String;

.field protected mContentDescriptionExp:Lcom/miui/maml/data/Expression;

.field private mFolmeMode:Z

.field protected mHasContentDescription:Z

.field public mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mInterceptTouch:Z

.field private mIsHaptic:Z

.field private mListener:Lcom/miui/maml/folme/MamlTransitionListener;

.field private mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

.field private mMarginBottom:F

.field private mMarginLeft:F

.field private mMarginRight:F

.field private mMarginTop:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field public mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mPositions:Lcom/miui/maml/animation/PositionAnimation;

.field protected mPressed:Z

.field public mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mRotations:Lcom/miui/maml/animation/RotationAnimation;

.field private mScaleExpression:Lcom/miui/maml/data/Expression;

.field public mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mScales:Lcom/miui/maml/animation/ScaleAnimation;

.field private mSizes:Lcom/miui/maml/animation/SizeAnimation;

.field protected mTickListener:Lcom/miui/maml/elements/FunctionElement;

.field protected mTintChanged:Z

.field protected mTintColor:I

.field protected mTintColorParser:Lcom/miui/maml/util/ColorParser;

.field public mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field protected mTintMode:Landroid/graphics/PorterDuff$Mode;

.field protected mTintModeExp:Lcom/miui/maml/data/Expression;

.field public mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected mTouchable:Z

.field private mVirtualViewId:I

.field public mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mYProperty:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 71
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 75
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p2, 0x1

    .line 78
    iput-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 102
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 106
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x80000000

    .line 118
    iput p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 122
    new-instance p2, Lcom/miui/maml/folme/MamlTransitionListener;

    invoke-direct {p2, p0}, Lcom/miui/maml/folme/MamlTransitionListener;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListener:Lcom/miui/maml/folme/MamlTransitionListener;

    .line 126
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 127
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->addAccessibleElements(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    const p2, -0x4c06f6

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    new-instance p1, Lcom/miui/maml/folme/TransitionListenerWrapper;

    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListener:Lcom/miui/maml/folme/MamlTransitionListener;

    invoke-direct {p1, p2}, Lcom/miui/maml/folme/TransitionListenerWrapper;-><init>(Lcom/miui/maml/folme/MamlTransitionListener;)V

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeToImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeSetToImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeFromToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;
    .locals 1

    .line 237
    invoke-virtual {p0, p2, p3}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p3

    if-nez p3, :cond_0

    .line 238
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0, p2, p4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method private folmeFromToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 898
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 899
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v1

    .line 900
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p3

    .line 901
    instance-of v2, v0, Lcom/miui/maml/elements/StateElement;

    if-eqz v2, :cond_3

    instance-of v2, v1, Lcom/miui/maml/elements/StateElement;

    if-nez v2, :cond_0

    goto :goto_3

    .line 906
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 907
    check-cast v1, Lcom/miui/maml/elements/StateElement;

    .line 908
    instance-of p1, p3, Lcom/miui/maml/elements/ConfigElement;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/miui/maml/elements/ConfigElement;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 911
    :try_start_0
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    invoke-virtual {p3, p1}, Lcom/miui/maml/elements/ConfigElement;->getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    :goto_1
    const-string p2, "from"

    .line 912
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    const-string p3, "to"

    .line 913
    invoke-virtual {v1, p3}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    .line 914
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setupToProperties(Lcom/miui/maml/elements/StateElement;)V

    .line 915
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p2, p3, p1}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 917
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_3
    :goto_3
    const-string p3, "AnimatedScreenElement"

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folmeFromTo: wrong state name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private folmeSetToImpl(Ljava/lang/String;)V
    .locals 3

    .line 883
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 884
    instance-of v1, v0, Lcom/miui/maml/elements/StateElement;

    if-nez v1, :cond_0

    const-string v0, "AnimatedScreenElement"

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folmeSetTo: wrong state name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 888
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    :try_start_0
    const-string p1, "setTo"

    .line 890
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 891
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 893
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private folmeToImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 862
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    .line 863
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p2

    .line 864
    instance-of v1, v0, Lcom/miui/maml/elements/StateElement;

    if-nez v1, :cond_0

    const-string p2, "AnimatedScreenElement"

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folmeTo: wrong state name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 868
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 869
    instance-of p1, p2, Lcom/miui/maml/elements/ConfigElement;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/miui/maml/elements/ConfigElement;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 872
    :try_start_0
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 873
    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/ConfigElement;->getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    :goto_1
    const-string p2, "to"

    .line 874
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    .line 875
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setupToProperties(Lcom/miui/maml/elements/StateElement;)V

    .line 876
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 878
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private handleCancel()V
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    const-string v0, "cancel"

    .line 485
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    :cond_1
    return-void
.end method

.method private isInMainThread()Z
    .locals 2

    .line 855
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v8

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v3, "scale"

    .line 171
    invoke-direct {v0, v8, v1, v3, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    const-string v3, "x"

    const-string v4, "left"

    .line 172
    invoke-direct {v0, v8, v1, v3, v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v3

    const-string v4, "y"

    const-string v5, "top"

    .line 173
    invoke-direct {v0, v8, v1, v4, v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v4

    const-string v5, "w"

    const-string v6, "width"

    .line 174
    invoke-direct {v0, v8, v1, v5, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v5

    const-string v6, "h"

    const-string v7, "height"

    .line 175
    invoke-direct {v0, v8, v1, v6, v7}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    const-string v7, "angle"

    const-string v9, "rotation"

    .line 176
    invoke-direct {v0, v8, v1, v7, v9}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v7

    const-string v9, "centerX"

    const-string v10, "pivotX"

    .line 177
    invoke-direct {v0, v8, v1, v9, v10}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v9

    const-string v10, "centerY"

    const-string v11, "pivotY"

    .line 178
    invoke-direct {v0, v8, v1, v10, v11}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v10

    const-string v11, "alpha"

    .line 179
    invoke-direct {v0, v8, v1, v11, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v11

    const-string v12, "scaleX"

    .line 180
    invoke-direct {v0, v8, v1, v12, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v12

    const-string v13, "scaleY"

    .line 181
    invoke-direct {v0, v8, v1, v13, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v2

    const-string v13, "angleX"

    const-string v14, "rotationX"

    .line 182
    invoke-direct {v0, v8, v1, v13, v14}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v13

    const-string v14, "angleY"

    const-string v15, "rotationY"

    .line 183
    invoke-direct {v0, v8, v1, v14, v15}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v14

    const-string v15, "angleZ"

    move-object/from16 v16, v2

    const-string v2, "rotationZ"

    .line 184
    invoke-direct {v0, v8, v1, v15, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v2

    const-string v15, "centerZ"

    move-object/from16 v17, v2

    const-string v2, "pivotZ"

    .line 185
    invoke-direct {v0, v8, v1, v15, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v2

    .line 187
    iget-boolean v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasName:Z

    move-object/from16 v18, v2

    if-eqz v15, :cond_0

    .line 188
    new-instance v15, Lcom/miui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "actual_x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v15, v2, v8, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 189
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "actual_y"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x1

    invoke-direct {v2, v3, v8, v15}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualYVar:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_0

    :cond_0
    move-object/from16 v20, v3

    const/4 v15, 0x1

    :goto_0
    const-string v2, "touchable"

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    const-string v2, "interceptTouch"

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    const-string v2, "haptic"

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    const-string v2, "contentDescription"

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    const-string v2, "contentDescriptionExp"

    .line 197
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    .line 198
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v15, v3

    :cond_2
    :goto_1
    iput-boolean v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    const-string v2, "marginLeft"

    const/4 v15, 0x0

    .line 201
    invoke-static {v1, v2, v15}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    const-string v2, "marginRight"

    .line 202
    invoke-static {v1, v2, v15}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    const-string v2, "marginTop"

    .line 203
    invoke-static {v1, v2, v15}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    const-string v2, "marginBottom"

    .line 204
    invoke-static {v1, v2, v15}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    const-string v2, "tint"

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 208
    new-instance v15, Lcom/miui/maml/util/ColorParser;

    invoke-direct {v15, v8, v2}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    :cond_3
    const-string v2, "tintmode"

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lcom/miui/maml/data/Expression;

    .line 211
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v3

    :cond_4
    iput v3, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    const-string v2, "folmeMode"

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    move-object/from16 v19, v9

    move-object v15, v14

    move-object/from16 v21, v18

    move-object v9, v4

    move-object v14, v13

    move-object/from16 v18, v16

    move-object/from16 v4, v20

    move-object/from16 v20, v10

    move-object v13, v11

    move-object/from16 v16, v12

    move-object v10, v5

    move-object v11, v6

    move-object v12, v7

    goto :goto_2

    :cond_5
    move-object v4, v2

    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    .line 215
    :goto_2
    new-instance v6, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const-wide/16 v22, 0x0

    move-object v1, v6

    move-object v3, v8

    move-object/from16 p1, v15

    move-object v15, v6

    move-wide/from16 v6, v22

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 216
    new-instance v15, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const-wide/16 v6, 0x0

    move-object v1, v15

    move-object v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 217
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-object v1, v9

    move-object v4, v10

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 218
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    move-object v1, v9

    move-object v4, v11

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 219
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".rotation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const-wide/16 v6, 0x0

    move-object v1, v9

    move-object v4, v12

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 220
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".alpha"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const-wide v6, 0x406fe00000000000L    # 255.0

    move-object v1, v9

    move-object v4, v13

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 221
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".rotationX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const-wide/16 v6, 0x0

    move-object v1, v9

    move-object v4, v14

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 222
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".rotationY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    move-object v1, v9

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 223
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".rotationZ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    move-object v1, v9

    move-object/from16 v4, v17

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 224
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".scaleX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v1, v9

    move-object/from16 v4, v16

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 225
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".scaleY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    move-object v1, v9

    move-object/from16 v4, v18

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 226
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tintColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    iget v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    int-to-double v6, v1

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 227
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pivotX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const-wide/16 v6, 0x0

    move-object v1, v9

    move-object/from16 v4, v19

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 228
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pivotY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    move-object v1, v9

    move-object/from16 v4, v20

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 229
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pivotZ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    move-object v1, v9

    move-object/from16 v4, v21

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-void
.end method

.method private setupToProperties(Lcom/miui/maml/elements/StateElement;)V
    .locals 2

    .line 793
    invoke-virtual {p1}, Lcom/miui/maml/elements/StateElement;->getProperties()Ljava/util/Collection;

    move-result-object p1

    .line 794
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 795
    invoke-static {v0}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected doRenderWithTranslation(Landroid/graphics/Canvas;)V
    .locals 11

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 256
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationX()F

    move-result v1

    .line 257
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationY()F

    move-result v2

    .line 258
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationZ()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-nez v5, :cond_0

    cmpl-float v5, v2, v4

    if-nez v5, :cond_0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_3

    .line 260
    :cond_0
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    if-nez v5, :cond_1

    .line 261
    new-instance v5, Landroid/graphics/Camera;

    invoke-direct {v5}, Landroid/graphics/Camera;-><init>()V

    iput-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 263
    :cond_1
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 264
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 265
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotZ()F

    move-result v1

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v4, v4, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 270
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 273
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    move-result v1

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_4

    .line 275
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 277
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    move-result v1

    .line 278
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v3

    if-nez v5, :cond_5

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_6

    .line 280
    :cond_5
    iget-object v3, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 283
    :cond_6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v1

    .line 284
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v2

    .line 285
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v5

    sub-float v5, v1, v5

    sub-float/2addr v3, v5

    .line 286
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    move-result v5

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v6

    sub-float v6, v2, v6

    sub-float/2addr v5, v6

    .line 287
    iget-object v6, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v7, v3

    neg-float v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 288
    iget-object v6, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    add-float/2addr v3, v1

    add-float/2addr v5, v2

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 289
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 293
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-boolean v1, v1, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    if-eqz v1, :cond_7

    .line 294
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    .line 295
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v2

    cmpl-float v3, v1, v4

    if-lez v3, :cond_7

    cmpl-float v3, v2, v4

    if-lez v3, :cond_7

    .line 297
    invoke-virtual {p0, v4, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v6

    .line 298
    invoke-virtual {p0, v4, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v7

    add-float v8, v6, v1

    add-float v9, v7, v2

    .line 301
    iget-object v10, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 305
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected doTick(J)V
    .locals 2

    .line 546
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 548
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz p1, :cond_0

    .line 549
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualXVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 550
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualYVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 554
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    const/4 p2, 0x0

    if-gez p1, :cond_1

    move p1, p2

    :cond_1
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 556
    iput-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 557
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTintColor()I

    move-result p1

    .line 558
    iget p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    const/4 v0, 0x1

    if-eq p1, p2, :cond_2

    .line 559
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 560
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 562
    :cond_2
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    if-eqz p1, :cond_6

    .line 563
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 564
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lcom/miui/maml/data/Expression;

    if-eqz p2, :cond_3

    .line 565
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 567
    :cond_3
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq p2, p1, :cond_4

    .line 568
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 569
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 571
    :cond_4
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez p2, :cond_5

    .line 572
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 574
    :cond_5
    iget-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    if-eqz p2, :cond_7

    .line 575
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    invoke-direct {p2, v0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 581
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    if-eqz p1, :cond_8

    .line 582
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    :cond_8
    return-void
.end method

.method protected evaluateAlpha()I
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    .line 718
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 719
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/maml/animation/AlphaAnimation;->getAlpha()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    .line 720
    :goto_0
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    .line 724
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    instance-of v1, v1, Lcom/miui/maml/elements/LayerScreenElement;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    instance-of v1, v1, Lcom/miui/maml/elements/ElementGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 726
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->isLayered()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 727
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    :cond_3
    :goto_1
    return v0
.end method

.method public finish()V
    .locals 2

    .line 348
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 349
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 356
    new-array v0, v0, [Lcom/miui/maml/elements/AnimatedScreenElement;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public folmeCancel([Lcom/miui/maml/data/Expression;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 836
    :try_start_0
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 837
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 838
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 840
    invoke-virtual {v0, v3}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 841
    iget-object v4, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 844
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/animation/property/FloatProperty;

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    goto :goto_1

    .line 846
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IStateStyle;->cancel()V

    .line 847
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 850
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 824
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/maml/elements/AnimatedScreenElement$3;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public folmeSetTo(Ljava/lang/String;)V
    .locals 4

    .line 815
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement$2;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public folmeTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 806
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement$1;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public getAbsoluteLeft()F
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public getAbsoluteTop()F
    .locals 2

    .line 325
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 731
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    return v0
.end method

.method protected getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    if-nez v0, :cond_0

    .line 787
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/folme/AnimatedTarget;

    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v1, "AnimatedScreenElement"

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "element.getContentDescription() == null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .line 647
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getHeightRaw()F
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 652
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {v1}, Lcom/miui/maml/animation/SizeAnimation;->getHeight()D

    move-result-wide v0

    double-to-float v0, v0

    :cond_0
    return v0
.end method

.method protected getLeft()F
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v0

    return v0
.end method

.method public final getMarginBottom()F
    .locals 2

    .line 763
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginLeft()F
    .locals 2

    .line 751
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginRight()F
    .locals 2

    .line 755
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public final getMarginTop()F
    .locals 2

    .line 759
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getPivotX()F
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getPivotY()F
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getPivotZ()F
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 672
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {v1}, Lcom/miui/maml/animation/RotationAnimation;->getAngle()F

    move-result v1

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getRotationX()F
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getRotationY()F
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getRotationZ()F
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleX()F
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 692
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    if-eqz v1, :cond_1

    float-to-double v2, v0

    .line 697
    invoke-virtual {v1}, Lcom/miui/maml/animation/ScaleAnimation;->getScaleX()D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float v0, v2

    :cond_1
    return v0
.end method

.method public getScaleY()F
    .locals 4

    .line 704
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 705
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 706
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    .line 709
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    if-eqz v1, :cond_1

    float-to-double v2, v0

    .line 710
    invoke-virtual {v1}, Lcom/miui/maml/animation/ScaleAnimation;->getScaleY()D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float v0, v2

    :cond_1
    return v0
.end method

.method protected getTintColor()I
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    .line 612
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {v1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getTop()F
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .line 635
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getWidthRaw()F
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 640
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {v1}, Lcom/miui/maml/animation/SizeAnimation;->getWidth()D

    move-result-wide v0

    double-to-float v0, v0

    :cond_0
    return v0
.end method

.method protected getX()F
    .locals 4

    .line 619
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 620
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    if-eqz v1, :cond_0

    float-to-double v2, v0

    .line 621
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getX()D

    move-result-wide v0

    add-double/2addr v2, v0

    double-to-float v0, v2

    :cond_0
    float-to-double v0, v0

    .line 623
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getY()F
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    .line 628
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    if-eqz v1, :cond_0

    float-to-double v2, v0

    .line 629
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getY()D

    move-result-wide v0

    add-double/2addr v2, v0

    double-to-float v0, v2

    :cond_0
    float-to-double v0, v0

    .line 631
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .line 506
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 507
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->initProperties()V

    :cond_0
    return-void
.end method

.method protected initProperties()V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 514
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 515
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 516
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 517
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 518
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 519
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 520
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 521
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 522
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 523
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 524
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 525
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 526
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 527
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected isInFolmeMode()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onActionCancel()V
    .locals 0

    return-void
.end method

.method protected onActionDown(FF)V
    .locals 0

    .line 464
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const-string p2, "down"

    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onActionMove(FF)V
    .locals 0

    .line 468
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const-string p2, "move"

    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onActionUp()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const-string v1, "up"

    invoke-virtual {v0, p0, v1}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .locals 1

    const-string v0, "AlphaAnimation"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance p1, Lcom/miui/maml/animation/AlphaAnimation;

    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    return-object p1

    :cond_0
    const-string v0, "PositionAnimation"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance p1, Lcom/miui/maml/animation/PositionAnimation;

    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    return-object p1

    :cond_1
    const-string v0, "RotationAnimation"

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    new-instance p1, Lcom/miui/maml/animation/RotationAnimation;

    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    return-object p1

    :cond_2
    const-string v0, "SizeAnimation"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    new-instance p1, Lcom/miui/maml/animation/SizeAnimation;

    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    return-object p1

    :cond_3
    const-string v0, "ScaleAnimation"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    new-instance p1, Lcom/miui/maml/animation/ScaleAnimation;

    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/ScaleAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    return-object p1

    .line 150
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    move-result-object p1

    return-object p1
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 419
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 425
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v5, 0x7

    const/4 v6, 0x1

    if-eq p1, v5, :cond_2

    const/16 v5, 0x9

    if-eq p1, v5, :cond_1

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 429
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1, p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    move v4, v6

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 435
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getHoverElement()Lcom/miui/maml/elements/AnimatedScreenElement;

    move-result-object p1

    if-eq p1, p0, :cond_3

    .line 436
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1, p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    :cond_3
    move v4, v6

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 446
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    :cond_5
    if-eqz v4, :cond_6

    .line 448
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    if-eqz p1, :cond_6

    move v1, v6

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v1
.end method

.method protected onSetAnimBefore()V
    .locals 1

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 589
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 590
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 591
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 592
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    return-void
.end method

.method protected onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 1

    .line 597
    instance-of v0, p1, Lcom/miui/maml/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 598
    check-cast p1, Lcom/miui/maml/animation/AlphaAnimation;

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    goto :goto_0

    .line 599
    :cond_0
    instance-of v0, p1, Lcom/miui/maml/animation/PositionAnimation;

    if-eqz v0, :cond_1

    .line 600
    check-cast p1, Lcom/miui/maml/animation/PositionAnimation;

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    goto :goto_0

    .line 601
    :cond_1
    instance-of v0, p1, Lcom/miui/maml/animation/RotationAnimation;

    if-eqz v0, :cond_2

    .line 602
    check-cast p1, Lcom/miui/maml/animation/RotationAnimation;

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    goto :goto_0

    .line 603
    :cond_2
    instance-of v0, p1, Lcom/miui/maml/animation/SizeAnimation;

    if-eqz v0, :cond_3

    .line 604
    check-cast p1, Lcom/miui/maml/animation/SizeAnimation;

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    goto :goto_0

    .line 605
    :cond_3
    instance-of v0, p1, Lcom/miui/maml/animation/ScaleAnimation;

    if-eqz v0, :cond_4

    .line 606
    check-cast p1, Lcom/miui/maml/animation/ScaleAnimation;

    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    :cond_4
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 365
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 368
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 370
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 407
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    goto :goto_1

    .line 384
    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz p1, :cond_4

    .line 385
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v3

    const-string p1, "move"

    .line 386
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    goto :goto_1

    .line 391
    :pswitch_2
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    if-eqz p1, :cond_4

    .line 392
    iput-boolean v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 393
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 394
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz p1, :cond_1

    .line 395
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1, v4}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    :cond_1
    const-string p1, "up"

    .line 397
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionUp()V

    goto :goto_0

    :cond_2
    const-string p1, "cancel"

    .line 400
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    :goto_0
    move v3, v4

    goto :goto_1

    .line 373
    :pswitch_3
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 374
    iput-boolean v4, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 375
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    if-eqz p1, :cond_3

    .line 376
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1, v4}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    :cond_3
    const-string p1, "down"

    .line 378
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->performAction(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    move v3, v4

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 412
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->requestUpdate()V

    :cond_5
    if-eqz v3, :cond_6

    .line 414
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    if-eqz p1, :cond_6

    move v1, v4

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChange(Z)V
    .locals 2

    .line 492
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    if-nez p1, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 496
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/util/MamlAccessHelper;->getFocusedVirtualView()I

    move-result p1

    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    if-ne p1, v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    move-result-object p1

    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/util/MamlAccessHelper;->performAccessibilityAction(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 532
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 533
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->end([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 540
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    .line 247
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method public setHeight(D)V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public setOnTickListener(Lcom/miui/maml/elements/FunctionElement;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    return-void
.end method

.method public setVirtualViewId(I)V
    .locals 0

    .line 774
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    return-void
.end method

.method public setWidth(D)V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public setX(D)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public setY(D)V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->descale(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    return-void
.end method

.method public touched(FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 329
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    move-result p1

    return p1
.end method

.method public touched(FFZ)Z
    .locals 4

    if-eqz p3, :cond_2

    .line 334
    iget-object p3, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p3}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    move-result p3

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    :goto_1
    sub-float/2addr p1, p3

    sub-float/2addr p2, v0

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result p3

    .line 340
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v0

    .line 341
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    .line 342
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v2

    cmpl-float v3, p1, p3

    if-ltz v3, :cond_3

    add-float/2addr p3, v1

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_3

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_3

    add-float/2addr v0, v2

    cmpg-float p1, p2, v0

    if-gtz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public unsetOnTickListener()V
    .locals 1

    const/4 v0, 0x0

    .line 782
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    return-void
.end method
