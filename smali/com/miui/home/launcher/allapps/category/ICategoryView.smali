.class public interface abstract Lcom/miui/home/launcher/allapps/category/ICategoryView;
.super Ljava/lang/Object;
.source "ICategoryView.java"


# virtual methods
.method public abstract bindCategoryUpdate()V
.end method

.method public abstract getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getCategoryId()I
.end method

.method public abstract getFastScroller(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;
.end method

.method public abstract getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
.end method

.method public abstract onScrollUpEnd()V
.end method

.method public abstract resetView()V
.end method

.method public abstract shouldContainerScroll(Landroid/view/MotionEvent;)Z
.end method
