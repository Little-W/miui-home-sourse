.class public Lmiui/external/adapter/SpinnerCheckableArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SpinnerCheckableArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;,
        Lmiui/external/adapter/SpinnerCheckableArrayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG_VIEW:I


# instance fields
.field private mCheckProvider:Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;

.field private mContentAdapter:Landroid/widget/ArrayAdapter;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget v0, Lmiuix/compat/R$id;->tag_spinner_dropdown_view:I

    sput v0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V
    .locals 1

    const v0, 0x1020014

    .line 24
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object p3, p0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    .line 27
    iput-object p4, p0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->mCheckProvider:Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V
    .locals 1

    .line 31
    sget v0, Lmiuix/compat/R$layout;->miuix_compat_simple_spinner_layout_integrated:I

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 57
    sget v1, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 58
    :cond_0
    iget-object p2, p0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/compat/R$layout;->miuix_compat_spinner_dropdown_checkable_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v1, Lmiui/external/adapter/SpinnerCheckableArrayAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmiui/external/adapter/SpinnerCheckableArrayAdapter$ViewHolder;-><init>(Lmiui/external/adapter/SpinnerCheckableArrayAdapter$1;)V

    .line 60
    sget v2, Lmiuix/compat/R$id;->spinner_dropdown_container:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v1, Lmiui/external/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    const v2, 0x1020001

    .line 61
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v1, Lmiui/external/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 62
    sget v2, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 65
    :cond_1
    sget v1, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->TAG_VIEW:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 67
    check-cast v1, Lmiui/external/adapter/SpinnerCheckableArrayAdapter$ViewHolder;

    .line 68
    iget-object v2, p0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, v1, Lmiui/external/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 69
    iget-object v2, v1, Lmiui/external/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 70
    iget-object v2, v1, Lmiui/external/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object p3, p0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->mCheckProvider:Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;

    if-eqz p3, :cond_2

    invoke-interface {p3, p1}, Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;->isChecked(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 72
    :cond_2
    iget-object p1, v1, Lmiui/external/adapter/SpinnerCheckableArrayAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    :cond_3
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 41
    iget-object v0, p0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lmiui/external/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method
