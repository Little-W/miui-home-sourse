.class Lmiuix/preference/PreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/PreferenceFragment;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic val$scrollOffset:I

.field final synthetic val$scrollPosition:I


# direct methods
.method constructor <init>(Lmiuix/preference/PreferenceFragment;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)V
    .locals 0

    .line 199
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    iput-object p2, p0, Lmiuix/preference/PreferenceFragment$1;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput p3, p0, Lmiuix/preference/PreferenceFragment$1;->val$scrollPosition:I

    iput p4, p0, Lmiuix/preference/PreferenceFragment$1;->val$scrollOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 202
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$1;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$1;->val$layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lmiuix/preference/PreferenceFragment$1;->val$scrollPosition:I

    iget v2, p0, Lmiuix/preference/PreferenceFragment$1;->val$scrollOffset:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 207
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v0}, Lmiuix/preference/PreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
