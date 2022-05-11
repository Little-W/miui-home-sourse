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

.field private mLocation:[I

.field private mLongClickInvoked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

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

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    return-void
.end method

.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 6

    .line 82
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    const/4 v0, 0x2

    .line 57
    new-array v1, v0, [I

    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mLocation:[I

    .line 59
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    .line 66
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 67
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 72
    new-instance v2, Lmiuix/animation/controller/FolmeTouch$1;

    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeTouch$1;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    iput-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    .line 83
    array-length v2, p1

    if-lez v2, :cond_0

    aget-object p1, p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->initScaleDist(Lmiuix/animation/IAnimTarget;)V

    .line 85
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 86
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 88
    iget-object v3, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v3, v4}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 89
    invoke-virtual {v3, p1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 93
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 95
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-static {v3, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 96
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x1

    new-array v2, v2, [Lmiuix/animation/listener/TransitionListener;

    iget-object v4, p0, Lmiuix/animation/controller/FolmeTouch;->mDefListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v4, v2, v1

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 98
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-virtual {p1, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v2, -0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    .line 99
    invoke-virtual {p1, v1, v2, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

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

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->bindListView(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->resetViewTouch(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/animation/controller/FolmeTouch;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    return p0
.end method

.method static synthetic access$400(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeLongClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->onEventUp([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method static synthetic access$900(Lmiuix/animation/controller/FolmeTouch;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private varargs bindListView(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z
    .locals 4

    .line 293
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

    .line 294
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleListViewTouch for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :cond_0
    iget-object v0, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    invoke-direct {p0, v0, p1, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private varargs doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V
    .locals 6

    .line 232
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeTouch;->setClickAndLongClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 233
    invoke-direct {p0, p1, p5}, Lmiuix/animation/controller/FolmeTouch;->handleViewTouch(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 235
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTouchView(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 236
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 237
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

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v5

    const/4 p2, 0x1

    .line 240
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 241
    new-instance p2, Lmiuix/animation/controller/FolmeTouch$3;

    move-object v0, p2

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch$3;-><init>(Lmiuix/animation/controller/FolmeTouch;ZLandroid/view/View;[Lmiuix/animation/base/AnimConfig;Z)V

    .line 249
    invoke-static {p1, p2}, Lmiuix/animation/utils/CommonUtils;->runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private varargs getDownConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 3

    const/4 v0, 0x1

    .line 689
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    return-object p1
.end method

.method private getListViewInfo(Landroid/view/View;)Lmiuix/animation/controller/FolmeTouch$ListViewInfo;
    .locals 4

    .line 309
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 314
    instance-of v3, v2, Landroid/widget/AbsListView;

    if-eqz v3, :cond_0

    .line 315
    move-object v1, v2

    check-cast v1, Landroid/widget/AbsListView;

    goto :goto_1

    .line 318
    :cond_0
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 319
    move-object p1, v2

    check-cast p1, Landroid/view/View;

    .line 321
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 324
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 325
    iput-object v1, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->listView:Landroid/widget/AbsListView;

    .line 326
    iput-object p1, v0, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;->itemView:Landroid/view/View;

    :cond_3
    return-object v0
.end method

.method public static getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;
    .locals 1

    .line 332
    sget v0, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/controller/ListViewTouchListener;

    return-object p0
.end method

.method private varargs getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;
    .locals 1

    .line 599
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    :goto_0
    return-object p1
.end method

.method private varargs getUpConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 3

    const/4 v0, 0x1

    .line 693
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    return-object p1
.end method

.method private handleClick(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .line 528
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 530
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 531
    check-cast v0, Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p1

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 533
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->invokeClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private varargs handleListViewTouch(Landroid/widget/AbsListView;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 338
    invoke-static {p1}, Lmiuix/animation/controller/FolmeTouch;->getListViewTouchListener(Landroid/widget/AbsListView;)Lmiuix/animation/controller/ListViewTouchListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lmiuix/animation/controller/ListViewTouchListener;

    invoke-direct {v0, p1}, Lmiuix/animation/controller/ListViewTouchListener;-><init>(Landroid/widget/AbsListView;)V

    .line 341
    sget v1, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 344
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    :cond_1
    new-instance p1, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;

    invoke-direct {p1, p0, p4}, Lmiuix/animation/controller/FolmeTouch$InnerListViewTouchListener;-><init>(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v0, p2, p1}, Lmiuix/animation/controller/ListViewTouchListener;->putListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private varargs handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 552
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 558
    :pswitch_0
    invoke-direct {p0, p2, p1, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_1

    .line 561
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeTouch;->handleClick(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 554
    :pswitch_2
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->recordDownEvent(Landroid/view/MotionEvent;)V

    .line 555
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventDown([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_1

    .line 563
    :goto_0
    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->onEventUp([Lmiuix/animation/base/AnimConfig;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs handleViewTouch(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 374
    sget-object v0, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    .line 377
    sget-object v1, Lmiuix/animation/controller/FolmeTouch;->sTouchRecord:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 380
    invoke-virtual {v0, p0, p2}, Lmiuix/animation/controller/FolmeTouch$InnerViewTouchListener;->addTouch(Lmiuix/animation/controller/FolmeTouch;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private initScaleDist(Lmiuix/animation/IAnimTarget;)V
    .locals 2

    .line 120
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

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 122
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleDist:F

    :cond_1
    return-void
.end method

.method private invokeClick(Landroid/view/View;)V
    .locals 1

    .line 539
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 541
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private invokeLongClick(Landroid/view/View;)V
    .locals 1

    .line 521
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 523
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 546
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 547
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 548
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    iget v2, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    invoke-static {v1, v2, v0, p2}, Lmiuix/animation/utils/CommonUtils;->getDistance(FFFF)D

    move-result-wide v0

    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->getTouchSlop(Landroid/view/View;)F

    move-result p1

    float-to-double p1, p1

    cmpg-double p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static isOnTouchView(Landroid/view/View;[ILandroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 169
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    const/4 v2, 0x0

    .line 172
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

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p1, p0

    if-gt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    return v0
.end method

.method private isScaleSet(Lmiuix/animation/ITouchStyle$TouchType;)Z
    .locals 2

    .line 595
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private varargs onEventDown([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 420
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onEventDown, touchDown"

    const/4 v1, 0x0

    .line 421
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 424
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->touchDown([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private varargs onEventMove(Landroid/view/MotionEvent;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 428
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLocation:[I

    invoke-static {p2, v0, p1}, Lmiuix/animation/controller/FolmeTouch;->isOnTouchView(Landroid/view/View;[ILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0, p3}, Lmiuix/animation/controller/FolmeTouch;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 431
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    goto :goto_0

    .line 432
    :cond_0
    iget-object p3, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    if-eqz p3, :cond_1

    invoke-direct {p0, p2, p1}, Lmiuix/animation/controller/FolmeTouch;->isInTouchSlop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 433
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    invoke-virtual {p1, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->stop(Lmiuix/animation/controller/FolmeTouch;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private varargs onEventUp([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 439
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    if-eqz v0, :cond_1

    .line 440
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onEventUp, touchUp"

    const/4 v1, 0x0

    .line 441
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->touchUp([Lmiuix/animation/base/AnimConfig;)V

    .line 444
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

    :cond_1
    return-void
.end method

.method private recordDownEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 460
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    const/4 p1, 0x0

    .line 463
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickInvoked:Z

    .line 464
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickInvoked:Z

    .line 465
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->startLongClickTask()V

    :cond_1
    return-void
.end method

.method private resetTouchStatus()V
    .locals 1

    .line 449
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->stop(Lmiuix/animation/controller/FolmeTouch;)V

    :cond_0
    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mIsDown:Z

    .line 453
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchIndex:I

    const/4 v0, 0x0

    .line 454
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownX:F

    .line 455
    iput v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownY:F

    return-void
.end method

.method private resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-object p1
.end method

.method private resetViewTouch(Landroid/view/View;Z)V
    .locals 0

    .line 407
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    const/4 p2, 0x0

    .line 408
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setClickAndLongClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 256
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 257
    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Lmiuix/animation/ViewTarget;

    invoke-virtual {v0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 264
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 266
    new-instance v1, Lmiuix/animation/controller/FolmeTouch$4;

    invoke-direct {v1, p0}, Lmiuix/animation/controller/FolmeTouch$4;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_3
    :goto_1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 274
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 275
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 277
    new-instance p1, Lmiuix/animation/controller/FolmeTouch$5;

    invoke-direct {p1, p0}, Lmiuix/animation/controller/FolmeTouch$5;-><init>(Lmiuix/animation/controller/FolmeTouch;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 288
    :cond_5
    :goto_2
    iput-object p2, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method private setCorner(F)V
    .locals 2

    .line 697
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    .line 698
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 699
    check-cast v0, Landroid/view/View;

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_corner:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setTintColor()V
    .locals 5

    .line 104
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mSetTint:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 107
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 108
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    .line 109
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 110
    check-cast v1, Landroid/view/View;

    .line 111
    sget v0, Lmiuix/folme/R$color;->miuix_folme_color_touch_tint:I

    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 114
    :cond_1
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 115
    iget-object v2, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v3, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    int-to-double v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 116
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private setTouchView(Landroid/view/View;)Z
    .locals 1

    .line 179
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

    const/4 p1, 0x0

    return p1

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    return p1
.end method

.method private startLongClickTask()V
    .locals 2

    .line 511
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-nez v0, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    if-nez v0, :cond_1

    .line 515
    new-instance v0, Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;-><init>(Lmiuix/animation/controller/FolmeTouch$1;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    .line 517
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mLongClickTask:Lmiuix/animation/controller/FolmeTouch$LongClickTask;

    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeTouch$LongClickTask;->start(Lmiuix/animation/controller/FolmeTouch;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 671
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->cancel()V

    .line 672
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Lmiuix/animation/controller/FolmeFont;->cancel()V

    :cond_0
    return-void
.end method

.method public clean()V
    .locals 3

    .line 129
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 130
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lmiuix/animation/controller/FolmeFont;->clean()V

    .line 133
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    .line 136
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mTouchView:Ljava/lang/ref/WeakReference;

    .line 138
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 139
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->resetView(Ljava/lang/ref/WeakReference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 141
    sget v2, Lmiuix/folme/R$id;->miuix_animation_tag_touch_listener:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 143
    :cond_2
    iput-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mListView:Ljava/lang/ref/WeakReference;

    .line 145
    :cond_3
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->resetTouchStatus()V

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

    .line 215
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

    .line 226
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/controller/FolmeTouch;->doHandleTouchOf(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, p1, v0, p2}, Lmiuix/animation/controller/FolmeTouch;->handleTouchOf(Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    .line 416
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeTouch;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;
    .locals 3

    .line 580
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

    .line 636
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColor(I)Lmiuix/animation/ITouchStyle;
    .locals 4

    .line 627
    sget-object v0, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 628
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    int-to-double v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 629
    iget-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 630
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v1, v1

    .line 629
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setFontStyle(Lmiuix/animation/controller/FolmeFont;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    return-void
.end method

.method public varargs setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;
    .locals 3

    .line 586
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeTouch;->getType([Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object p2

    .line 587
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleSetMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p1

    .line 589
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 590
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

    .line 621
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->setTint(I)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    return-object p1
.end method

.method public setTint(I)Lmiuix/animation/ITouchStyle;
    .locals 4

    const/4 v0, 0x1

    .line 613
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mSetTint:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 614
    :goto_0
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch;->mClearTint:Z

    .line 615
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

    .line 162
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mDownConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    .line 163
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mUpConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setTintMode(I)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method public varargs touchDown([Lmiuix/animation/base/AnimConfig;)V
    .locals 5

    const/4 v0, 0x0

    .line 642
    invoke-direct {p0, v0}, Lmiuix/animation/controller/FolmeTouch;->setCorner(F)V

    .line 643
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch;->setTintColor()V

    .line 644
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getDownConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 645
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_0

    .line 646
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mDownWeight:I

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/controller/FolmeFont;->to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;

    .line 648
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 649
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-direct {p0, v1}, Lmiuix/animation/controller/FolmeTouch;->isScaleSet(Lmiuix/animation/ITouchStyle$TouchType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 650
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    .line 651
    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 652
    invoke-virtual {v1, v3}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v1

    .line 651
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 653
    iget v2, p0, Lmiuix/animation/controller/FolmeTouch;->mScaleDist:F

    sub-float v2, v1, v2

    div-float/2addr v2, v1

    const v1, 0x3f666666    # 0.9f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 654
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 655
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 657
    :cond_1
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v1, v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public varargs touchUp([Lmiuix/animation/base/AnimConfig;)V
    .locals 3

    .line 662
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->getUpConfig([Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 663
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mFontStyle:Lmiuix/animation/controller/FolmeFont;

    if-eqz v0, :cond_0

    .line 664
    iget v1, p0, Lmiuix/animation/controller/FolmeTouch;->mUpWeight:I

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/controller/FolmeFont;->to(I[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IVarFontStyle;

    .line 666
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v1, v2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method