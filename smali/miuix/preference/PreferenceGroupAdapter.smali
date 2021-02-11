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

.field private mCheckablePaddingStartExtra:I

.field private mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

.field private mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x5

    .line 31
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

    .line 40
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 48
    new-array v0, v4, [I

    aput v1, v0, v2

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    .line 49
    new-array v0, v4, [I

    aput v3, v0, v2

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    .line 50
    new-array v0, v4, [I

    aput v5, v0, v2

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    .line 51
    new-array v0, v4, [I

    aput v6, v0, v2

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    .line 52
    new-array v0, v4, [I

    sget v1, Lmiuix/preference/R$attr;->state_no_title:I

    aput v1, v0, v2

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 55
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lmiuix/preference/PreferenceGroupAdapter$1;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 69
    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 70
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_item_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckablePaddingStartExtra:I

    .line 72
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterChecked:I

    invoke-static {v0, v1}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    .line 74
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p1, v0}, Lmiui/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    return-void
.end method

.method private ableToUseFolmeAnim(Landroidx/preference/Preference;)Z
    .locals 1

    .line 130
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_1

    instance-of v0, p1, Lmiuix/preference/DropDownPreference;

    if-nez v0, :cond_1

    instance-of v0, p1, Lmiuix/preference/FolmeAnimationController;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/preference/FolmeAnimationController;

    .line 132
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

    .line 29
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    return-object p1
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

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 237
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 238
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
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

    .line 144
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 145
    aget-object v1, v0, p2

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    aput-object v1, v0, p2

    .line 148
    :cond_0
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v0, v0, p2

    iget-object v0, v0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    .line 151
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 153
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 159
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 160
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    goto :goto_1

    .line 162
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_4

    .line 163
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    const/4 v2, 0x2

    goto :goto_1

    .line 165
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

    .line 166
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    const/4 v2, 0x4

    goto :goto_1

    .line 169
    :cond_5
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    const/4 v2, 0x3

    .line 172
    :goto_1
    instance-of v1, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_6

    .line 173
    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 174
    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 176
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    array-length v1, p1

    array-length v4, v0

    add-int/2addr v1, v4

    new-array v1, v1, [I

    .line 177
    array-length v4, p1

    invoke-static {p1, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    array-length p1, p1

    array-length v4, v0

    invoke-static {v0, v3, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 186
    :cond_6
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v1, p1, p2

    iput-object v0, v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 187
    aget-object p1, p1, p2

    iput v2, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    :cond_7
    return-void
.end method

.method private isArrowRightVisible(Landroidx/preference/Preference;)Z
    .locals 1

    .line 136
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 138
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


# virtual methods
.method getPositionType(I)I
    .locals 1

    .line 207
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p1, v0, p1

    iget p1, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 194
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 195
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 196
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 8

    .line 80
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 81
    invoke-virtual {p0, p2}, Lmiuix/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0, p2}, Lmiuix/preference/PreferenceGroupAdapter;->getPreferenceDescriptor(Landroidx/preference/Preference;I)V

    .line 83
    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p2, v1, p2

    iget-object p2, p2, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 85
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    invoke-static {v2, v3}, Lmiui/external/graphics/TaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    new-instance v2, Lmiui/external/graphics/TaggingDrawable;

    invoke-direct {v2, v1}, Lmiui/external/graphics/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v1, v2

    .line 91
    :cond_0
    nop

    instance-of v2, v1, Lmiui/external/graphics/TaggingDrawable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 92
    check-cast v1, Lmiui/external/graphics/TaggingDrawable;

    if-eqz p2, :cond_1

    .line 94
    invoke-virtual {v1, p2}, Lmiui/external/graphics/TaggingDrawable;->setTaggingState([I)Z

    .line 96
    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 97
    invoke-virtual {v1, p2}, Lmiui/external/graphics/TaggingDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    instance-of v2, v2, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v2, :cond_4

    .line 99
    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    check-cast v2, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 101
    invoke-virtual {v2}, Lmiuix/preference/RadioSetPreferenceCategory;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    :goto_0
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 100
    invoke-virtual {v1, v2, v5}, Lmiui/external/graphics/TaggingDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 103
    iget-object v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_5

    .line 104
    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckablePaddingStartExtra:I

    add-int/2addr v2, v5

    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 107
    :cond_3
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckablePaddingStartExtra:I

    add-int/2addr v2, v5

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 111
    invoke-virtual {v1, v2}, Lmiui/external/graphics/TaggingDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 113
    :cond_5
    :goto_1
    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v5, v6, v7, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    :cond_6
    instance-of p2, v0, Lmiuix/preference/RadioButtonPreference;

    if-eqz p2, :cond_7

    move-object p2, v0

    check-cast p2, Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p2}, Lmiuix/preference/RadioButtonPreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 116
    new-array p2, v3, [I

    const v2, 0x10100a0

    aput v2, p2, v4

    invoke-virtual {v1, p2}, Lmiui/external/graphics/TaggingDrawable;->setTaggingState([I)Z

    .line 120
    :cond_7
    iget-object p2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v1, Lmiuix/preference/R$id;->arrow_right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 122
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->isArrowRightVisible(Landroidx/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    goto :goto_2

    :cond_8
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_9
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->ableToUseFolmeAnim(Landroidx/preference/Preference;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 125
    new-array p2, v3, [Landroid/view/View;

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    aput-object v0, p2, v4

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    new-array v1, v4, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p2, v0, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-array v0, v4, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p2, p1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lmiuix/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 202
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceChange(Landroidx/preference/Preference;)V

    .line 218
    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    invoke-virtual {p1}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 222
    instance-of v1, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 223
    instance-of v1, v0, Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_0

    .line 224
    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method
