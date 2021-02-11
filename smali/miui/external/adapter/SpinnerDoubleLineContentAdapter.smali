.class public Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerDoubleLineContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG_VIEW:I


# instance fields
.field protected mEntries:[Ljava/lang/CharSequence;

.field protected mIcons:[Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget v0, Lmiuix/compat/R$id;->tag_spinner_dropdown_view_double_line:I

    sput v0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p2, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    .line 34
    iput-object p3, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 35
    invoke-virtual {p0, p4}, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([I)V

    return-void
.end method

.method private getEntry(I)Ljava/lang/CharSequence;
    .locals 2

    .line 141
    iget-object v0, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 155
    iget-object v0, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSummary(I)Ljava/lang/CharSequence;
    .locals 2

    .line 148
    iget-object v0, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 101
    sget v1, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    iget-object p2, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/compat/R$layout;->miuix_compat_spiner_dropdown_view_double_line:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    new-instance p3, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;-><init>(Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$1;)V

    const v1, 0x1020006

    .line 104
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020016

    .line 105
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x1020010

    .line 106
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 107
    sget v1, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 110
    :cond_1
    invoke-direct {p0, p1}, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->getEntry(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 111
    invoke-direct {p0, p1}, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 112
    invoke-direct {p0, p1}, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 114
    sget v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 116
    check-cast v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;

    .line 117
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_2

    .line 118
    iget-object v3, v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p3, v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object p3, v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 124
    iget-object p3, v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p3, v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 127
    :cond_3
    iget-object p3, v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz p1, :cond_4

    .line 130
    iget-object p3, v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object p1, v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 133
    :cond_4
    iget-object p1, v2, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-object p2
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .line 68
    iget-object v0, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryIcons()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 60
    iget-object v0, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 91
    iget-object v0, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSummaries()[Ljava/lang/CharSequence;
    .locals 1

    .line 76
    iget-object v0, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryIcons([I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 40
    check-cast v0, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 42
    :cond_0
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {p0}, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    .line 44
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 45
    aget v4, p1, v3

    if-lez v4, :cond_1

    .line 46
    aget v4, p1, v3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 48
    :cond_1
    aput-object v0, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0, v1}, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method public setEntryIcons([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mIcons:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSummaries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lmiui/external/adapter/SpinnerDoubleLineContentAdapter;->mSummaries:[Ljava/lang/CharSequence;

    return-void
.end method
