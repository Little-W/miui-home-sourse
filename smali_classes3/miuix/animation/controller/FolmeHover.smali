.class public Lmiuix/animation/controller/FolmeHover;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeHover.java"

# interfaces
.implements Lmiuix/animation/IHoverStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;
    }
.end annotation


# static fields
.field private static final CORNER_DIS:I = 0x24

.field private static final DEFAULT_CORNER:F = 0.5f

.field private static final DEFAULT_SCALE:F = 1.15f

.field private static final SCALE_DIS:I = 0xc

.field private static sHoverRecord:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private HoverMoveType:Ljava/lang/String;

.field private isSetAutoTranslation:Z

.field private mChildView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mClearTint:Z

.field private mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

.field private mDefListener:Lmiuix/animation/listener/TransitionListener;

.field private mEnterConfig:Lmiuix/animation/base/AnimConfig;

.field private mExitConfig:Lmiuix/animation/base/AnimConfig;

.field private mHoverView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnter:Z

.field private mLocation:[I

.field private mMoveConfig:Lmiuix/animation/base/AnimConfig;

.field private mParentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRadius:F

.field private mScaleSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IHoverStyle$HoverType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSetTint:Z

.field private mTargetHeight:I

.field private mTargetWidth:I

.field private mTranslateDist:F

.field private mTranslationSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IHoverStyle$HoverType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    return-void
.end method

.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 5

    .line 87
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 49
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslateDist:F

    .line 51
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    .line 52
    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mMoveConfig:Lmiuix/animation/base/AnimConfig;

    .line 54
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    .line 55
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    .line 59
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 63
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    new-array v2, v1, [I

    .line 66
    iput-object v2, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    const/4 v2, 0x0

    .line 67
    iput v2, p0, Lmiuix/animation/controller/FolmeHover;->mRadius:F

    .line 68
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 69
    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    const-string v2, "MOVE"

    .line 75
    iput-object v2, p0, Lmiuix/animation/controller/FolmeHover;->HoverMoveType:Ljava/lang/String;

    .line 77
    new-instance v2, Lmiuix/animation/controller/FolmeHover$1;

    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeHover$1;-><init>(Lmiuix/animation/controller/FolmeHover;)V

    iput-object v2, p0, Lmiuix/animation/controller/FolmeHover;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 88
    array-length v2, p1

    if-lez v2, :cond_0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->initDist(Lmiuix/animation/IAnimTarget;)V

    .line 89
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->updateHoverState(Lmiuix/animation/IHoverStyle$HoverEffect;)V

    .line 91
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 92
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x1

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    iget-object v4, p0, Lmiuix/animation/controller/FolmeHover;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v4, v2, v0

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 94
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    new-array p1, v1, [F

    fill-array-data p1, :array_2

    invoke-virtual {p0, v3, p1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v2, -0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    .line 95
    invoke-virtual {p0, p1, v2, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_1
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method static synthetic access$100(Lmiuix/animation/controller/FolmeHover;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private actualTranslatDist(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 7

    .line 734
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 735
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 736
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 738
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 739
    iget-object v3, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    sub-float/2addr v0, v1

    .line 740
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float/2addr p2, v3

    .line 741
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 743
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 744
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 746
    iget v1, p0, Lmiuix/animation/controller/FolmeHover;->mTranslateDist:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v1, v3

    if-nez v4, :cond_0

    move v1, p1

    :cond_0
    mul-float/2addr v0, v1

    .line 747
    iget v1, p0, Lmiuix/animation/controller/FolmeHover;->mTranslateDist:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    mul-float/2addr p2, p1

    .line 749
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->HoverMoveType:Ljava/lang/String;

    invoke-interface {p1, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v3, v0

    .line 750
    invoke-virtual {p1, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v3, p2

    .line 751
    invoke-virtual {p1, v0, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 752
    iget-object p2, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    new-array v0, v5, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mMoveConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v0, v2

    invoke-interface {p2, p1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private static addMagicPoint(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 904
    const-class v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 907
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "addMagicPoint"

    .line 908
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 909
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 911
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addMagicPoint failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static clearMagicPoint(Landroid/view/View;)V
    .locals 4

    :try_start_0
    const-string v0, "android.view.View"

    .line 917
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clearMagicPoint"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 918
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 919
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearMagicPoint failed , e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private clearRound()V
    .locals 0

    return-void
.end method

.method private clearScale()V
    .locals 2

    .line 223
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 225
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 227
    :cond_0
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 229
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 231
    :cond_1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearTranslation()V
    .locals 2

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 236
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 238
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 240
    :cond_0
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 242
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 244
    :cond_1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private varargs doHandleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->handleViewHover(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 280
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setHoverView(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 281
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleViewHover for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private varargs getEnterConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 764
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method private varargs getExitConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 768
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method private static getFeedbackColor(Landroid/view/View;)I
    .locals 4

    :try_start_0
    const-string v0, "android.view.View"

    .line 927
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getFeedbackColor"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 928
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 929
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFeedbackColor failed , e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private static getFeedbackRadius(Landroid/view/View;)F
    .locals 4

    :try_start_0
    const-string v0, "android.view.View"

    .line 951
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getFeedbackRadius"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 952
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 953
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFeedbackRadius failed , e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private static getPointerShapeType(Landroid/view/View;)I
    .locals 4

    :try_start_0
    const-string v0, "android.view.View"

    .line 867
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPointerShapeType"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 868
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 869
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPointerShapeType failed , e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private varargs getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;
    .locals 0

    .line 673
    array-length p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    goto :goto_0

    :cond_0
    sget-object p0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    :goto_0
    return-object p0
.end method

.method private varargs handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 367
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 p1, 0x9

    if-eq v0, p1, :cond_1

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 369
    :cond_1
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 372
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    :goto_0
    return-void
.end method

.method private varargs handleViewHover(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 333
    sget-object v0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;-><init>(Lmiuix/animation/controller/FolmeHover$1;)V

    .line 336
    sget-object v1, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 339
    invoke-virtual {v0, p0, p2}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->addHover(Lmiuix/animation/controller/FolmeHover;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private varargs hoverEnterAuto(Z[Lmiuix/animation/base/AnimConfig;)V
    .locals 5

    .line 445
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    const/4 p1, 0x1

    .line 446
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    .line 447
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    if-ne v0, v1, :cond_1

    .line 448
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 450
    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setMagicView(Landroid/view/View;Z)V

    .line 451
    invoke-static {v0, p1}, Lmiuix/animation/controller/FolmeHover;->setWrapped(Landroid/view/View;Z)V

    .line 455
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeHover;->isHideHover()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setMagicView(Z)V

    .line 457
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerHide(Z)V

    .line 459
    :cond_2
    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mRadius:F

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeHover;->setCorner(F)Lmiuix/animation/IHoverStyle;

    .line 460
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 461
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getEnterConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    .line 462
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 463
    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeHover;->isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 464
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    .line 465
    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 466
    invoke-virtual {v1, v3}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v1

    .line 465
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    add-float/2addr v2, v1

    div-float/2addr v2, v1

    const v1, 0x3f933333    # 1.15f

    .line 467
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 468
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 469
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 472
    :cond_3
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    new-array p1, p1, [Landroid/view/View;

    const/4 v2, 0x0

    .line 473
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    aput-object v1, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    .line 474
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 475
    invoke-interface {p1, v1, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 476
    invoke-interface {p1, v1, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object p1

    .line 477
    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 479
    :cond_4
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0, v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private varargs hoverEnterToolType(I[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_1
    const/4 p1, 0x0

    .line 487
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnterAuto(Z[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_1

    .line 485
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnter([Lmiuix/animation/base/AnimConfig;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private initDist(Lmiuix/animation/IAnimTarget;)V
    .locals 6

    .line 703
    instance-of v0, p1, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 705
    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 706
    invoke-virtual {p1, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p1

    .line 705
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x41400000    # 12.0f

    add-float/2addr v1, p1

    div-float/2addr v1, p1

    const p1, 0x3f933333    # 1.15f

    .line 707
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 709
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    .line 710
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    .line 711
    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    add-int/lit8 v0, v0, -0x28

    .line 712
    iget v1, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    add-int/lit8 v1, v1, -0x28

    int-to-float v0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x0

    .line 714
    invoke-direct {p0, v0, v3, v2}, Lmiuix/animation/controller/FolmeHover;->perFromVal(FFF)F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 715
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v5, 0x41700000    # 15.0f

    .line 716
    invoke-direct {p0, v0, v5, v3}, Lmiuix/animation/controller/FolmeHover;->valFromPer(FFF)F

    move-result v0

    .line 717
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, v1

    .line 719
    invoke-direct {p0, v1, v3, v2}, Lmiuix/animation/controller/FolmeHover;->perFromVal(FFF)F

    move-result v1

    .line 720
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 721
    invoke-direct {p0, v1, v5, v3}, Lmiuix/animation/controller/FolmeHover;->valFromPer(FFF)F

    move-result v1

    .line 722
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float p1, p1, v4

    if-nez p1, :cond_1

    goto :goto_1

    .line 723
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_1
    iput v3, p0, Lmiuix/animation/controller/FolmeHover;->mTranslateDist:F

    .line 725
    iget p1, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    if-ne p1, v0, :cond_2

    const/16 v1, 0x64

    if-ge p1, v1, :cond_2

    if-ge v0, v1, :cond_2

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    .line 726
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setCorner(F)Lmiuix/animation/IHoverStyle;

    goto :goto_2

    :cond_2
    const/high16 p1, 0x42100000    # 36.0f

    .line 728
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setCorner(F)Lmiuix/animation/IHoverStyle;

    :cond_3
    :goto_2
    return-void
.end method

.method private static isMagicView(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.View"

    .line 780
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isMagicView"

    new-array v3, v0, [Ljava/lang/Class;

    .line 781
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 782
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMagicView failed , e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static isOnHoverView(Landroid/view/View;[ILandroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 412
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 413
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    const/4 v2, 0x0

    .line 415
    aget v3, p1, v2

    if-lt v1, v3, :cond_0

    aget v3, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_0

    aget v1, p1, v0

    if-lt p2, v1, :cond_0

    aget p1, p1, v0

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p1, p0

    if-gt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method private isScaleSet(Lmiuix/animation/IHoverStyle$HoverType;)Z
    .locals 1

    .line 665
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z
    .locals 1

    .line 669
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isWrapped(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.View"

    .line 817
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isWrapped"

    new-array v3, v0, [Ljava/lang/Class;

    .line 818
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 819
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isWrapped failed , e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private varargs onEventEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 382
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onEventEnter, touchEnter"

    .line 383
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private varargs onEventExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 397
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    if-eqz v0, :cond_1

    .line 398
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onEventExit, touchExit"

    .line 399
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    .line 402
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->resetTouchStatus()V

    :cond_1
    return-void
.end method

.method private varargs onEventMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 389
    iget-boolean p3, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 390
    sget-object p3, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    if-eqz p3, :cond_0

    .line 391
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->actualTranslatDist(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private perFromVal(FFF)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    return p1
.end method

.method private resetTouchStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mIsEnter:Z

    return-void
.end method

.method private resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 756
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 758
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-object p0
.end method

.method private setAutoRound()V
    .locals 0

    return-void
.end method

.method private setAutoScale()V
    .locals 3

    .line 100
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 103
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 104
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method private setAutoTranslation()V
    .locals 3

    const/4 v0, 0x1

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 109
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 113
    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method private static setFeedbackColor(Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 938
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 941
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setFeedbackColor"

    .line 942
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 943
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 945
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFeedbackColor failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static setFeedbackRadius(Landroid/view/View;F)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 962
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 965
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setFeedbackRadius"

    .line 966
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 967
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setFeedbackRadius failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static setHotXOffset(Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 878
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 881
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setHotXOffset"

    .line 882
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 883
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 885
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setHotXOffset failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static setHotYOffset(Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 891
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 894
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setHotYOffset"

    .line 895
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 896
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 898
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setHotYOffset failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setHoverView(Landroid/view/View;)Z
    .locals 1

    .line 323
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    const/4 p0, 0x1

    return p0
.end method

.method private static setMagicView(Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 791
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 794
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setMagicView"

    .line 795
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 796
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 798
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMagicView failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static setPointerHide(Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 828
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 831
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setPointerHide"

    .line 832
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 833
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 835
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPointerHide failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static setPointerShape(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 841
    const-class v2, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 844
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setPointerShape"

    .line 845
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 846
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 848
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPointerShape failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static setPointerShapeType(Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 854
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 857
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setPointerShapeType"

    .line 858
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 859
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPointerShapeType failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setTintColor()V
    .locals 5

    .line 121
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mSetTint:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 124
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 125
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    .line 126
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 127
    check-cast v1, Landroid/view/View;

    .line 128
    sget v0, Lmiuix/folme/R$color;->miuix_folme_color_touch_tint:I

    .line 129
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 131
    :cond_1
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 132
    iget-object v2, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v3, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    int-to-double v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 133
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_2
    :goto_0
    return-void
.end method

.method private static setWrapped(Landroid/view/View;Z)V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 804
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.view.View"

    .line 807
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "setWrapped"

    .line 808
    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 809
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setWrapped failed , e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateHoverState(Lmiuix/animation/IHoverStyle$HoverEffect;)V
    .locals 2

    .line 288
    sget-object v0, Lmiuix/animation/controller/FolmeHover$2;->$SwitchMap$miuix$animation$IHoverStyle$HoverEffect:[I

    invoke-virtual {p1}, Lmiuix/animation/IHoverStyle$HoverEffect;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    if-ne v0, v1, :cond_2

    .line 312
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeHover;->clearTintColor()Lmiuix/animation/IHoverStyle;

    .line 314
    :cond_2
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoScale()V

    .line 315
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoTranslation()V

    .line 316
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoRound()V

    .line 317
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    goto :goto_1

    .line 302
    :cond_3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    if-ne v0, v1, :cond_4

    .line 303
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearRound()V

    .line 305
    :cond_4
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 306
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoScale()V

    .line 307
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setAutoTranslation()V

    .line 308
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    goto :goto_1

    .line 290
    :cond_5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    if-ne v0, v1, :cond_6

    .line 291
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearScale()V

    .line 292
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearTranslation()V

    goto :goto_0

    .line 293
    :cond_6
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    if-ne v0, v1, :cond_7

    .line 294
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearScale()V

    .line 295
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearTranslation()V

    .line 296
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->clearRound()V

    .line 298
    :cond_7
    :goto_0
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 299
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    :goto_1
    return-void
.end method

.method private valFromPer(FFF)F
    .locals 0

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    return p2
.end method


# virtual methods
.method public addMagicPoint(Landroid/graphics/Point;)V
    .locals 1

    .line 616
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 617
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 618
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->addMagicPoint(Landroid/view/View;Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public clean()V
    .locals 2

    .line 678
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 679
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 680
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 681
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 682
    iput-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    .line 684
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mChildView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 685
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 686
    iput-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mChildView:Ljava/lang/ref/WeakReference;

    .line 688
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 689
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeHover;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 690
    iput-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method

.method public clearMagicPoint()V
    .locals 1

    .line 624
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 625
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 626
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->clearMagicPoint(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public clearTintColor()Lmiuix/animation/IHoverStyle;
    .locals 3

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    .line 254
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 255
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 256
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public getFeedbackColor()I
    .locals 1

    .line 632
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 633
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 634
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->getFeedbackColor(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getFeedbackRadius()F
    .locals 1

    .line 649
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 650
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 651
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->getFeedbackRadius(Landroid/view/View;)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getPointerShapeType()I
    .locals 1

    .line 591
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 592
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 593
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->getPointerShapeType(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public varargs handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->doHandleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs hoverEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 493
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeHover;->hoverEnterToolType(I[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs hoverEnter([Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    const/4 v0, 0x1

    .line 441
    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeHover;->hoverEnterAuto(Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs hoverExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 3

    .line 503
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mHoverView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mLocation:[I

    invoke-static {v0, v1, p1}, Lmiuix/animation/controller/FolmeHover;->isOnHoverView(Landroid/view/View;[ILandroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array v0, p1, [Landroid/view/View;

    .line 504
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v1, p1, v2

    invoke-interface {v0, p1}, Lmiuix/animation/IHoverStyle;->hoverEnter([Lmiuix/animation/base/AnimConfig;)V

    .line 506
    :cond_0
    sget-object p1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->isTranslationSet(Lmiuix/animation/IHoverStyle$HoverType;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    if-eqz p1, :cond_1

    .line 507
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    .line 508
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 509
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 511
    :cond_1
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeHover;->hoverExit([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs hoverExit([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 516
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->getExitConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 517
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public varargs hoverMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 498
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->onEventMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public ignoreHoverOf(Landroid/view/View;)V
    .locals 1

    .line 423
    sget-object v0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->removeHover(Lmiuix/animation/controller/FolmeHover;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 425
    sget-object p0, Lmiuix/animation/controller/FolmeHover;->sHoverRecord:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isHideHover()Z
    .locals 2

    .line 772
    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetWidth:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    iget v0, p0, Lmiuix/animation/controller/FolmeHover;->mTargetHeight:I

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mCurrentEffect:Lmiuix/animation/IHoverStyle$HoverEffect;

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMagicView()Z
    .locals 1

    .line 533
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 534
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 535
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->isMagicView(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWrapped()Z
    .locals 1

    .line 558
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 559
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 560
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lmiuix/animation/controller/FolmeHover;->isWrapped(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    .line 436
    invoke-direct {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeHover;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 431
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeHover;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs setAlpha(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
    .locals 3

    .line 158
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;

    move-result-object p2

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p1

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setBackgroundColor(FFFF)Lmiuix/animation/IHoverStyle;
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 209
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setBackgroundColor(I)Lmiuix/animation/IHoverStyle;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundColor(I)Lmiuix/animation/IHoverStyle;
    .locals 4

    .line 215
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 216
    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    int-to-double v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 217
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p1, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object v1, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 218
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v1, v1

    .line 217
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setCorner(F)Lmiuix/animation/IHoverStyle;
    .locals 2

    .line 185
    iput p1, p0, Lmiuix/animation/controller/FolmeHover;->mRadius:F

    .line 186
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 187
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 188
    check-cast v0, Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_corner:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover;->updateHoverState(Lmiuix/animation/IHoverStyle$HoverEffect;)V

    return-object p0
.end method

.method public setFeedbackColor(I)V
    .locals 1

    .line 641
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 642
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 643
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setFeedbackColor(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setFeedbackRadius(F)V
    .locals 1

    .line 658
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 659
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 660
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setFeedbackRadius(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public setHotXOffset(I)V
    .locals 1

    .line 600
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 601
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 602
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setHotXOffset(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setHotYOffset(I)V
    .locals 1

    .line 608
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 609
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 610
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setHotYOffset(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setHoverEnter()V
    .locals 1

    .line 522
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover;->setTintColor()V

    .line 523
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public setHoverExit()V
    .locals 1

    .line 528
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public setMagicView(Z)V
    .locals 1

    .line 542
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 543
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 544
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setMagicView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setParentView(Landroid/view/View;)Lmiuix/animation/IHoverStyle;
    .locals 1

    .line 148
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    return-object p0

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mParentView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public setPointerHide(Z)V
    .locals 1

    .line 567
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 568
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 569
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerHide(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setPointerShape(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 575
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 576
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 577
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerShape(Landroid/view/View;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setPointerShapeType(I)V
    .locals 1

    .line 583
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 584
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 585
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setPointerShapeType(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public varargs setScale(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
    .locals 3

    .line 164
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;

    move-result-object p2

    .line 165
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mScaleSetMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p1

    .line 167
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 168
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setTint(FFFF)Lmiuix/animation/IHoverStyle;
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 203
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setTint(I)Lmiuix/animation/IHoverStyle;

    move-result-object p0

    return-object p0
.end method

.method public setTint(I)Lmiuix/animation/IHoverStyle;
    .locals 4

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mSetTint:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->mClearTint:Z

    .line 197
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setTintMode(I)Lmiuix/animation/IHoverStyle;
    .locals 1

    .line 262
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mEnterConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 263
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mExitConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public varargs setTranslate(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
    .locals 3

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeHover;->isSetAutoTranslation:Z

    .line 175
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeHover;->getType([Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle$HoverType;

    move-result-object p2

    .line 176
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mTranslationSetMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p1

    .line 178
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 179
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setWrapped(Z)V
    .locals 1

    .line 550
    iget-object p0, p0, Lmiuix/animation/controller/FolmeHover;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 551
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 552
    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeHover;->setWrapped(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
