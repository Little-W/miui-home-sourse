.class public Lmiuix/animation/controller/FolmeTouch;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeTouch.java"

# interfaces
.implements Lmiuix/animation/ITouchStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/controller/FolmeTouch$LongClickTask;,
        Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;,
        Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;,
        Lmiuix/animation/controller/FolmeTouch$ListViewInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCALE:F = 0.9f

.field private static final SCALE_DIS:I = 0xa

.field private static sTouchRecord:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClearTint:Z

.field private mClickInvoked:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefListener:Lmiuix/animation/listener/TransitionListener;

.field private mDownConfig:Lmiuix/animation/base/AnimConfig;

.field private mDownWeight:I

.field private mDownX:F

.field private mDownY:F

.field private mFontStyle:Lmiuix/animation/controller/FolmeFont;

.field private mGlobalBoundInWindow:Landroid/graphics/Rect;

.field private mIsDown:Z

.field private mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationInScreen:[I

.field private mLongClickInvoked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

.field private mRootGlobalBoundInWindow:Landroid/graphics/Rect;

.field private mScaleDist:F

.field private mScaleSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/ITouchStyle$TouchType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSetTint:Z

.field private mTouchIndex:I

.field private mTouchView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mUpConfig:Lmiuix/animation/base/AnimConfig;

.field private mUpWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    return-void
.end method

.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 6

    .line 86
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mGlobalBoundInWindow:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mRootGlobalBoundInWindow:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 60
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mLocationInScreen:[I

    .line 62
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 69
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 70
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 75
    new-instance v2, Lmiuix/animation/controller/FolmeTouch$1;

    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeTouch$1;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    iput-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 87
    array-length v2, p1

    if-lez v2, :cond_0

    aget-object p1, p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->initScaleDist(Lmiuix/animation/IAnimTarget;)V

    .line 89
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 90
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 92
    iget-object v3, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v3, v4}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 93
    invoke-virtual {v3, p1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 96
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 98
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 99
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x1

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    iget-object v4, p0, Lmiuix/animation/controller/FolmeTouch;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v4, v2, v1

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 101
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-virtual {p0, v3, p1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, -0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    .line 102
    invoke-virtual {p0, p1, v1, v2, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    return-void

    :array_0
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e19999a    # 0.15f
    .end array-data

    :array_1
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method static synthetic access$000(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->bindListView(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->resetViewTouch(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/animation/controller/FolmeTouch;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    return p0
.end method

.method static synthetic access$400(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeLongClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->onEventUp([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic access$900(Lmiuix/animation/controller/FolmeTouch;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private varargs bindListView(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z
    .locals 4

    .line 305
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getListViewInfo(Landroid/view/View;)Lmiuix/animation/controller/FolmeTouch$ListViewInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    if-eqz v2, :cond_1

    .line 306
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleListViewTouch for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_0
    iget-object v0, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private varargs doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    .line 244
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->setClickAndLongClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 245
    invoke-direct {p0, p1, p5}, Lmiuix/animation/controller/FolmeTouch;->handleViewTouch(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 247
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 248
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleViewTouch for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v5

    const/4 p2, 0x1

    .line 252
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 253
    new-instance p2, Lmiuix/animation/controller/FolmeTouch$3;

    move-object v0, p2

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch$3;-><init>(Lmiuix/animation/controller/FolmeTouch;ZLandroid/view/View;[Lmiuix/animation/base/AnimConfig;Z)V

    .line 261
    invoke-static {p1, p2}, Lmiuix/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private varargs getDownConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 701
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method private getListViewInfo(Landroid/view/View;)Lmiuix/animation/controller/FolmeTouch$ListViewInfo;
    .locals 4

    .line 321
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 326
    instance-of v3, v2, Landroid/widget/AbsListView;

    if-eqz v3, :cond_0

    .line 327
    move-object v1, v2

    check-cast v1, Landroid/widget/AbsListView;

    goto :goto_1

    .line 330
    :cond_0
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 331
    move-object p1, v2

    check-cast p1, Landroid/view/View;

    .line 333
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 336
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 337
    iput-object v1, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 338
    iput-object p1, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->itemView:Landroid/view/View;

    :cond_3
    return-object v0
.end method

.method public static getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;
    .locals 1

    .line 344
    sget v0, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/controller/ListViewTouchListener;

    return-object p0
.end method

.method private varargs getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;
    .locals 0

    .line 611
    array-length p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    goto :goto_0

    :cond_0
    sget-object p0, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    :goto_0
    return-object p0
.end method

.method private varargs getUpConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 705
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method private handleClick(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .line 540
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 542
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 543
    check-cast v0, Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p1

    .line 544
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 545
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private varargs handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 350
    invoke-static {p1}, Lmiuix/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lmiuix/animation/controller/ListViewTouchListener;

    invoke-direct {v0, p1}, Lmiuix/animation/controller/ListViewTouchListener;-><init>(Landroid/widget/AbsListView;)V

    .line 353
    sget v1, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 356
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 358
    :cond_1
    new-instance p1, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;

    invoke-direct {p1, p0, p4}, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;-><init>(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v0, p2, p1}, Lmiuix/animation/controller/ListViewTouchListener;->putListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private varargs handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 564
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_1

    .line 573
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->handleClick(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 575
    :goto_0
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventUp([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_1

    .line 566
    :cond_2
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->recordDownEvent(Landroid/view/MotionEvent;)V

    .line 567
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventDown([Lmiuix/animation/base/AnimConfig;)V

    :goto_1
    return-void
.end method

.method private varargs handleViewTouch(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 386
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 389
    sget-object v1, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 392
    invoke-virtual {v0, p0, p2}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->addTouch(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private initScaleDist(Lmiuix/animation/IAnimTarget;)V
    .locals 2

    .line 123
    instance-of v0, p1, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/animation/ViewTarget;

    invoke-virtual {p1}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 125
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleDist:F

    :cond_1
    return-void
.end method

.method private invokeClick(Landroid/view/View;)V
    .locals 1

    .line 551
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 553
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private invokeLongClick(Landroid/view/View;)V
    .locals 1

    .line 533
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 535
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 558
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 559
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 560
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    iget p0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    invoke-static {v1, p0, v0, p2}, Lmiuix/animation/utils/CommonUtils;->getDistance(FFFF)D

    move-result-wide v0

    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->getTouchSlop(Landroid/view/View;)F

    move-result p0

    float-to-double p0, p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isOnTouchView(Landroid/view/View;[ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 174
    invoke-virtual {p0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 178
    invoke-virtual {v1, p3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 181
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 183
    :goto_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    float-to-int p0, p0

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-int/2addr p0, v1

    .line 184
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result p4

    float-to-int p4, p4

    aget p1, p1, v0

    sub-int/2addr p4, p1

    iget p1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, p1

    .line 185
    invoke-virtual {p2, p0, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private isScaleSet(Lmiuix/animation/ITouchStyle$TouchType;)Z
    .locals 1

    .line 607
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private varargs onEventDown([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 432
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onEventDown, touchDown"

    .line 433
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 436
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private varargs onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 3

    .line 440
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLocationInScreen:[I

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mGlobalBoundInWindow:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mRootGlobalBoundInWindow:Landroid/graphics/Rect;

    invoke-static {p2, v0, v1, v2, p1}, Lmiuix/animation/controller/FolmeTouch;->isOnTouchView(Landroid/view/View;[ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 443
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    goto :goto_0

    .line 444
    :cond_0
    iget-object p3, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    if-eqz p3, :cond_1

    invoke-direct {p0, p2, p1}, Lmiuix/animation/controller/FolmeTouch;->isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 445
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    invoke-virtual {p1, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->stop(Lmiuix/animation/controller/FolmeTouch;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private varargs onEventUp([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 451
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_1

    .line 452
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onEventUp, touchUp"

    .line 453
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 456
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    :cond_1
    return-void
.end method

.method private recordDownEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 472
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    const/4 p1, 0x0

    .line 475
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 476
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 477
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->startLongClickTask()V

    :cond_1
    return-void
.end method

.method private resetTouchStatus()V
    .locals 1

    .line 461
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->stop(Lmiuix/animation/controller/FolmeTouch;)V

    :cond_0
    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 465
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    const/4 v0, 0x0

    .line 466
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 467
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

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

    .line 152
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 154
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-object p0
.end method

.method private resetViewTouch(Landroid/view/View;Z)V
    .locals 0

    .line 419
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    const/4 p0, 0x0

    .line 420
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setClickAndLongClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 268
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 269
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 270
    check-cast v0, Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 275
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 276
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 278
    new-instance v1, Lmiuix/animation/controller/FolmeTouch$4;

    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeTouch$4;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_3
    :goto_1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 286
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 287
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 289
    new-instance p1, Lmiuix/animation/controller/FolmeTouch$5;

    invoke-direct {p1, p0}, Lmiuix/animation/controller/FolmeTouch$5;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 300
    :cond_5
    :goto_2
    iput-object p2, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method private setCorner(F)V
    .locals 1

    .line 709
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    .line 710
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 711
    check-cast p0, Landroid/view/View;

    sget v0, Lmiuix/animation/R$id;->miuix_animation_tag_view_corner:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setTintColor()V
    .locals 5

    .line 107
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mSetTint:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 110
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 111
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    .line 112
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 113
    check-cast v1, Landroid/view/View;

    .line 114
    sget v0, Lmiuix/folme/R$color;->miuix_folme_color_touch_tint:I

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 117
    :cond_1
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 118
    iget-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    int-to-double v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 119
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_2
    :goto_0
    return-void
.end method

.method private setTouchView(Landroid/view/View;)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

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

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    const/4 p0, 0x1

    return p0
.end method

.method private startLongClickTask()V
    .locals 2

    .line 523
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    if-nez v0, :cond_1

    .line 527
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 529
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->start(Lmiuix/animation/controller/FolmeTouch;)V

    return-void
.end method


# virtual methods
.method public varargs bindViewOfListItem(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 201
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$2;

    invoke-direct {v0, p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch$2;-><init>(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    .line 683
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->cancel()V

    .line 684
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz p0, :cond_0

    .line 685
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeFont;->cancel()V

    :cond_0
    return-void
.end method

.method public clean()V
    .locals 3

    .line 132
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 133
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lmiuix/animation/controller/FolmeFont;->clean()V

    .line 136
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 139
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 141
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 142
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 144
    sget v2, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 146
    :cond_2
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 148
    :cond_3
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    return-void
.end method

.method public clearTintColor()Lmiuix/animation/ITouchStyle;
    .locals 3

    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 617
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 618
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 619
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public varargs handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;[Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 233
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;[Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 227
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 238
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, v0, p2}, Lmiuix/animation/controller/FolmeTouch;->handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public ignoreTouchOf(Landroid/view/View;)V
    .locals 1

    .line 214
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->removeTouch(Lmiuix/animation/controller/FolmeTouch;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 216
    sget-object p0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    .line 428
    invoke-direct {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;
    .locals 3

    .line 592
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p2

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p1

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;
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

    .line 648
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundColor(I)Lmiuix/animation/ITouchStyle;
    .locals 4

    .line 639
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 640
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    int-to-double v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 641
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 642
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v1, v1

    .line 641
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setFontStyle(Lmiuix/animation/controller/FolmeFont;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    return-void
.end method

.method public varargs setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;
    .locals 3

    .line 598
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p2

    .line 599
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p1

    .line 601
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 602
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setTint(FFFF)Lmiuix/animation/ITouchStyle;
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

    .line 633
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTint(I)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    return-object p0
.end method

.method public setTint(I)Lmiuix/animation/ITouchStyle;
    .locals 4

    const/4 v0, 0x1

    .line 625
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mSetTint:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 626
    :goto_0
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 627
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setTintMode(I)Lmiuix/animation/ITouchStyle;
    .locals 1

    .line 165
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 166
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public setTouchDown()V
    .locals 1

    .line 691
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 692
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public setTouchUp()V
    .locals 1

    .line 697
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public varargs touchDown([Lmiuix/animation/base/AnimConfig;)V
    .locals 5

    const/4 v0, 0x0

    .line 654
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->setCorner(F)V

    .line 655
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 656
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getDownConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 657
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_0

    .line 658
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownWeight:I

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/controller/FolmeFont;->to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;

    .line 660
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 661
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeTouch;->isScaleSet(Lmiuix/animation/ITouchStyle$TouchType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 662
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    .line 663
    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 664
    invoke-virtual {v1, v3}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v1

    .line 663
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 665
    iget v2, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleDist:F

    sub-float v2, v1, v2

    div-float/2addr v2, v1

    const v1, 0x3f666666    # 0.9f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 666
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 667
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 669
    :cond_1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p0, v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public varargs touchUp([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 674
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getUpConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 675
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_0

    .line 676
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpWeight:I

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/controller/FolmeFont;->to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;

    .line 678
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public useVarFont(Landroid/widget/TextView;III)Lmiuix/animation/ITouchStyle;
    .locals 1

    .line 582
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_0

    .line 583
    iput p3, p0, Lmiuix/animation/controller/FolmeTouch;->mUpWeight:I

    .line 584
    iput p4, p0, Lmiuix/animation/controller/FolmeTouch;->mDownWeight:I

    .line 585
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/FolmeFont;->useAt(Landroid/widget/TextView;II)Lmiuix/animation/IVarFontStyle;

    :cond_0
    return-object p0
.end method
