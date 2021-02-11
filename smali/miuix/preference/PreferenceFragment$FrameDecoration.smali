.class Lmiuix/preference/PreferenceFragment$FrameDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameDecoration"
.end annotation


# instance fields
.field private mClipPaint:Landroid/graphics/Paint;

.field private mHeightPixels:I

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mMaskRadius:I

.field private mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

.field private mPreferenceGroupRectMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiuix/preference/PreferenceFragment;


# direct methods
.method private constructor <init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;)V
    .locals 1

    .line 148
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 149
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    .line 151
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    .line 153
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    .line 155
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_padding_end:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    .line 157
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskRadius:I

    .line 160
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    .line 161
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    sget v0, Lmiuix/preference/R$attr;->preferenceCheckableMaskColor:I

    invoke-static {p2, v0}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    .line 165
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mHeightPixels:I

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;)V

    return-void
.end method

.method private checkEndRadioButtonPreferenceCategory(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    const/4 v1, 0x0

    if-ge p2, p3, :cond_1

    .line 195
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 196
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 197
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$100(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmiuix/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p1

    .line 198
    instance-of p1, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method private drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V
    .locals 3

    .line 345
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$200(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 348
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p2

    int-to-float p3, p3

    int-to-float v2, p4

    int-to-float p5, p5

    invoke-direct {v0, v1, p3, v2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p9, :cond_1

    .line 349
    iget v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    :goto_0
    if-eqz p9, :cond_2

    .line 350
    iget p9, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    goto :goto_1

    :cond_2
    iget p9, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    .line 351
    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    add-int/2addr p2, v1

    int-to-float p2, p2

    sub-int/2addr p4, p9

    int-to-float p4, p4

    invoke-direct {v2, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 352
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    const/4 p3, 0x0

    if-eqz p6, :cond_3

    .line 353
    iget p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskRadius:I

    int-to-float p4, p4

    goto :goto_2

    :cond_3
    move p4, p3

    :goto_2
    if-eqz p7, :cond_4

    .line 354
    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskRadius:I

    int-to-float p3, p3

    :cond_4
    const/16 p5, 0x8

    .line 355
    new-array p5, p5, [F

    const/4 p6, 0x0

    aput p4, p5, p6

    const/4 p6, 0x1

    aput p4, p5, p6

    const/4 p6, 0x2

    aput p4, p5, p6

    const/4 p6, 0x3

    aput p4, p5, p6

    const/4 p4, 0x4

    aput p3, p5, p4

    const/4 p4, 0x5

    aput p3, p5, p4

    const/4 p4, 0x6

    aput p3, p5, p4

    const/4 p4, 0x7

    aput p3, p5, p4

    .line 358
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v2, p5, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 360
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    const/16 p4, 0x1f

    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result p3

    .line 361
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz p8, :cond_5

    .line 363
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    new-instance p5, Landroid/graphics/PorterDuffXfermode;

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, p6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_3

    .line 365
    :cond_5
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    new-instance p5, Landroid/graphics/PorterDuffXfermode;

    sget-object p6, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, p6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 367
    :goto_3
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 368
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mClipPaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 369
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p5, :cond_3

    if-eqz p2, :cond_2

    .line 171
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p5, p2

    iget p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mHeightPixels:I

    if-lt p5, p2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_5

    .line 175
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 177
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    return p1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-le p3, p4, :cond_5

    .line 183
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 185
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    return p1

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method private updateOperationTopAndBottom(Landroidx/recyclerview/widget/RecyclerView;Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;)V
    .locals 10

    .line 302
    iget-object v0, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v3, v0, :cond_5

    .line 304
    iget-object v8, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 305
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 308
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 309
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    if-nez v3, :cond_0

    move v5, v8

    move v4, v9

    :cond_0
    if-le v4, v9, :cond_1

    move v4, v9

    :cond_1
    if-ge v5, v8, :cond_2

    move v5, v8

    .line 322
    :cond_2
    iget v8, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    if-eq v8, v2, :cond_3

    iget v8, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    iget v9, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    if-le v8, v9, :cond_3

    .line 323
    iget v6, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    iget v8, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    sub-int/2addr v6, v8

    .line 326
    :cond_3
    iget v8, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    if-eq v8, v2, :cond_4

    iget v8, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    iget v9, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    if-ge v8, v9, :cond_4

    .line 327
    iget v7, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    iget v8, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    sub-int/2addr v7, v8

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x2

    .line 330
    new-array v0, p1, [I

    aput v4, v0, v1

    const/4 v3, 0x1

    aput v5, v0, v3

    iput-object v0, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentEndtb:[I

    if-eq v6, v2, :cond_6

    move v5, v6

    :cond_6
    if-eq v7, v2, :cond_7

    move v4, v7

    .line 339
    :cond_7
    new-array p1, p1, [I

    aput v4, p1, v1

    aput v5, p1, v3

    iput-object p1, p2, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentMovetb:[I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 374
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$200(Lmiuix/preference/PreferenceFragment;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 378
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$100(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p4

    invoke-virtual {p4, p2}, Lmiuix/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 380
    invoke-virtual {p4}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p4

    instance-of p4, p4, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz p4, :cond_4

    .line 381
    invoke-static {p3}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 382
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollBarSize()I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getScrollBarSize()I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 386
    :goto_0
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p3}, Lmiuix/preference/PreferenceFragment;->access$100(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lmiuix/preference/PreferenceGroupAdapter;->getPositionType(I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 388
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 389
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    .line 391
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_3
    const/4 p3, 0x4

    if-ne p2, p3, :cond_4

    .line 393
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_1
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v6, p2

    .line 209
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$200(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v7

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollBarSize()I

    move-result v0

    .line 218
    invoke-static/range {p2 .. p2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    move v13, v0

    move v14, v1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    move v14, v1

    const/4 v13, 0x0

    :goto_0
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    const/4 v15, 0x1

    if-ge v8, v7, :cond_8

    .line 227
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 228
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 229
    iget-object v1, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$100(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 230
    invoke-virtual {v1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v1

    instance-of v1, v1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v1, :cond_7

    .line 231
    iget-object v1, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$100(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getPositionType(I)I

    move-result v4

    if-eq v4, v15, :cond_3

    const/4 v0, 0x2

    if-ne v4, v0, :cond_2

    goto :goto_2

    :cond_2
    move v9, v4

    move-object/from16 v16, v5

    goto :goto_3

    .line 234
    :cond_3
    :goto_2
    new-instance v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object v1, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {v0, v1, v9}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;-><init>(Lmiuix/preference/PreferenceFragment;Lmiuix/preference/PreferenceFragment$1;)V

    iput-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 235
    iget-object v3, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iput-boolean v15, v3, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->startRadioButtonCategory:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v12, v3

    move v3, v8

    move v9, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    move/from16 v5, v17

    .line 236
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I

    move-result v0

    iput v0, v12, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    .line 237
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    invoke-virtual {v0, v8}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->addPreference(I)V

    .line 240
    :goto_3
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    const/4 v12, 0x4

    if-eqz v0, :cond_5

    if-eq v9, v12, :cond_4

    const/4 v0, 0x3

    if-ne v9, v0, :cond_5

    .line 241
    :cond_4
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    invoke-virtual {v0, v8}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->addPreference(I)V

    .line 243
    :cond_5
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    if-eqz v0, :cond_7

    if-eq v9, v15, :cond_6

    if-ne v9, v12, :cond_7

    .line 244
    :cond_6
    iget-object v9, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move v3, v8

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I

    move-result v0

    iput v0, v9, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    .line 245
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object v1, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    .line 246
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    invoke-direct {v10, v6, v8, v7}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->checkEndRadioButtonPreferenceCategory(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result v1

    iput-boolean v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    .line 247
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iput v12, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 248
    iget-object v1, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    iget v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 249
    iput-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 254
    :cond_8
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 255
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    const/4 v1, -0x1

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->nextViewY:I

    .line 256
    iget-object v2, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iput v2, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    .line 257
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    .line 258
    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 259
    iget-object v1, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    iget v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 260
    iput-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 263
    :cond_9
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 265
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 267
    invoke-direct {v10, v6, v1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateOperationTopAndBottom(Landroidx/recyclerview/widget/RecyclerView;Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;)V

    goto :goto_4

    .line 270
    :cond_a
    iget-object v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRectMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 274
    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentMovetb:[I

    aget v16, v2, v15

    if-nez v1, :cond_b

    .line 276
    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->currentEndtb:[I

    const/16 v17, 0x0

    aget v0, v0, v17

    move/from16 v18, v0

    goto :goto_6

    :cond_b
    const/16 v17, 0x0

    .line 279
    iget v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->preViewHY:I

    iget v1, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    add-int/2addr v0, v1

    move/from16 v18, v0

    .line 282
    :goto_6
    iget v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    sub-int v3, v18, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move v4, v14

    move/from16 v5, v18

    move v9, v11

    invoke-direct/range {v0 .. v9}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V

    .line 283
    iget v0, v10, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    add-int v5, v16, v0

    move-object/from16 v0, p0

    move/from16 v3, v16

    invoke-direct/range {v0 .. v9}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move/from16 v3, v18

    move/from16 v5, v16

    .line 285
    invoke-direct/range {v0 .. v9}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->drawMask(Landroid/graphics/Canvas;IIIIZZZZ)V

    goto :goto_5

    :cond_c
    return-void
.end method
