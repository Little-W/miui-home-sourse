.class public Lcom/miui/home/settings/preference/PreferenceListView;
.super Lmiuix/recyclerview/widget/RecyclerView;
.source "PreferenceListView.java"


# instance fields
.field mClickDetector:Landroid/view/GestureDetector;

.field private mTemp:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/miui/home/settings/preference/PreferenceListView;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/miui/home/settings/preference/PreferenceListView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/preference/PreferenceListView$1;-><init>(Lcom/miui/home/settings/preference/PreferenceListView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/miui/home/settings/preference/PreferenceListView;->mClickDetector:Landroid/view/GestureDetector;

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/preference/PreferenceListView;->mTemp:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/settings/preference/PreferenceListView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/PreferenceListView;->showDisableToastIfNeed(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private getClickPreference(Landroid/view/MotionEvent;)Landroidx/preference/Preference;
    .locals 6

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/PreferenceListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Lcom/miui/home/settings/preference/PreferenceListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/miui/home/settings/preference/PreferenceListView;->mTemp:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 60
    iget-object v3, p0, Lcom/miui/home/settings/preference/PreferenceListView;->mTemp:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v2

    .line 62
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/PreferenceListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    instance-of v3, v3, Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/PreferenceListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroupAdapter;

    .line 64
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private showDisableToastIfNeed(Landroid/view/MotionEvent;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/miui/home/settings/preference/PreferenceListView;->getClickPreference(Landroid/view/MotionEvent;)Landroidx/preference/Preference;

    move-result-object p0

    .line 48
    instance-of p1, p0, Lcom/miui/home/settings/preference/DisableTips;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    check-cast p0, Lcom/miui/home/settings/preference/DisableTips;

    invoke-interface {p0}, Lcom/miui/home/settings/preference/DisableTips;->showDisableTips()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/miui/home/settings/preference/PreferenceListView;->mClickDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    invoke-super {p0, p1}, Lmiuix/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
