.class Lmiuix/preference/PreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    }
.end annotation


# static fields
.field private static final STATES_TAGS:[I

.field private static final STATE_SET_FIRST:[I

.field private static final STATE_SET_LAST:[I

.field private static final STATE_SET_MIDDLE:[I

.field private static final STATE_SET_NO_TITLE:[I

.field private static final STATE_SET_SINGLE:[I


# instance fields
.field private mCheckableFilterColorChecked:I

.field private mCheckableFilterColorNormal:I

.field private mClipPaint:Landroid/graphics/Paint;

.field private mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

.field private mExtraPaddingEnable:Z

.field private mExtraPaddingHorizontal:I

.field private mExtraPaddingLevel:I

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mMaskRadius:I

.field private mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mRadioSetItemPaddingStartExtra:I

.field private mRadioSetRadioItemPaddingStartExtra:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x5

    .line 40
    new-array v0, v0, [I

    const v1, 0x10100a3

    const/4 v2, 0x0

    aput v1, v0, v2

    const v3, 0x10100a4

    const/4 v4, 0x1

    aput v3, v0, v4

    const v5, 0x10100a5

    const/4 v6, 0x2

    aput v5, v0, v6

    const v6, 0x10100a6

    const/4 v7, 0x3

    aput v6, v0, v7

    sget v7, Lmiuix/preference/R$attr;->state_no_title:I

    const/4 v8, 0x4

    aput v7, v0, v8

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    .line 49
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 57
    new-array v0, v4, [I

    aput v1, v0, v2

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    .line 58
    new-array v0, v4, [I

    aput v3, v0, v2

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    .line 59
    new-array v0, v4, [I

    aput v5, v0, v2

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    .line 60
    new-array v0, v4, [I

    aput v6, v0, v2

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    .line 61
    new-array v0, v4, [I

    sget v1, Lmiuix/preference/R$attr;->state_no_title:I

    aput v1, v0, v2

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 64
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lmiuix/preference/PreferenceGroupAdapter$1;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingLevel:I

    .line 78
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    .line 79
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingEnable:Z

    .line 83
    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 84
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->initAttr(Landroid/content/Context;)V

    return-void
.end method

.method private ableToUseFolmeAnim(Landroidx/preference/Preference;)Z
    .locals 1

    .line 220
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_1

    instance-of v0, p1, Lmiuix/preference/DropDownPreference;

    if-nez v0, :cond_1

    instance-of v0, p1, Lmiuix/preference/FolmeAnimationController;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/preference/FolmeAnimationController;

    .line 222
    invoke-interface {p1}, Lmiuix/preference/FolmeAnimationController;->isTouchAnimationEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic access$002(Lmiuix/preference/PreferenceGroupAdapter;[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;)[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    .locals 0

    .line 38
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    return-object p1
.end method

.method private drawDrawable(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 8

    .line 409
    instance-of v0, p1, Lmiuix/preference/drawable/MaskTaggingDrawable;

    if-eqz v0, :cond_0

    .line 410
    check-cast p1, Lmiuix/preference/drawable/MaskTaggingDrawable;

    const/4 v0, 0x1

    .line 411
    invoke-virtual {p1, v0}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setMaskEnabled(Z)V

    .line 412
    iget-object v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mClipPaint:Landroid/graphics/Paint;

    iget v3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingTop:I

    iget v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingBottom:I

    iget v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingStart:I

    iget v6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingEnd:I

    iget v7, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    .line 415
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 416
    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getLeftAndRightWithRTL(Landroidx/recyclerview/widget/RecyclerView;Z)Landroid/util/Pair;

    move-result-object v1

    .line 417
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setLeftRight(IIZ)V

    .line 418
    invoke-virtual {p1, p2, p3}, Lmiuix/preference/drawable/MaskTaggingDrawable;->updateDrawCorner(ZZ)V

    :cond_0
    return-void
.end method

.method private drawRadioSetPreferenceCategory(Lmiuix/preference/RadioButtonPreferenceCategory;)V
    .locals 4

    .line 359
    invoke-virtual {p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 361
    invoke-virtual {p1, v1}, Lmiuix/preference/RadioButtonPreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 362
    instance-of v3, v2, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v3, :cond_0

    .line 363
    check-cast v2, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 364
    invoke-direct {p0, v2}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V
    .locals 5

    .line 370
    invoke-virtual {p1}, Lmiuix/preference/RadioSetPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 373
    invoke-virtual {p1, v2}, Lmiuix/preference/RadioSetPreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 375
    invoke-virtual {p0, v3}, Lmiuix/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 377
    iget-object v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 379
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :cond_1
    invoke-direct {p0, v1}, Lmiuix/preference/PreferenceGroupAdapter;->drawViews(Ljava/util/List;)V

    return-void
.end method

.method private drawView(Landroid/view/View;ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/PreferenceGroupAdapter;->drawDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    :cond_0
    return-void
.end method

.method private drawViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 388
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v0

    .line 394
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_1

    goto :goto_2

    :cond_1
    move v2, v0

    .line 397
    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 398
    invoke-direct {p0, v4, v3, v2}, Lmiuix/preference/PreferenceGroupAdapter;->drawView(Landroid/view/View;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 335
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 336
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPreferenceDescriptor(Landroidx/preference/Preference;I)V
    .locals 5

    if-ltz p2, :cond_1

    .line 234
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 235
    aget-object v1, v0, p2

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    aput-object v1, v0, p2

    .line 238
    :cond_0
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v0, v0, p2

    iget-object v0, v0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    .line 241
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 243
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 249
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 250
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    goto :goto_1

    .line 252
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_4

    .line 253
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    const/4 v2, 0x2

    goto :goto_1

    .line 255
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    if-nez v0, :cond_5

    .line 256
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    const/4 v2, 0x4

    goto :goto_1

    .line 259
    :cond_5
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    const/4 v2, 0x3

    .line 262
    :goto_1
    instance-of v1, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_6

    .line 263
    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 264
    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 266
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    array-length v1, p1

    array-length v4, v0

    add-int/2addr v1, v4

    new-array v1, v1, [I

    .line 267
    array-length v4, p1

    invoke-static {p1, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    array-length p1, p1

    array-length v4, v0

    invoke-static {v0, v3, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 276
    :cond_6
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v1, p1, p2

    iput-object v0, v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 277
    aget-object p1, p1, p2

    iput v2, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    :cond_7
    return-void
.end method

.method private isArrowRightVisible(Landroidx/preference/Preference;)Z
    .locals 1

    .line 226
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 227
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 228
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_2

    :cond_0
    instance-of p1, p1, Landroidx/preference/DialogPreference;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private updateViewBackgroundMask(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 345
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 346
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-eqz v0, :cond_0

    .line 347
    check-cast p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 348
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioButtonPreferenceCategory;)V

    goto :goto_0

    .line 349
    :cond_0
    instance-of v0, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_1

    .line 350
    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 351
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V

    goto :goto_0

    .line 352
    :cond_1
    instance-of p1, p1, Lmiuix/preference/RadioButtonPreference;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getLeftAndRightWithRTL(Landroidx/recyclerview/widget/RecyclerView;Z)Landroid/util/Pair;
    .locals 1

    .line 207
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollBarSize()I

    move-result v0

    if-eqz p2, :cond_0

    mul-int/lit8 v0, v0, 0x3

    .line 211
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 214
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr p1, v0

    .line 216
    :goto_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method getPositionType(I)I
    .locals 1

    .line 305
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p1, v0, p1

    iget p1, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    return p1
.end method

.method public initAttr(Landroid/content/Context;)V
    .locals 1

    .line 88
    sget v0, Lmiuix/preference/R$attr;->preferenceRadioSetChildExtraPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    .line 89
    sget v0, Lmiuix/preference/R$attr;->preferenceRadioSetMaskPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetRadioItemPaddingStartExtra:I

    .line 90
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterChecked:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    .line 91
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 284
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 285
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 286
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 8

    .line 123
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 124
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 125
    invoke-virtual {p0, p2}, Lmiuix/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 126
    instance-of v2, v0, Landroidx/preference/PreferenceCategory;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 127
    new-array v4, v3, [Landroid/view/View;

    iget-object v5, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    aput-object v5, v4, v1

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v4

    sget-object v5, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {v4, v5}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v4

    iget-object v5, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-array v6, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v4, v5, v6}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 129
    :cond_0
    invoke-direct {p0, v0, p2}, Lmiuix/preference/PreferenceGroupAdapter;->getPreferenceDescriptor(Landroidx/preference/Preference;I)V

    .line 130
    iget-object v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p2, v4, p2

    iget-object p2, p2, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 132
    iget-object v4, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 133
    instance-of v5, v4, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v5, :cond_3

    instance-of v5, v0, Lmiuix/preference/RadioButtonPreference;

    if-nez v5, :cond_1

    if-eqz v2, :cond_3

    .line 135
    :cond_1
    iget-boolean v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingEnable:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingLevel:I

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 136
    new-instance v2, Lmiuix/preference/drawable/MaskTaggingDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, v4}, Lmiuix/preference/drawable/MaskTaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v4, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 140
    :goto_1
    nop

    instance-of v4, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_4

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    sget-object v5, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    invoke-static {v4, v5}, Lmiuix/preference/drawable/MaskTaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    new-instance v4, Lmiuix/preference/drawable/MaskTaggingDrawable;

    invoke-direct {v4, v2}, Lmiuix/preference/drawable/MaskTaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v2, v4

    .line 145
    :cond_4
    nop

    instance-of v4, v2, Lmiuix/preference/drawable/MaskTaggingDrawable;

    if-eqz v4, :cond_12

    .line 146
    check-cast v2, Lmiuix/preference/drawable/MaskTaggingDrawable;

    if-eqz p2, :cond_5

    .line 148
    invoke-virtual {v2, p2}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setTaggingState([I)Z

    .line 151
    :cond_5
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 152
    invoke-virtual {v2, p2}, Lmiuix/preference/drawable/MaskTaggingDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 153
    iget v4, p2, Landroid/graphics/Rect;->left:I

    .line 154
    iget v5, p2, Landroid/graphics/Rect;->right:I

    .line 155
    iget-object v6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_2

    :cond_6
    move v6, v5

    :goto_2
    iput v6, p2, Landroid/graphics/Rect;->right:I

    .line 156
    iget-object v6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v5

    :cond_7
    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 157
    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v4

    instance-of v4, v4, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v4, :cond_d

    .line 158
    iget-object v4, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 160
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_8

    .line 161
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_3

    .line 163
    :cond_8
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v4, v5

    .line 165
    :goto_3
    iget-object v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getScrollBarSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 166
    iget-object v5, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v4

    check-cast v4, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 168
    invoke-virtual {v2, v1}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setMaskEnabled(Z)V

    .line 170
    invoke-virtual {v4}, Lmiuix/preference/RadioSetPreferenceCategory;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    goto :goto_4

    :cond_9
    iget v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    :goto_4
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 169
    invoke-virtual {v2, v4, v5}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 172
    iget-object v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_e

    .line 173
    instance-of v5, v0, Lmiuix/preference/RadioButtonPreference;

    .line 174
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollBarSize()I

    move-result v4

    .line 175
    iget-object v6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 176
    iget v6, p2, Landroid/graphics/Rect;->right:I

    if-eqz v5, :cond_a

    iget v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetRadioItemPaddingStartExtra:I

    goto :goto_5

    :cond_a
    iget v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    :goto_5
    add-int/2addr v6, v5

    iput v6, p2, Landroid/graphics/Rect;->right:I

    .line 177
    iget v5, p2, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v5, v4

    iput v5, p2, Landroid/graphics/Rect;->left:I

    goto :goto_7

    .line 179
    :cond_b
    iget v6, p2, Landroid/graphics/Rect;->left:I

    if-eqz v5, :cond_c

    iget v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetRadioItemPaddingStartExtra:I

    goto :goto_6

    :cond_c
    iget v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    :goto_6
    add-int/2addr v6, v5

    iput v6, p2, Landroid/graphics/Rect;->left:I

    .line 180
    iget v5, p2, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v5, v4

    iput v5, p2, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    .line 184
    invoke-virtual {v2, v4}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 186
    :cond_e
    :goto_7
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget-boolean v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingEnable:Z

    if-eqz v5, :cond_f

    iget v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    goto :goto_8

    :cond_f
    move v5, v1

    :goto_8
    add-int/2addr v4, v5

    .line 187
    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget-boolean v6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingEnable:Z

    if-eqz v6, :cond_10

    iget v6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    goto :goto_9

    :cond_10
    move v6, v1

    :goto_9
    add-int/2addr v5, v6

    .line 188
    iget-object v6, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v7, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v4, v7, v5, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    :cond_11
    instance-of p2, v0, Lmiuix/preference/RadioButtonPreference;

    if-eqz p2, :cond_12

    move-object p2, v0

    check-cast p2, Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p2}, Lmiuix/preference/RadioButtonPreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 191
    new-array p2, v3, [I

    const v3, 0x10100a0

    aput v3, p2, v1

    invoke-virtual {v2, p2}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setTaggingState([I)Z

    .line 195
    :cond_12
    iget-object p2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v2, Lmiuix/preference/R$id;->arrow_right:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 197
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->isArrowRightVisible(Landroidx/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    const/16 v1, 0x8

    :goto_a
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_14
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->ableToUseFolmeAnim(Landroidx/preference/Preference;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 200
    iget-object p2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    .line 202
    :cond_15
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const p2, 0x1020016

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lmiuix/appcompat/internal/util/EasyModeHelper;->updateTextViewSize(Landroid/widget/TextView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lmiuix/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 292
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .locals 2

    .line 315
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceChange(Landroidx/preference/Preference;)V

    .line 316
    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 318
    invoke-virtual {p1}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 320
    instance-of v1, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 321
    instance-of v1, v0, Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_0

    .line 322
    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->updateViewBackgroundMask(Landroidx/preference/Preference;)V

    .line 301
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    return-void
.end method

.method public setClipPaint(Landroid/graphics/Paint;IIIII)V
    .locals 0

    .line 103
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mClipPaint:Landroid/graphics/Paint;

    .line 104
    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingTop:I

    .line 105
    iput p3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingBottom:I

    .line 106
    iput p4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingStart:I

    .line 107
    iput p5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingEnd:I

    .line 108
    iput p6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    return-void
.end method

.method protected setExtraHorizontalPaddingLevel(IIZ)V
    .locals 1

    .line 112
    invoke-static {p1}, Lmiuix/appcompat/internal/util/LayoutUIUtils;->isLevelValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingLevel:I

    if-eq v0, p1, :cond_0

    .line 114
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingLevel:I

    .line 115
    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingHorizontal:I

    .line 116
    iput-boolean p3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraPaddingEnable:Z

    .line 117
    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
